data:extend({
    create_machinery_item("compressor-r1", "__RExtended__/graphics/icons/Machinery/Bulk/compressor-r1-advanced.png",
        256, "machinery-ore", "a-a-a", 50),
    create_machinery_item("compressor-r2", "__RExtended__/graphics/icons/Machinery/Bulk/compressor-r2.png",
        32, "machinery-ore", "a-a-b", 50),

    create_machinery_recipe("compressor-r1", 2, false,
        {
            {type = "item", name = "steel-plate", amount = 8},
            {type = "item", name = "reinforced-gear-iron-r1", amount = 3},
            {type = "item", name = "reinforced-gear-copper-r1", amount = 3},
            {type = "item", name = "reinforced-copper-plate-r1", amount = 5}
        },
        {{type = "item", name = "compressor-r1", amount = 1}}
    ),
    create_machinery_recipe("compressor-r2", 5, false,
        {
            {type = "item", name = "compressor-r1", amount = 1},
            {type = "item", name = "machine-case-r2", amount = 1},
            {type = "item", name = "fuse-r2", amount = 2},
            {type = "item", name = "steel-plate", amount = 5},
            {type = "item", name = "pipe", amount = 5}
        },
        {{type = "item", name = "compressor-r2", amount = 1}}
    ),
    -- Entity
    {
        type = "assembling-machine",
        name = "compressor-r1",
        icon = "__RExtended__/graphics/icons/Machinery/Bulk/compressor-r1-advanced.png",
        icon_size = 256,
        flags = {"placeable-neutral","placeable-player", "player-creation"},
        minable = {hardness = 0.2, mining_time = 0.3, result = "compressor-r1"},
        max_health = 300,
        corpse = "big-remnants",
        resistances = {{type = "fire",percent = 70}},
        fluid_boxes = {
            {
                production_type = "input",
                pipe_picture = compressor_pipepictures(),
                pipe_covers = pipe_r2_covers(),
                base_area = 10,
                base_level = -1,
                volume = 1000,
                pipe_connections = {{
                    flow_direction="input",
                    direction = defines.direction.north,
                    position = {0, -1}
                }},
                secondary_draw_orders = {north = -1}
            },
            {
                production_type = "output",
                pipe_picture = compressor_pipepictures(),
                pipe_covers = pipe_r2_covers(),
                base_area = 10,
                base_level = 1,
                volume = 1000,
                pipe_connections = {{
                    flow_direction="output",
                    direction = defines.direction.south,
                    position = {0, 1}
                }},
                secondary_draw_orders = {north = -1}
            }
        },
        fluid_boxes_off_when_no_fluid_recipe = true,
        collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
        selection_box = {{-1.5, -1.5}, {1.5, 1.5}},    
        crafting_categories = {"red-compressing"},
        energy_usage = "260kW",
        ingredient_count = 4,
        crafting_speed = 1,
        next_upgrade = "compressor-r2",
        energy_source = {type = "electric", input_priority = "secondary", usage_priority = "secondary-input", emissions_per_minute = { pollution = 1.04 }},
        fast_replaceable_group = "assembling-machine",
        module_slots = 2,
        module_specification = {
            module_info_icon_shift = {0, 0.2},
            module_info_multi_row_initial_height_modifier = -0.3
        },
        allowed_effects = {"consumption", "speed", "productivity", "pollution"},
        working_sound = {
            sound = {{ filename = "__base__/sound/chemical-plant.ogg", volume = 0.6 },},
            idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.4 },
            apparent_volume = 0.8,
        },
        graphics_set = {
            animation = {
                south = { filename = "__RExtended__/graphics/entity/Machinery/Compressor/Compressor-r1-advanced-v.png", width = 256, height = 256, shift = {0.3125, 0.125}, scale = 0.5, frame_count = 16, line_length = 8, animation_speed=1.0, },                            
                west  = { filename = "__RExtended__/graphics/entity/Machinery/Compressor/Compressor-r1-advanced-h.png", width = 256, height = 256, shift = {0.375, 0}, scale = 0.5, frame_count = 16, line_length = 8, animation_speed=1.0, },                    
                north = { filename = "__RExtended__/graphics/entity/Machinery/Compressor/Compressor-r1-advanced-v.png", width = 256, height = 256, shift = {0.3125, 0.125}, scale = 0.5, frame_count = 16, line_length = 8, animation_speed=1.0, },                            
                east  = { filename = "__RExtended__/graphics/entity/Machinery/Compressor/Compressor-r1-advanced-h.png", width = 256, height = 256, shift = {0.375, 0}, scale = 0.5, frame_count = 16, line_length = 8, animation_speed=1.0, },                            
            }
        }
    },
    -- Compressor R2
    {
        type = "assembling-machine",
        name = "compressor-r2",
        icon = "__RExtended__/graphics/icons/Machinery/Bulk/compressor-r2.png",
        icon_size = 32,
        flags = {"placeable-neutral","placeable-player", "player-creation"},
        minable = {hardness = 0.1, mining_time = 0.5, result = "compressor-r2"},
        max_health = 300,
        corpse = "big-remnants",
        resistances = {{type = "fire",percent = 70}},
        fluid_boxes = {
            {
                production_type = "input",
                pipe_picture = compressor_pipepictures(),
                pipe_covers = pipe_r2_covers(),
                base_area = 10,
                base_level = -1,
                volume = 1000,
                pipe_connections = {{
                    flow_direction="input",
                    direction = defines.direction.north,
                    position = {0, -1}
                }},
                secondary_draw_orders = {north = -1}
            },
            {
                production_type = "output",
                pipe_picture = compressor_pipepictures(),
                pipe_covers = pipe_r2_covers(),
                base_area = 10,
                base_level = 1,
                volume = 1000,
                pipe_connections = {{
                    flow_direction="output",
                    direction = defines.direction.south,
                    position = {0, 1}
                }},
                secondary_draw_orders = {north = -1}
            }
        },
        fluid_boxes_off_when_no_fluid_recipe = true,
        collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
        selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
        crafting_categories = {"red-compressing"},
        energy_usage = "2MW",
        ingredient_count = 4,
        crafting_speed = 4,
        energy_source = {type = "electric", input_priority = "secondary", usage_priority = "secondary-input", emissions_per_minute = { pollution = 8 }},
        fast_replaceable_group = "assembling-machine",
        module_slots = 3,
        module_specification = {
            module_info_icon_shift = {0, 0.2},
            module_info_multi_row_initial_height_modifier = -0.3
        },
        allowed_effects = {"consumption", "speed", "productivity", "pollution"},
        working_sound = {
            sound = {{ filename = "__base__/sound/chemical-plant.ogg", volume = 0.6 },},
            idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.4 },
            apparent_volume = 0.8,
        },
        graphics_set = {
            animation = {
                south = {
                    filename = "__RExtended__/graphics/entity/Machinery/Compressor/Compressor-r2-v.png",
                    width = 256,
                    height = 256,
                    shift = {0.3125, 0.125},
                    scale = 0.5,
                    frame_count = 16,
                    line_length = 8,
                    animation_speed = 1.0
                },
                west = {
                    filename = "__RExtended__/graphics/entity/Machinery/Compressor/Compressor-r2-h.png",
                    width = 256,
                    height = 256,
                    shift = {0.375, 0},
                    scale = 0.5,
                    frame_count = 16,
                    line_length = 8,
                    animation_speed = 1.0
                },
                north = {
                    filename = "__RExtended__/graphics/entity/Machinery/Compressor/Compressor-r2-v.png",
                    width = 256,
                    height = 256,
                    shift = {0.3125, 0.125},
                    scale = 0.5,
                    frame_count = 16,
                    line_length = 8,
                    animation_speed = 1.0
                },
                east = {
                    filename = "__RExtended__/graphics/entity/Machinery/Compressor/Compressor-r2-h.png",
                    width = 256,
                    height = 256,
                    shift = {0.375, 0},
                    scale = 0.5,
                    frame_count = 16,
                    line_length = 8,
                    animation_speed = 1.0
                },
            }
        }
    }
})
