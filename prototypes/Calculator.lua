-- Calculator GUI prototypes
data:extend({
    {
        type = "sprite",
        name = "rextended-calculator-history",
        filename = "__RExtended__/graphics/icons/Calculator/History-R1.png",
        size = 176,
        scale = 0.3
    },
    {
        type = "sprite",
        name = "rextended-calculator-history-clear",
        filename = "__RExtended__/graphics/icons/Calculator/Clear-History-R1.png",
        size = 196,
        scale = 0.3
    },
    {
        type = "sprite",
        name = "rextended-calculator-backspace",
        filename = "__RExtended__/graphics/icons/Calculator/Backspace-Glyph-R1.png",
        size = 64,
        flags = {"gui-icon"}
    },
    {
        type = "sprite",
        name = "rextended-calculator-backspace-hovered",
        filename = "__RExtended__/graphics/icons/Calculator/Backspace-Glyph-R1.png",
        size = 64,
        flags = {"gui-icon"},
        tint = {r = 1, g = 0.83, b = 0.48, a = 1}
    },
    --{
    --    type = "sprite",
    --    name = "rextended-calculator-backspace-clicked",
    --    filename = "__RExtended__/graphics/icons/Calculator/Backspace-Glyph-R1.png",
    --    size = 64,
    --    flags = {"gui-icon"},
    --    tint = {r = 1, g = 0.92, b = 0.7, a = 1}
    --},
    {
        type = "font",
        name = "rextended-calculator-key-font",
        from = "default-bold",
        size = 28
    },
    {
        type = "font",
        name = "rextended-calculator-display-font",
        from = "default-bold",
        size = 24
    },
    {
        type = "shortcut",
        name = "rextended-calculator",
        localised_name = {"shortcut-name.rextended-calculator"},
        order = "z[rextended-calculator]",
        action = "lua",
        toggleable = true,
        style = "default",
        icon = "__RExtended__/graphics/icons/Calculator/Shortcut-R1.png",
        icon_size = 256,
        small_icon = "__RExtended__/graphics/icons/Calculator/Shortcut-R1.png",
        small_icon_size = 256
    }
})

local styles = data.raw["gui-style"]["default"]

-- Shared industrial keycap background. The labels remain GUI text so they stay
-- crisp and can keep their existing white, amber, green, and red colors.
local calculator_keycap = {
    base = {
        filename = "__RExtended__/graphics/icons/Calculator/Keycap-R1.png",
        size = 256,
        scale = 0.196
    }
}

styles["rextended-calculator-key-button"] = {
    type = "button_style",
    parent = "slot_button",
    padding = 0,
    minimal_width = 16,
    minimal_height = 16,
    maximal_width = 1000,
    maximal_height = 1000,
    default_graphical_set = calculator_keycap,
    hovered_graphical_set = calculator_keycap,
    clicked_graphical_set = calculator_keycap,
    disabled_graphical_set = calculator_keycap,
    selected_graphical_set = calculator_keycap,
    selected_hovered_graphical_set = calculator_keycap,
    selected_clicked_graphical_set = calculator_keycap,
    clicked_vertical_offset = 1,
    font = "rextended-calculator-key-font",
    default_font_color = {0.92, 0.92, 0.92},
    hovered_font_color = {1, 1, 1},
    clicked_font_color = {1, 1, 1}
}

styles["rextended-calculator-operator-button"] = {
    type = "button_style",
    parent = "rextended-calculator-key-button",
    default_font_color = {1, 0.68, 0.25},
    hovered_font_color = {1, 0.83, 0.48},
    clicked_font_color = {1, 0.92, 0.7}
}

styles["rextended-calculator-equals-button"] = {
    type = "button_style",
    parent = "rextended-calculator-key-button",
    default_font_color = {0.45, 0.9, 0.65},
    hovered_font_color = {0.65, 1, 0.8},
    clicked_font_color = {0.85, 1, 0.9}
}

styles["rextended-calculator-clear-button"] = {
    type = "button_style",
    parent = "rextended-calculator-key-button",
    default_font_color = {1, 0.48, 0.4},
    hovered_font_color = {1, 0.68, 0.58},
    clicked_font_color = {1, 0.8, 0.72}
}

-- Wide history cards keep their metal corners while the center stretches to fit each entry.
local calculator_history_card = {
    base = {
        type = "composition",
        filename = "__RExtended__/graphics/icons/Calculator/History-Cell-R1.png",
        position = {0, 0},
        corner_size = {119, 119},
        top_width = 482,
        bottom_width = 482,
        left_height = 2,
        right_height = 2,
        center_width = 482,
        center_height = 2,
        scale = 0.1,
        stretch_monolith_image_to_size = true
    }
}

styles["rextended-calculator-history-entry-frame"] = {
    type = "frame_style",
    parent = "inside_shallow_frame",
    graphical_set = calculator_history_card,
    left_padding = 10,
    right_padding = 10,
    top_padding = 2,
    bottom_padding = 2,
    right_margin = 1,
    natural_height = 26,
    minimal_height = 24
}

styles["rextended-calculator-history-entry-label"] = {
    type = "label_style",
    parent = "label",
    font = "default",
    single_line = true
}

-- Keep the game's scroll-pane behavior, tint its rail and thumb to match the calculator palette.
local calculator_history_scroll = table.deepcopy(styles["scroll_pane"])
local calculator_history_scrollbar = calculator_history_scroll.vertical_scrollbar_style
if calculator_history_scrollbar then
    calculator_history_scrollbar.width = 12

    local track = calculator_history_scrollbar.background_graphical_set
    if track and track.base then
        track.base.tint = {r = 0.58, g = 0.44, b = 0.28, a = 1}
    end

    local thumb = calculator_history_scrollbar.thumb_button_style
    if thumb then
        local thumb_tints = {
            default_graphical_set = {r = 0.92, g = 0.64, b = 0.3, a = 1},
            hovered_graphical_set = {r = 1, g = 0.8, b = 0.45, a = 1},
            clicked_graphical_set = {r = 1, g = 0.9, b = 0.62, a = 1}
        }
        for graphical_set_name, tint in pairs(thumb_tints) do
            local graphical_set = thumb[graphical_set_name]
            if graphical_set and graphical_set.base then
                graphical_set.base.tint = tint
            end
        end
    end
end
styles["rextended-calculator-history-scroll-pane"] = calculator_history_scroll

local frame_button = styles["frame_button"]
styles["rextended-calculator-title-button"] = {
    type = "button_style",
    parent = "frame_action_button"
}

if frame_button then
    styles["rextended-calculator-title-button"].selected_graphical_set = frame_button.clicked_graphical_set
    styles["rextended-calculator-title-button"].selected_hovered_graphical_set = frame_button.hovered_graphical_set
    styles["rextended-calculator-title-button"].selected_clicked_graphical_set = frame_button.default_graphical_set
end

