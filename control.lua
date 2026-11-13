-- Rock and Tree Eraser
-- Identify entities that the eraser is allowed to remove.
local function is_rock_eraser_target(entity)
    if entity.type == "lightning-attractor" then
        return entity.name == "fulgoran-ruin-attractor"
    end

    if entity.type ~= "simple-entity" then
        return false
    end

    if script.active_mods["alien-biomes"] then
        if
            string.find(entity.name, "huge-rock", 1, true)
            or string.find(entity.name, "big-rock", 1, true)
            or string.find(entity.name, "medium-rock", 1, true)
            or string.find(entity.name, "small-rock", 1, true)
            or string.find(entity.name, "tiny-rock", 1, true)
        then
            return true
        end
    end

    return
        entity.name == "huge-rock"
        or entity.name == "big-rock"
        or entity.name == "big-demolisher-corpse"
        or entity.name == "medium-demolisher-corpse"
        or entity.name == "small-demolisher-corpse"
        or entity.name == "big-sand-rock"
        or entity.name == "huge-volcanic-rock"
        or entity.name == "big-volcanic-rock"
        or entity.name == "vulcanus-chimney-truncated"
        or entity.name == "vulcanus-chimney-short"
        or entity.name == "vulcanus-chimney"
        or entity.name == "vulcanus-chimney-cold"
        or entity.name == "vulcanus-chimney-faded"
        or entity.name == "fulgoran-ruin-vault"
        or entity.name == "fulgoran-ruin-colossal"
        or entity.name == "fulgoran-ruin-huge"
        or entity.name == "fulgoran-ruin-big"
        or entity.name == "fulgoran-ruin-medium"
        or entity.name == "fulgoran-ruin-small"
        or entity.name == "fulgoran-ruin-stonehenge"
        or entity.name == "fulgurite-small"
        or entity.name == "fulgurite"
        or entity.name == "big-fulgora-rock"
        or entity.name == "lithium-iceberg-huge"
        or entity.name == "lithium-iceberg-big"
        or entity.name == "big-stomper-shell"
        or entity.name == "medium-stomper-shell"
        or entity.name == "small-stomper-shell"
end

script.on_event(defines.events.on_player_selected_area, function(event)
    if event.item ~= "tree-rock-eraser" then
        return
    end

    for _, entity in ipairs(event.entities) do
        if entity.type == "tree" or is_rock_eraser_target(entity) then
            entity.destroy()
        end
    end
end)

script.on_event(defines.events.on_player_dropped_item, function(event)
    if event.entity ~= nil then
        if event.entity.stack ~= nil then
            if event.entity.stack.name == "tree-rock-eraser" then
                event.entity.stack.clear()
            end
        end
    end
end)

-- Robots Start
local initialize_starting_items
local handle_starting_items_for_new_player

if settings.startup["red-robots-starting-enabled"].value then
    local equipment_order = {
        "personal-roboport-equipment", -- #1 construction
        "battery-equipment",           -- buffer for roboport #1
        "battery-equipment",
        "battery-equipment",
        "solar-panel-equipment-r2",    -- early power
        "solar-panel-equipment-r2",
        "solar-panel-equipment-r2",
        "personal-roboport-equipment"  -- #2 if space remains
    }
    -- Build the full map of starting items.
    local function bonus_items()
        local items = {
            ["modular-armor"] = 1,
            ["personal-roboport-equipment"] = 2,
            ["battery-equipment"] = 3,
            ["solar-panel-equipment-r2"] = 3,
            ["construction-robot"] = 20
        }
        return items
    end
    -----------------------------------------------------------
    -- Freeplay integration
    ---- True when the freeplay scenario exposes created-items get/set remotes.
    local function has_freeplay_created_items()
        local freeplay = remote.interfaces["freeplay"]
        return freeplay and freeplay.get_created_items and freeplay.set_created_items
    end
    
    ---- Merge our bonus items into freeplay's created-items list (keep the larger count).
    local function register_freeplay_items()
        local items = remote.call("freeplay", "get_created_items")
        for name, count in pairs(bonus_items()) do
            if (not items[name]) or items[name] < count then
                items[name] = count
            end
        end
        remote.call("freeplay", "set_created_items", items)
    end
    -----------------------------------------------------------
    -- Inventory helpers
    ---- Insert every bonus item into the character's inventories.
    local function insert_all_bonus_items(character)
        local not_added = {}
        for name, count in pairs(bonus_items()) do
            if prototypes.item[name] then
                local inserted = character.insert { name = name, count = count }
                if inserted < count then
                    not_added[name] = count - inserted
                end
            else
                not_added[name] = count
            end
        end
        return not_added
    end
    ---- Prefer the live character; fall back to the cutscene body during freeplay intro.
    local function character_for(player)
        return player.character or player.cutscene_character
    end
    -----------------------------------------------------------
    -- Auto-equip
    ---- Wear modular armour when the armour slot is empty.
    ---- Consumes one modular-armor from the main inventory when freeplay already granted it.
    local function wear_modular_armor(character, main_inventory)
        local armor_inv = character.get_inventory(defines.inventory.character_armor)
        if not armor_inv or not armor_inv.is_empty() then
            return
        end
        if not prototypes.item["modular-armor"] then
            return
        end
    
        if main_inventory and main_inventory.get_item_count("modular-armor") > 0 then
            main_inventory.remove { name = "modular-armor", count = 1 }
        end
        armor_inv.insert { name = "modular-armor", count = 1 }
    end
    
    ---- Try to place one equipment piece into the grid.
    ---- Only removes a matching inventory item after a successful put, so failed
    ---- placements (full / fragmented grid) leave the spare in the backpack.
    ---- @return boolean true if the piece was installed
    local function try_put_equipment(grid, main_inventory, name)
        if not prototypes.equipment[name] then
            return false
        end

        -- grid.put creates equipment directly, so require the matching item first.
        if not main_inventory or main_inventory.get_item_count(name) < 1 then
            return false
        end
    
        local placed = grid.put { name = name }
        if not placed then
            return false
        end
    
        main_inventory.remove { name = name, count = 1 }
        return true
    end
    
    ---- Walk equipment_order and fill the grid. Skips entries that do not fit and keeps
    ---- going so smaller 1x1/1x2 pieces can still fill gaps after a failed 2x2 put.
    local function fill_equipment_grid(grid, main_inventory)
        for _, name in ipairs(equipment_order) do
            try_put_equipment(grid, main_inventory, name)
        end
    end
    
    ---- Wear modular armour and install as much of the balanced equipment order as fits.
    local function equip_starting_loadout(character)
        if not character or not character.valid then
            return
        end
    
        local main = character.get_main_inventory()
        wear_modular_armor(character, main)
    
        local grid = character.grid
        if not grid then
            return
        end
    
        fill_equipment_grid(grid, main)
    end
    -----------------------------------------------------------
    -- Player grant paths
    -- Grant a player's starting items, report missing items, and equip the available loadout.
    local function grant_and_equip(player)
        local character = character_for(player)
        if not character then
            return
        end
        local not_added = insert_all_bonus_items(character)
        if next(not_added) then
            local missing = {}
            for name, count in pairs(not_added) do
                missing[#missing + 1] = count .. " " .. name
            end
            table.sort(missing)
            player.print("Some starting items could not be added to your inventory: " .. table.concat(missing, ", "))
        end
        equip_starting_loadout(character)
    end
    
    --- Defer equip by one tick so freeplay has finished inserting created items.
    local function queue_equip(player_index)
        storage.pending_equip = storage.pending_equip or {}
        storage.pending_equip[player_index] = true
        
        if storage.equip_tick_registered then
            return
        end
        storage.equip_tick_registered = true
        
        script.on_nth_tick(1, function()
            local pending = storage.pending_equip or {}
            storage.pending_equip = {}
            storage.equip_tick_registered = false
            script.on_nth_tick(1, nil)
            
            for index, _ in pairs(pending) do
                local player = game.get_player(index)
                if player then
                    local character = character_for(player)
                    if character then
                        equip_starting_loadout(character)
                    end
                end
            end
        end)
    end
    -----------------------------------------------------------
    -- Event handlers
    -- Register starter items with Freeplay and grant them to players already in the save.
    initialize_starting_items = function()
        -- New freeplay games: register items so freeplay inserts them on player create.
        if has_freeplay_created_items() then
            register_freeplay_items()
        end
        
        -- Mid-game mod add: freeplay will not re-fire on_player_created for existing players.
        for _, player in pairs(game.players) do
            grant_and_equip(player)
        end
    end
    
    -- Handle a newly created player, deferring equipment placement when Freeplay grants the items.
    handle_starting_items_for_new_player = function(player)
        if has_freeplay_created_items() then
            -- Items come from freeplay; equip on the next tick after they land in inventory.
            queue_equip(player.index)
        else
            grant_and_equip(player)
        end
    end
end

-- Far Reach
-- Apply configured reach bonuses to one player's character.
local function red_reach_apply_settings_player(player)
    local reach_settings = settings.global
    if player and player.character then
        player.character_build_distance_bonus = reach_settings["red-build-distance-bonus"].value
        player.character_reach_distance_bonus = reach_settings["red-reach-distance-bonus"].value
        player.character_resource_reach_distance_bonus = reach_settings["red-resource-reach-distance-bonus"].value
        player.character_item_drop_distance_bonus = reach_settings["red-item-drop-distance-bonus"].value
        player.character_item_pickup_distance_bonus = reach_settings["red-item-pickup-distance-bonus"].value
    end
end

-- Apply configured reach bonuses to every current player.
local function red_reach_apply_settings_all()
    for _, player in pairs(game.players) do
        red_reach_apply_settings_player(player)
    end
end

-- fix for https://mods.factorio.com/mod/space-exploration resetting far reach settings.
-- Register Space Exploration's respawn event so bonuses are reapplied after character swaps.
local function hook_space_exploration()
    if script.active_mods["space-exploration"] and remote.interfaces["space-exploration"] and remote.interfaces["space-exploration"]["get_on_player_respawned_event"] then
        script.on_event(remote.call("space-exploration", "get_on_player_respawned_event"), red_reach_apply_settings_all)
    end
end

script.on_init(function()
    storage.rextended_calculator = {}
    if initialize_starting_items then
        initialize_starting_items()
    end
    -- Far Reach integration: apply map settings after initializing starter items.
    red_reach_apply_settings_all()
    hook_space_exploration()
end)

script.on_event(defines.events.on_player_created, function(event)
    local player = game.get_player(event.player_index)
    if player and handle_starting_items_for_new_player then
        handle_starting_items_for_new_player(player)
    end
    -- Far Reach integration: apply bonuses without replacing the starter-items handler.
    red_reach_apply_settings_player(player)
end)

script.on_load(hook_space_exploration)
local calculator_close_windows
script.on_configuration_changed(function()
    red_reach_apply_settings_all()
    if calculator_close_windows then
        calculator_close_windows()
    end
end)

local reach_setting_names = {
    ["red-build-distance-bonus"] = true,
    ["red-reach-distance-bonus"] = true,
    ["red-resource-reach-distance-bonus"] = true,
    ["red-item-drop-distance-bonus"] = true,
    ["red-item-pickup-distance-bonus"] = true
}

script.on_event(defines.events.on_runtime_mod_setting_changed, function(event)
    if reach_setting_names[event.setting] then
        red_reach_apply_settings_all()
    end
end)

script.on_event({
        defines.events.on_player_joined_game,
        defines.events.on_player_changed_force,
        defines.events.on_player_respawned,
        defines.events.on_cutscene_cancelled,
        defines.events.on_cutscene_waypoint_reached,
        defines.events.on_technology_effects_reset
    }, function(event)
        if event.player_index then
            red_reach_apply_settings_player(game.get_player(event.player_index))
        else
            red_reach_apply_settings_all()
        end
end)

-- fix for https://mods.factorio.com/mod/jetpack resetting far reach settings.
if script.active_mods["jetpack"] then
    remote.add_interface("rextended-far-reach", {
        on_character_swapped = red_reach_apply_settings_all
    })
end

-- Calculator
-- Calculator helpers are kept local to this feature to avoid collisions with other RExtended code.
local WINDOW_W = 256
local WINDOW_H = 400
local DISPLAY_H = 40
local GAP = 1
local PANEL_PAD = 8
local FACE_INSET = 2
local PANEL_GAP = 8
local FRAME_PAD = 12

local KEY_W = math.floor((WINDOW_W - 2 * FRAME_PAD - 2 * PANEL_PAD - 3 * GAP) / 4)
local GRID_W = 4 * KEY_W + 3 * GAP
local PANEL_W = GRID_W + 2 * PANEL_PAD
local HISTORY_PANEL_W = PANEL_W + 32

local MAX_EXPR = 60
local ERROR_FLASH_TICKS = 900
local MAX_HISTORY = 25

local SHORTCUT_NAME = "rextended-calculator"
local KEY_BUTTON_STYLE = "rextended-calculator-key-button"
local OPERATOR_BUTTON_STYLE = "rextended-calculator-operator-button"
local EQUALS_BUTTON_STYLE = "rextended-calculator-equals-button"
local CLEAR_BUTTON_STYLE = "rextended-calculator-clear-button"

local OP_SYMBOL = { add = "+", sub = "-", mul = "×", div = "/" }
local ERRORS = {
    syntax = { "rextended-calculator.error-syntax" },
    div0 = { "rextended-calculator.error-div0" },
    overflow = { "rextended-calculator.error-overflow" },
}

-- Remove trailing whitespace from a string.
local function rtrim(str)
    return (string.gsub(str, "%s+$", ""))
end

-- Remove whitespace from both ends of a string.
local function trim(str)
    return (string.gsub(string.gsub(str, "^%s+", ""), "%s+$", ""))
end

-- Remove the final UTF-8 character without leaving a partial multibyte sequence.
local function pop_char(str)
    local n = #str
    if n == 0 then return str end
    while n > 1 do
        local b = string.byte(str, n)
        if b >= 128 and b < 192 then n = n - 1 else break end
    end
    return string.sub(str, 1, n - 1)
end

-- Check whether an expression currently ends with an operator.
local function ends_with_operator(str)
    local t = rtrim(str)
    local last = string.sub(t, -1)
    if last == "+" or last == "-" or last == "*" or last == "/" then return true end
    local two = string.sub(t, -2)
    return two == "×" or two == "÷"
end

-- Safely set a GUI style property when that property is supported.
local function try_style(element, key, value)
    pcall(function() element.style[key] = value end)
end

-- Create a GUI element with the requested style, falling back to the default style if needed.
local function add_styled(parent, def, style_name)
    def.style = style_name
    local ok, element = pcall(function() return parent.add(def) end)
    if ok and element then return element end
    def.style = nil
    return parent.add(def)
end

-- Count occurrences of a character in a string.
local function count_char(str, ch)
    local _, n = string.gsub(str, "%" .. ch, "")
    return n
end


-- Format a numeric result without exponent notation so it can be reused in an expression.
local function fmt(n)
    if n == 0 then return "0" end
    local str = string.format("%.10g", n)
    if string.find(str, "e", 1, true) then
        if math.abs(n) >= 1 then
            str = string.format("%.0f", n)
        else
            str = string.format("%.20f", n)
            str = string.gsub(str, "0+$", "")
            str = string.gsub(str, "%.$", "")
            if str == "" or str == "-0" then str = "0" end
        end
    end
    return str
end

-- Parse and evaluate an expression, returning its value or an error code.
local function evaluate(text)
    local s = text
    s = string.gsub(s, "×", "*")
    s = string.gsub(s, "÷", "/")
    s = string.gsub(s, "−", "-")
    s = string.gsub(s, ",", ".")
    s = string.gsub(s, "%s+", "")
    if s == "" then return nil, "syntax" end

    local pos = 1
    -- Return the next unconsumed character in the normalized expression.
    local function peek() return string.sub(s, pos, pos) end

    local parse_expr

    -- Parse a number, parenthesized expression, or unary sign.
    local function parse_factor()
        local c = peek()
        if c == "-" then
            pos = pos + 1
            local v, err = parse_factor()
            if not v then return nil, err end
            return -v
        elseif c == "+" then
            pos = pos + 1
            return parse_factor()
        elseif c == "(" then
            pos = pos + 1
            local v, err = parse_expr()
            if not v then return nil, err end
            if peek() ~= ")" then return nil, "syntax" end
            pos = pos + 1
            return v
        else
            local num = string.match(s, "^%d*%.?%d*", pos)
            if num == nil or num == "" or tonumber(num) == nil then return nil, "syntax" end
            pos = pos + #num
            return tonumber(num)
        end
    end

    -- Parse multiplication and division, which bind more tightly than addition.
    local function parse_term()
        local v, err = parse_factor()
        if not v then return nil, err end
        while true do
            local c = peek()
            if c == "*" or c == "/" then
                pos = pos + 1
                local r, err2 = parse_factor()
                if not r then return nil, err2 end
                if c == "*" then
                    v = v * r
                else
                    if r == 0 then return nil, "div0" end
                    v = v / r
                end
            else
                break
            end
        end
        return v
    end

    -- Parse addition and subtraction across the expression.
    parse_expr = function()
        local v, err = parse_term()
        if not v then return nil, err end
        while true do
            local c = peek()
            if c == "+" or c == "-" then
                pos = pos + 1
                local r, err2 = parse_term()
                if not r then return nil, err2 end
                if c == "+" then v = v + r else v = v - r end
            else
                break
            end
        end
        return v
    end

    local value, err = parse_expr()
    if not value then return nil, err end
    if pos <= #s then return nil, "syntax" end
    if value ~= value or math.abs(value) >= 1e15 then return nil, "overflow" end
    return value
end

-- Get or create the persistent calculator state for a player.
local function get_state(player_index)
    storage.rextended_calculator = storage.rextended_calculator or {}
    local s = storage.rextended_calculator[player_index]
    if not s then
        s = { expr = "", done = false, result = nil, status = "", history = {} }
        storage.rextended_calculator[player_index] = s
    end
    return s
end

-- Choose the text currently shown in the calculator display.
local function display_text(s)
    if s.done then
        return s.result
    elseif s.expr == "" then
        return "0"
    end
    return s.expr
end

-- Reset the expression state before starting a new calculation.
local function start_new(s)
    s.expr = ""
    s.done = false
    s.result = nil
end

-- Append a digit while handling leading zeroes and implicit multiplication.
local function press_digit(s, d)
    if s.done then start_new(s) end
    if #s.expr >= MAX_EXPR then return end
    local pre, num = string.match(s.expr, "^(.-)([%d%.]*)$")
    if num == "0" then
        s.expr = pre .. d
    elseif string.sub(s.expr, -1) == ")" then
        s.expr = s.expr .. " × " .. d
    else
        s.expr = s.expr .. d
    end
end

-- Append a decimal point if the current number does not already have one.
local function press_dot(s)
    if s.done then
        s.expr = "0."
        s.done = false
        s.result = nil
        return
    end
    if #s.expr >= MAX_EXPR then return end
    local _, num = string.match(s.expr, "^(.-)([%d%.]*)$")
    if string.find(num, ".", 1, true) then return end
    if num == "" then
        s.expr = s.expr .. "0."
    else
        s.expr = s.expr .. "."
    end
end

-- Append or replace an arithmetic operator in the current expression.
local function press_op(s, op)
    local sym = OP_SYMBOL[op]
    if s.done then
        s.expr = s.result .. " " .. sym .. " "
        s.done = false
        s.result = nil
        return
    end
    local e = s.expr
    if trim(e) == "" then
        if op == "sub" then
            s.expr = "-"
            return
        end
        e = "0"
    end
    if trim(e) == "-" then return end
    while ends_with_operator(e) do
        e = rtrim(e)
        e = pop_char(e)
        e = rtrim(e)
    end
    if string.sub(e, -1) == "(" then
        if op == "sub" then s.expr = e .. "-" else s.expr = e end
        return
    end
    if #e >= MAX_EXPR then return end
    s.expr = e .. " " .. sym .. " "
end

-- Delete the last expression character, treating spaced operators as one unit.
local function press_backspace(s)
    if s.done then
        s.expr = s.result
        s.done = false
        s.result = nil
    end
    local e = s.expr
    if string.sub(e, -1) == " " then
        e = string.sub(e, 1, -2)
        e = pop_char(e)
        if string.sub(e, -1) == " " then e = string.sub(e, 1, -2) end
    else
        e = pop_char(e)
    end
    s.expr = e
end

-- Open a parenthesis, inserting multiplication when needed.
local function press_lparen(s)
    if s.done then start_new(s) end
    if #s.expr >= MAX_EXPR then return end
    local last = string.sub(s.expr, -1)
    if string.find(last, "[%d%.%)]") then
        s.expr = s.expr .. " × ("
    else
        s.expr = s.expr .. "("
    end
end

-- Close a parenthesis when the expression can accept one.
local function press_rparen(s)
    if s.done then return end
    local e = s.expr
    if count_char(e, "(") <= count_char(e, ")") then return end
    if string.sub(rtrim(e), -1) == "(" or ends_with_operator(e) then return end
    if #e >= MAX_EXPR then return end
    s.expr = e .. ")"
end

-- Determine whether an expression is only a number and should be omitted from history.
local function is_trivial(expr)
    local bare = string.gsub(expr, "[%s%(%)]", "")
    local rest = string.sub(bare, 2)
    for _, op in ipairs({ "+", "-", "*", "/", "×", "÷" }) do
        if string.find(rest, op, 1, true) then return false end
    end
    return true
end

-- Evaluate the expression, update the result, and record nontrivial calculations.
local function press_equals(s)
    if s.done then return false end
    local expr = trim(s.expr)
    if expr == "" then return false end
    local open_count = count_char(expr, "(") - count_char(expr, ")")
    if open_count > 0 then expr = expr .. string.rep(")", open_count) end
    local value, err = evaluate(expr)
    if not value then
        s.status = ERRORS[err] or ERRORS.syntax
        return false
    end
    local pretty = string.gsub(expr, "%*", "×")
    s.expr = pretty
    s.result = fmt(value)
    s.done = true
    s.status = ""
    if is_trivial(pretty) then return false end
    table.insert(s.history, { expr = pretty, result = s.result })
    while #s.history > MAX_HISTORY do table.remove(s.history, 1) end
    return true
end

-- Clear the expression and any displayed error.
local function press_clear(s)
    start_new(s)
    s.status = ""
end

-- Find the calculator window belonging to a player, if it is open.
local function get_frame(player)
    return player.gui.screen["rextended-calculator-frame"]
end

-- Match the shortcut's toggled state to whether the calculator window is open.
local function sync_shortcut(player)
    pcall(function()
        player.set_shortcut_toggled(SHORTCUT_NAME, get_frame(player) ~= nil)
    end)
end

-- Apply the display's normal or error style and restore its dimensions.
local function apply_display_style(display, invalid)
    local switched = false
    if invalid then
        switched = pcall(function() display.style = "invalid_value_textfield" end)
    end
    if not switched then display.style = "textbox" end

    display.style.width = GRID_W - 2 * FACE_INSET
    display.style.top_margin = FACE_INSET
    display.style.bottom_margin = PANEL_PAD
    display.style.height = DISPLAY_H
    try_style(display, "font", "rextended-calculator-display-font")
    try_style(display, "horizontal_align", "right")
end

-- Refresh the display's error style, tooltip, and error timer for a player.
local function refresh_error_look(player)
    local frame = get_frame(player)
    if not frame then return end
    local s = get_state(player.index)
    local display = frame["rexcalc_content"]["rexcalc_left"]["rexcalc_display"]
    local invalid = s.status ~= ""
    if invalid ~= (s.display_red or false) then
        apply_display_style(display, invalid)
        s.display_red = invalid
    end
    display.tooltip = s.status
    if invalid then
        s.error_since = game.tick or 0
    else
        s.error_since = nil
    end
end

-- Update the visible expression and its error appearance.
local function update_display(player)
    local frame = get_frame(player)
    if not frame then return end
    local s = get_state(player.index)
    refresh_error_look(player)
    frame["rexcalc_content"]["rexcalc_left"]["rexcalc_display"].text = display_text(s)
end

-- Rebuild the history panel from the player's saved calculations.
local function rebuild_history(player)
    local frame = get_frame(player)
    if not frame then return end
    local list = frame["rexcalc_content"]["rexcalc_right"]["rexcalc_scroll"]["rexcalc_list"]
    list.clear()
    local h = get_state(player.index).history
    if #h == 0 then
        local empty = list.add{ type = "label", caption = { "rextended-calculator.history-empty" } }
        try_style(empty, "font_color", { 0.6, 0.6, 0.6 })
        return
    end
    for i = #h, 1, -1 do
        local entry = h[i]
        local item = list.add{
            type = "frame", name = "rexcalc_h_" .. i,
            direction = "horizontal",
            style = "rextended-calculator-history-entry-frame",
        }
        item.style.width = HISTORY_PANEL_W - 2 * PANEL_PAD - 12 - 8
        item.style.horizontally_stretchable = true
        local label = item.add{
            type = "label",
            style = "rextended-calculator-history-entry-label",
            caption = entry.expr .. " = [font=default-bold][color=0.55,1,0.65]" .. entry.result .. "[/color][/font]",
        }
        label.style.horizontally_stretchable = true
        try_style(label, "horizontal_align", "left")
    end
end

-- Close a player's calculator window and synchronize its shortcut.
local function close_window(player)
    local frame = get_frame(player)
    if frame then frame.destroy() end
    sync_shortcut(player)
end

-- Close calculator windows for all current players after configuration changes.
calculator_close_windows = function()
    for _, player in pairs(game.players) do
        close_window(player)
    end
end

-- Add a keypad button with the requested style and optional sprite states.
local function add_button(parent, name, caption, sprite, style_name, hovered_sprite, clicked_sprite)
    local def = { type = "button", name = name, caption = caption }
    if sprite then
        def = { type = "sprite-button", name = name, sprite = sprite }
        if hovered_sprite then def.hovered_sprite = hovered_sprite end
        if clicked_sprite then def.clicked_sprite = clicked_sprite end
    end
    local b = add_styled(parent, def, style_name or KEY_BUTTON_STYLE)
    b.style.width = KEY_W
    b.style.vertically_stretchable = true
    return b
end

-- Create a horizontal row for keypad buttons.
local function add_row(parent)
    local row = parent.add{ type = "flow", direction = "horizontal" }
    row.style.horizontal_spacing = GAP
    row.style.vertically_stretchable = true
    return row
end

-- Build and display the calculator window and its history panel.
local function open_window(player)
    local frame = player.gui.screen.add{ type = "frame", name = "rextended-calculator-frame", direction = "vertical" }
    frame.style.height = WINDOW_H

    local bar = add_styled(frame, { type = "flow", direction = "horizontal" }, "frame_header_flow")
    bar.drag_target = frame
    bar.add{ type = "label", caption = { "rextended-calculator.title" }, style = "frame_title", ignored_by_interaction = true }
    local filler = bar.add{ type = "empty-widget", style = "draggable_space_header", ignored_by_interaction = true }
    filler.style.horizontally_stretchable = true
    filler.style.height = 24

    local history_clear = add_styled(bar, {
        type = "sprite-button", name = "rexcalc_history_clear",
        sprite = "rextended-calculator-history-clear",
        tooltip = { "rextended-calculator.history-clear-tooltip" },
    }, "rextended-calculator-title-button")
    history_clear.style.width = 26
    history_clear.style.height = 24

    add_styled(bar, {
        type = "sprite-button", name = "rexcalc_hist_toggle",
        sprite = "rextended-calculator-history", tooltip = { "rextended-calculator.history-show" },
        auto_toggle = true,
    }, "rextended-calculator-title-button")

    bar.add{
        type = "sprite-button", name = "rexcalc_close", style = "frame_action_button",
        sprite = "utility/close", tooltip = { "rextended-calculator.close" },
    }

    local content = frame.add{ type = "flow", name = "rexcalc_content", direction = "horizontal" }
    content.style.horizontal_spacing = PANEL_GAP
    content.style.vertically_stretchable = true

    local left = add_styled(content, { type = "frame", name = "rexcalc_left", direction = "vertical" }, "inside_deep_frame")
    left.style.padding = PANEL_PAD
    left.style.vertically_stretchable = true
    try_style(left, "vertical_spacing", 0)
    try_style(left, "horizontal_align", "center")

    local display = left.add{ type = "textfield", name = "rexcalc_display", text = "0" }
    apply_display_style(display, false)

    local grid = left.add{ type = "flow", direction = "vertical" }
    grid.style.vertical_spacing = GAP
    grid.style.vertically_stretchable = true

    local r1 = add_row(grid)
    add_button(r1, "rexcalc_clear", "C", nil, CLEAR_BUTTON_STYLE)
    add_button(r1, "rexcalc_lp", "(", nil, OPERATOR_BUTTON_STYLE)
    add_button(r1, "rexcalc_rp", ")", nil, OPERATOR_BUTTON_STYLE)
    add_button(r1, "rexcalc_o_div", "/", nil, OPERATOR_BUTTON_STYLE)

    local r2 = add_row(grid)
    add_button(r2, "rexcalc_d_7", "7")
    add_button(r2, "rexcalc_d_8", "8")
    add_button(r2, "rexcalc_d_9", "9")
    add_button(r2, "rexcalc_o_mul", "×", nil, OPERATOR_BUTTON_STYLE)

    local r3 = add_row(grid)
    add_button(r3, "rexcalc_d_4", "4")
    add_button(r3, "rexcalc_d_5", "5")
    add_button(r3, "rexcalc_d_6", "6")
    add_button(r3, "rexcalc_o_sub", "-", nil, OPERATOR_BUTTON_STYLE)

    local r4 = add_row(grid)
    add_button(r4, "rexcalc_d_1", "1")
    add_button(r4, "rexcalc_d_2", "2")
    add_button(r4, "rexcalc_d_3", "3")
    add_button(r4, "rexcalc_o_add", "+", nil, OPERATOR_BUTTON_STYLE)

    local r5 = add_row(grid)
    add_button(
        r5,
        "rexcalc_back",
        nil,
        "rextended-calculator-backspace",
        KEY_BUTTON_STYLE,
        "rextended-calculator-backspace-hovered"
        --"rextended-calculator-backspace-clicked"
    )
    add_button(r5, "rexcalc_d_0", "0")
    add_button(r5, "rexcalc_dot", ".")
    add_button(r5, "rexcalc_eq", "=", nil, EQUALS_BUTTON_STYLE)

    local right = add_styled(content, { type = "frame", name = "rexcalc_right", direction = "vertical" }, "inside_shallow_frame")
    right.style.padding = PANEL_PAD
    right.style.width = HISTORY_PANEL_W
    right.style.vertically_stretchable = true
    try_style(right, "vertical_spacing", 4)
    right.visible = false

    local scroll = right.add{
        type = "scroll-pane",
        name = "rexcalc_scroll",
        style = "rextended-calculator-history-scroll-pane",
        horizontal_scroll_policy = "never"
    }
    scroll.style.horizontally_stretchable = true
    scroll.style.vertically_stretchable = true
    scroll.style.minimal_height = 60
    local list_flow = scroll.add{ type = "flow", name = "rexcalc_list", direction = "vertical" }
    list_flow.style.horizontally_stretchable = true

    local placed = pcall(function()
        local res = player.display_resolution
        local scale = player.display_scale
        frame.location = {
            math.floor((res.width - WINDOW_W * scale) / 2),
            math.floor((res.height - WINDOW_H * scale) / 2),
        }
    end)
    if not placed then frame.auto_center = true end

    local s = get_state(player.index)
    s.status = ""
    s.display_red = false
    s.error_since = nil
    update_display(player)
    rebuild_history(player)
    sync_shortcut(player)
end

-- Open or close the calculator window for a player.
local function toggle_window(player)
    if get_frame(player) then
        close_window(player)
    else
        open_window(player)
    end
end


script.on_event(defines.events.on_player_removed, function(e)
    if storage.rextended_calculator then storage.rextended_calculator[e.player_index] = nil end
end)

script.on_event(defines.events.on_lua_shortcut, function(e)
    if e.prototype_name ~= SHORTCUT_NAME then return end
    local player = game.get_player(e.player_index)
    if not player then return end
    toggle_window(player)
end)

script.on_nth_tick(15, function(e)
    if not storage.rextended_calculator then return end
    for index, s in pairs(storage.rextended_calculator) do
        if s.error_since and e.tick - s.error_since >= ERROR_FLASH_TICKS then
            s.status = ""
            s.error_since = nil
            local player = game.get_player(index)
            if player then refresh_error_look(player) end
        end
    end
end)

script.on_event(defines.events.on_gui_text_changed, function(e)
    local element = e.element
    if not (element and element.valid and element.name == "rexcalc_display") then return end
    if element.get_mod() ~= script.mod_name then return end
    local player = game.get_player(e.player_index)
    if not player then return end
    local s = get_state(player.index)
    s.status = ""
    local text = e.text
    while #text > MAX_EXPR do
        text = pop_char(text)
    end
    if text ~= e.text then
        element.text = text
    end

    if s.done then
        s.done = false
        s.result = nil
    end

    local eq = string.find(text, "=", 1, true)
    if eq then
        s.expr = trim(string.sub(text, 1, eq - 1))
        local added = press_equals(s)
        update_display(player)
        if added then rebuild_history(player) end
    else
        s.expr = text
        refresh_error_look(player)
    end
end)

script.on_event(defines.events.on_gui_confirmed, function(e)
    local element = e.element
    if not (element and element.valid and element.name == "rexcalc_display") then return end
    if element.get_mod() ~= script.mod_name then return end
    local player = game.get_player(e.player_index)
    if not player then return end
    local s = get_state(player.index)
    local added = press_equals(s)
    update_display(player)
    if added then rebuild_history(player) end
end)

script.on_event(defines.events.on_gui_click, function(e)
    local element = e.element
    if not (element and element.valid) then return end
    if element.get_mod() ~= script.mod_name then return end
    local name = element.name
    local player = game.get_player(e.player_index)
    if not player then return end

    if name == "rexcalc_close" then
        close_window(player)
        return
    elseif name == "rexcalc_hist_toggle" then
        local frame = get_frame(player)
        if frame then
            local right = frame["rexcalc_content"]["rexcalc_right"]
            local show = not right.visible
            right.visible = show
            pcall(function()
                local shift = math.floor((HISTORY_PANEL_W + PANEL_GAP) * player.display_scale / 2)
                local location = frame.location
                frame.location = {location.x + (show and -shift or shift), location.y}
            end)
            pcall(function() element.toggled = show end)
            element.tooltip = show and { "rextended-calculator.history-hide" } or { "rextended-calculator.history-show" }
        end
        return
    end

    if name == "rexcalc_history_clear" then
        get_state(player.index).history = {}
        rebuild_history(player)
        return
    end

    if string.sub(name, 1, 8) ~= "rexcalc_" then return end
    local s = get_state(player.index)
    s.status = ""
    local history_changed = false

    local digit = string.match(name, "^rexcalc_d_(%d)$")
    local op = string.match(name, "^rexcalc_o_(%a+)$")
    if digit then
        press_digit(s, digit)
    elseif op then
        press_op(s, op)
    elseif name == "rexcalc_dot" then
        press_dot(s)
    elseif name == "rexcalc_lp" then
        press_lparen(s)
    elseif name == "rexcalc_rp" then
        press_rparen(s)
    elseif name == "rexcalc_back" then
        press_backspace(s)
    elseif name == "rexcalc_eq" then
        history_changed = press_equals(s)
    elseif name == "rexcalc_clear" then
        press_clear(s)
    else
        return
    end
    update_display(player)
    if history_changed then rebuild_history(player) end
end)
