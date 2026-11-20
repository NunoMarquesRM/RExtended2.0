-- Dedicated fluid inlet connectors for the redesigned R2 orientations.
local mining_drill_r2_covers = pipe_r2_covers()
mining_drill_r2_covers.north = util.empty_sprite()
mining_drill_r2_covers.south.shift = {0, -0.25}
local mining_drill_r2_connectors = {
    north = {
        filename = "__RExtended__/graphics/entity/Pipes/Mining-Drill-R2-Connector-North.png",
        width = 256, height = 256, scale = 0.25, shift = {0, 0.5}
    },
    east = {
        filename = "__RExtended__/graphics/entity/Pipes/Mining-Drill-R2-Connector-East.png",
        width = 256, height = 256, scale = 0.25, shift = {-0.5, 0}
    },
    south = {
        filename = "__RExtended__/graphics/entity/Pipes/Mining-Drill-R2-Connector-South.png",
        width = 256, height = 256, scale = 0.25, shift = {0, -0.75}
    },
    west = {
        filename = "__RExtended__/graphics/entity/Pipes/Mining-Drill-R2-Connector-West.png",
        width = 256, height = 256, scale = 0.25, shift = {0.5, 0}
    }
}
data:extend({
    create_machinery_item("mining-drill-r2",
        "__RExtended__/graphics/icons/Machinery/Mining-Drill/Mining-Drill-R2.png",
        256, "machinery-drill", "f-a", 50),
    create_machinery_item("mining-drill-r3",
        "__RExtended__/graphics/icons/Machinery/Mining-Drill/mining-drill-r3.png",
        32, "machinery-drill", "f-b", 50),

    create_machinery_recipe("mining-drill-r2", 2, false,
        {
            {type = "item", name = "electric-mining-drill", amount = 1},
            {type = "item", name = "reinforced-gear-copper-r1", amount = 4},
            {type = "item", name = "reinforced-iron-plate-r1", amount = 5}
        },
        {{type = "item", name = "mining-drill-r2", amount = 1}}
    ),
    create_machinery_recipe("mining-drill-r3", 2, false,
        {
            {type = "item", name = "mining-drill-r2", amount = 1},
            {type = "item", name = "cable-r1", amount = 5},
            {type = "item", name = "reinforced-component-r1", amount = 10},
            {type = "item", name = "electronic-circuit", amount = 3},
            {type = "item", name = "reinforced-iron-plate-r1", amount = 5},
            {type = "item", name = "reinforced-copper-plate-r1", amount = 5}
        },
        {{type = "item", name = "mining-drill-r3", amount = 1}}
    ),
    -- Entities
    {--Mining Drill R2
        type = "mining-drill",
        name = "mining-drill-r2",
        icon = "__RExtended__/graphics/icons/Machinery/Mining-Drill/Mining-Drill-R2.png",
        icon_size = 256,
        flags = {"placeable-neutral", "player-creation"},
        resource_categories = {"basic-solid"},
        minable = {mining_time = 1, result = "mining-drill-r2"},
        max_health = 320,
        corpse = "medium-remnants",
        resistances = {{type = "fire", percent = 80}},
        collision_box = {{-2.2, -2.2}, {2.2, 2.2}},
        selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
        mining_speed = 4,
        next_upgrade = "mining-drill-r3",
        fast_replaceable_group = "mining-drill",
        input_fluid_box = {
            production_type = "input-output",
            pipe_picture = mining_drill_r2_connectors,
            pipe_covers = mining_drill_r2_covers,
            draw_only_when_connected = true,
            secondary_draw_orders = {north = -1, east = -1, west = -1},
            volume = 100,
            base_area = 1,
            pipe_connections = {{ direction = defines.direction.south, position = {0, 2} }}
        },
        working_sound = {sound = {filename = "__base__/sound/electric-mining-drill.ogg", volume = 0.8}},
        energy_source = {
            type = "electric",
            emissions_per_minute = { pollution = 45 },
            usage_priority = "secondary-input"
        },
        energy_usage = "220kW",
        mining_power = 1,
        module_slots = 2,
        module_specification = {
            module_info_icon_shift = {0, 0.2},
            module_info_multi_row_initial_height_modifier = -0.3
        },
        allowed_effects = add_quality_effect_if_available(
            {"consumption", "speed", "productivity", "pollution"}
        ),
        graphics_set = {
            animation = {
                 north = {
                    layers = {{
                        priority = "extra-high",
                        filename = "__RExtended__/graphics/entity/Machinery/Mining-Drill/Mining-Drill-R2-North.png",
                        width = 270,
                        height = 270,
                        frame_count = 36,
                        line_length = 6,
                        animation_speed = 0.25,
                        scale = 0.65
                    }}
                },
                east = {
                    layers = {{
                        priority = "extra-high",
                        filename = "__RExtended__/graphics/entity/Machinery/Mining-Drill/Mining-Drill-R2-East.png",
                        width = 270,
                        height = 270,
                        frame_count = 36,
                        line_length = 6,
                        animation_speed = 0.25,
                        shift = {0, 0.15625},
                        scale = 0.65
                    }}
                },
                south = {
                    layers = {{
                        priority = "extra-high",
                        filename = "__RExtended__/graphics/entity/Machinery/Mining-Drill/Mining-Drill-R2-South.png",
                        width = 270,
                        height = 270,
                        frame_count = 36,
                        line_length = 6,
                        animation_speed = 0.25,
                        scale = 0.65
                    }}
                },
                west = {
                    layers = {{
                        priority = "extra-high",
                        filename = "__RExtended__/graphics/entity/Machinery/Mining-Drill/Mining-Drill-R2-West.png",
                        width = 270,
                        height = 270,
                        frame_count = 36,
                        line_length = 6,
                        animation_speed = 0.25,
                        shift = {0, 0.15625},
                        scale = 0.65
                    }}
                }
            }
        },
        resource_searching_radius = 3,
        vector_to_place_result = {0, -2.75},
        radius_visualisation_picture = {
            filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
            width = 12,
            height = 12
        }
    },
    {--Mining Drill R3
        type = "mining-drill",
        name = "mining-drill-r3",
        icon = "__RExtended__/graphics/icons/Machinery/Mining-Drill/mining-drill-r3.png",
        icon_size = 32,
        flags = {"placeable-neutral", "player-creation"},
        resource_categories = {"basic-solid"},
        minable = {mining_time = 1, result = "mining-drill-r3"},
        max_health = 320,
        corpse = "medium-remnants",
        resistances = {{type = "fire",percent = 80}},
        collision_box = {{-2.2, -2.2}, {2.2, 2.2}},
        selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
        mining_speed = 15,
        fast_replaceable_group = "mining-drill",
        input_fluid_box = {
            production_type = "input-output",
            volume = 100,
            base_area = 1,
            pipe_connections = {{ direction = defines.direction.south, position = {0, 2} }}
        },
        working_sound = {sound = {filename = "__base__/sound/electric-mining-drill.ogg", volume = 0.8},},
        energy_source = {
            type = "electric",
            emissions_per_minute = { pollution = 200 },
            usage_priority = "secondary-input"
        },
        energy_usage = "5MW",
        mining_power = 1,
        module_slots = 1,
        module_specification = {
            module_info_icon_shift = {0, 0.2},
            module_info_multi_row_initial_height_modifier = -0.3
        },
        allowed_effects = add_quality_effect_if_available(
            {"consumption", "speed", "productivity", "pollution"}
        ),
        graphics_set = {
            animation = {
                north = {
                    layers = {{
                        priority = "extra-high",
                        filename = "__RExtended__/graphics/entity/Machinery/Mining-Drill/minidrill-r3-n.png",
                        width = 360,
                        height = 360,
                        frame_count = 16,
                        line_length = 4,
                        shift = {0.1875, 0.03125},
                        animation_speed = 0.5,
                        run_mode = "forward-then-backward",
                        scale = 0.5
                    }}
                },
                east = {
                    layers = {{
                        priority = "extra-high",
                        filename = "__RExtended__/graphics/entity/Machinery/Mining-Drill/minidrill-r3-e.png",
                        width = 360,
                        height = 360,
                        frame_count = 16,
                        line_length = 4,
                        shift = {0.1875, 0.03125},
                        animation_speed = 0.5,
                        run_mode = "forward-then-backward",
                        scale = 0.5
                    }}
                },
                south = {
                    layers = {{
                        priority = "extra-high",
                        filename = "__RExtended__/graphics/entity/Machinery/Mining-Drill/minidrill-r3-s.png",
                        width = 360,
                        height = 360,
                        frame_count = 16,
                        line_length = 4,
                        shift = {0.1875, 0.03125},
                        animation_speed = 0.5,
                        run_mode = "forward-then-backward",
                        scale = 0.5
                    }}
                },
                west = {
                    layers = {{
                        priority = "extra-high",
                        filename = "__RExtended__/graphics/entity/Machinery/Mining-Drill/minidrill-r3-w.png",
                        width = 360,
                        height = 360,
                        frame_count = 16,
                        line_length = 4,
                        shift = {0.1875, 0.03125},
                        animation_speed = 0.5,
                        run_mode = "forward-then-backward",
                        scale = 0.5
                    }}
                }
            }
        },
        resource_searching_radius = 3,
        vector_to_place_result = {0, -2.75},
        radius_visualisation_picture = {
            filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
            width = 12,
            height = 12
        }
    }
})
