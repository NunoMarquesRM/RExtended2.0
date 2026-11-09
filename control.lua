-- Rock and Tree Eraser
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

local function red_reach_apply_settings_all()
    for _, player in pairs(game.players) do
        red_reach_apply_settings_player(player)
    end
end

-- fix for https://mods.factorio.com/mod/space-exploration resetting far reach settings.
local function hook_space_exploration()
    if script.active_mods["space-exploration"] and remote.interfaces["space-exploration"] and remote.interfaces["space-exploration"]["get_on_player_respawned_event"] then
        script.on_event(remote.call("space-exploration", "get_on_player_respawned_event"), red_reach_apply_settings_all)
    end
end

script.on_init(function()
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
script.on_configuration_changed(red_reach_apply_settings_all)

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

-- Calculator (future)
