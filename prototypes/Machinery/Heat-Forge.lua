-- Heat Forge items, recipes, and entities.
data:extend({
    create_machinery_item("heat-forge-chamber-r1",
        "__RExtended__/graphics/icons/Machinery/Bulk/heat-forge-chamber-r1.png",
        256, "machinery-ore", "a-c-a", 50),
    create_machinery_item("heat-forge-chamber-r2",
        "__RExtended__/graphics/icons/Machinery/Bulk/heat-forge-chamber-r2.png",
        256, "machinery-ore", "a-c-b", 50),

    create_machinery_recipe("heat-forge-chamber-r1", 7, false,
        {
            {type = "item", name = "machine-case-r1", amount = 1},
            {type = "item", name = "electric-component-r1", amount = 5},
            {type = "item", name = "fuse-r1", amount = 2},
            {type = "item", name = "pipe", amount = 10}
        },
        {{type = "item", name = "heat-forge-chamber-r1", amount = 1}}
    ),
    create_machinery_recipe("heat-forge-chamber-r2", 5, false,
        {
            {type = "item", name = "heat-forge-chamber-r1", amount = 1},
            {type = "item", name = "machine-case-r2", amount = 1},
            {type = "item", name = "electric-component-r2", amount = 1},
            {type = "item", name = "fuse-r2", amount = 2},
            {type = "item", name = "steel-plate", amount = 10},
            {type = "item", name = "pipe", amount = 10}
        },
        {{type = "item", name = "heat-forge-chamber-r2", amount = 1}}
    ),
})

data:extend({
    {-- Heat Forge
        type = "assembling-machine",
        name = "heat-forge-chamber-r1",
        icon = "__RExtended__/graphics/icons/Machinery/Bulk/heat-forge-chamber-r1.png",
        icon_size = 256,
        flags = {"placeable-neutral","placeable-player", "player-creation"},
        minable = {hardness = 0.2, mining_time = 0.5, result = "heat-forge-chamber-r1"},
        max_health = 300,
        corpse = "big-remnants",
        next_upgrade = "heat-forge-chamber-r2",
        resistances = {{type = "fire",percent = 70}},
        fluid_boxes = {
            {
                production_type = "output",
                pipe_picture = forgepipepictures(),
                pipe_covers = pipe_r2_covers(),
                base_area = 10,
                base_level = 1,
                volume = 1000,
                pipe_connections = {{
                    flow_direction="output",
                    direction = defines.direction.south,
                    position = {0, 1}
                }},
                secondary_draw_orders = { north = -1 }
            }
        },
        fluid_boxes_off_when_no_fluid_recipe = true,
        collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
        selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
        crafting_categories = {"red-forge-chamber"},
        energy_usage = "400kW",
        ingredient_count = 4,
        crafting_speed = 1,
        energy_source = {type = "electric", input_priority = "secondary", usage_priority = "secondary-input", emissions_per_minute = { pollution = 9.2 }},
        fast_replaceable_group = "assembling-machine",
        module_slots = 2,
        module_specification = {
            module_info_icon_shift = {0, 0.2},
            module_info_multi_row_initial_height_modifier = -0.3
        },
        allowed_effects = {"consumption", "speed", "productivity", "pollution"},
        working_sound = {
            sound = {{ filename = "__base__/sound/chemical-plant.ogg", volume = 0.8}},
            idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
            apparent_volume = 1.5
        },
        graphics_set = {
            animation = {
                south = {
                    filename = "__RExtended__/graphics/entity/Machinery/Heat-Forge/Heat-Forge-Chamber-R1-Animated.png",
                    width = 256,
                    height = 256,
                    shift = {0.25, 0.125},
                    scale = 0.5,
                    frame_count = 32,
                    line_length = 8,
                    animation_speed = 0.25
                },
                west = {
                    filename = "__RExtended__/graphics/entity/Machinery/Heat-Forge/Heat-Forge-Chamber-R1-Animated.png",
                    width = 256,
                    height = 256,
                    shift = {0.25, 0.125},
                    scale = 0.5,
                    frame_count = 32,
                    line_length = 8,
                    animation_speed = 0.25
                },
                north = {
                    filename = "__RExtended__/graphics/entity/Machinery/Heat-Forge/Heat-Forge-Chamber-R1-Animated.png",
                    width = 256,
                    height = 256,
                    shift = {0.25, 0.125},
                    scale = 0.5,
                    frame_count = 32,
                    line_length = 8,
                    animation_speed = 0.25
                },
                east = {
                    filename = "__RExtended__/graphics/entity/Machinery/Heat-Forge/Heat-Forge-Chamber-R1-Animated.png",
                    width = 256,
                    height = 256,
                    shift = {0.25, 0.125},
                    scale = 0.5,
                    frame_count = 32,
                    line_length = 8,
                    animation_speed = 0.25
                }
            }
        }
    },
    {-- Heat Forge R2
        type = "assembling-machine",
        name = "heat-forge-chamber-r2",
        icon = "__RExtended__/graphics/icons/Machinery/Bulk/heat-forge-chamber-r2.png",
        icon_size = 256,
        flags = {"placeable-neutral","placeable-player", "player-creation"},
        minable = {hardness = 0.2, mining_time = 0.5, result = "heat-forge-chamber-r2"},
        max_health = 300,
        corpse = "big-remnants",
        resistances = {{type = "fire",percent = 70}},
        fluid_boxes = {
            {
                production_type = "output",
                pipe_picture = forgepipepictures(),
                pipe_covers = pipe_r2_covers(),
                base_area = 10,
                base_level = 1,
                volume = 1000,
                pipe_connections = {{
                    flow_direction="output",
                    direction = defines.direction.south,
                    position = {0, 1}
                }},
                secondary_draw_orders = { north = -1 }
            }
        },
        fluid_boxes_off_when_no_fluid_recipe = true,
        collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
        selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
        crafting_categories = {"red-forge-chamber"},
        energy_usage = "2MW",
        ingredient_count = 4,
        crafting_speed = 4,
        energy_source = {type = "electric", input_priority = "secondary", usage_priority = "secondary-input", emissions_per_minute = { pollution = 46 }},
        fast_replaceable_group = "assembling-machine",
        module_slots = 3,
        module_specification = {
            module_info_icon_shift = {0, 0.2},
            module_info_multi_row_initial_height_modifier = -0.3
        },
        allowed_effects = {"consumption", "speed", "productivity", "pollution"},
        working_sound = {
            sound = {{ filename = "__base__/sound/chemical-plant.ogg", volume = 0.8}},
            idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
            apparent_volume = 1.5
        },
        graphics_set = {
            animation = {
                south = {
                    filename = "__RExtended__/graphics/entity/Machinery/Heat-Forge/Heat-Forge-Chamber-R2-Animated.png",
                    width = 256,
                    height = 256,
                    shift = {0, -0.35},
                    scale = 0.5,
                    frame_count = 48,
                    line_length = 8,
                    animation_speed = 0.2666666667
                },
                west = {
                    filename = "__RExtended__/graphics/entity/Machinery/Heat-Forge/Heat-Forge-Chamber-R2-Animated.png",
                    width = 256,
                    height = 256,
                    shift = {0, -0.35},
                    scale = 0.5,
                    frame_count = 48,
                    line_length = 8,
                    animation_speed = 0.2666666667
                },
                north = {
                    filename = "__RExtended__/graphics/entity/Machinery/Heat-Forge/Heat-Forge-Chamber-R2-Animated.png",
                    width = 256,
                    height = 256,
                    shift = {0, -0.35},
                    scale = 0.5,
                    frame_count = 48,
                    line_length = 8,
                    animation_speed = 0.2666666667
                },
                east = {
                    filename = "__RExtended__/graphics/entity/Machinery/Heat-Forge/Heat-Forge-Chamber-R2-Animated.png",
                    width = 256,
                    height = 256,
                    shift = {0, -0.35},
                    scale = 0.5,
                    frame_count = 48,
                    line_length = 8,
                    animation_speed = 0.2666666667
                }
            }
        }
    }
})
