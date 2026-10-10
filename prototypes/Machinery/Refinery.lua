data:extend({
    create_machinery_item("refinery-r1", "__RExtended__/graphics/icons/Machinery/Bulk/refinery-r1.png",
        32, "machinery-condenser", "c-e-a", 50),
    create_machinery_item("refinery-r2", "__RExtended__/graphics/icons/Machinery/Bulk/refinery-r2.png",
        32, "machinery-condenser", "c-e-b", 50),
    
    create_machinery_recipe("refinery-r1", 5, false,
        {
            {type = "item", name = "reinforced-iron-plate-r1", amount = 20},
            {type = "item", name = "reinforced-copper-plate-r1", amount = 20},
            {type = "item", name = "reinforced-coal-plate-r1", amount = 15},
            {type = "item", name = "electric-component-r1", amount = 15},
            {type = "item", name = "pipe", amount = 20}
        },
        {{type = "item", name = "refinery-r1", amount = 1}}
    ),
    create_machinery_recipe("refinery-r2", 5, false,
        {
            {type = "item", name = "refinery-r1", amount = 2},
            {type = "item", name = "steel-plate", amount = 10},
            {type = "item", name = "electric-component-r1", amount = 5},
            {type = "item", name = "reinforced-copper-plate-r1", amount = 5}
        },
        {{type = "item", name = "refinery-r2", amount = 1}}
    ),
    -- Entity
    {
        type = "assembling-machine",
        name = "refinery-r1",
        icon = "__RExtended__/graphics/icons/Machinery/Bulk/refinery-r1.png",
        icon_size = 32,
        flags = {"placeable-neutral","placeable-player", "player-creation"},
        minable = {mining_time = 1, result = "refinery-r1"},
        max_health = 650,
        corpse = "big-remnants",
        dying_explosion = "medium-explosion",
        collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
        selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
        module_slots = 3,
        module_specification = {
            module_info_icon_shift = {0, 0.2},
            module_info_multi_row_initial_height_modifier = -0.3
        },
        scale_entity_info_icon = true,
        allowed_effects = {"consumption", "speed", "productivity", "pollution"},
        crafting_categories = {"oil-processing","red-oil-process"},
        crafting_speed = 2,
        has_backer_name = false,
        energy_source = {
            type = "electric",
            usage_priority = "secondary-input",
            emissions = 0.05
        },
        energy_usage = "650kW",
        ingredient_count = 4,
        graphics_set = {
            animation = {
                south = { filename = "__RExtended__/graphics/entity/Machinery/Refinery/Refinery-r1-s.png", width = 448, height = 448, shift = {1, -0}, frame_count = 1, line_length = 1, scale = 0.5, animation_speed=1.0, }    ,                            
                west  = { filename = "__RExtended__/graphics/entity/Machinery/Refinery/Refinery-r1-w.png", width = 448, height = 448, shift = {0.65625, -0.71875}, frame_count = 1, line_length = 1, scale = 0.5, animation_speed=1.0, }    ,                    
                north = { filename = "__RExtended__/graphics/entity/Machinery/Refinery/Refinery-r1-n.png", width = 448, height = 448, shift = {1, -0}, frame_count = 1, line_length = 1, scale = 0.5, animation_speed=1.0, }    ,                            
                east  = { filename = "__RExtended__/graphics/entity/Machinery/Refinery/Refinery-r1-e.png", width = 448, height = 448, shift = {0.65625, -0.71875}, frame_count = 1, line_length = 1, scale = 0.5, animation_speed=1.0, }    ,                            
            },
            working_visualisations = {
                {
                    north_position = {1.25, -3.3},
                    east_position = {-0.125, -2.25},
                    south_position = {1.25, -3.125},
                    west_position = {0, -2.125},
                    animation = {
                        filename = "__RExtended__/graphics/entity/Machinery/Refinery/Refinery-r1-fire.png",
                        line_length = 10,
                        width = 40,
                        height = 81,
                        frame_count = 60,
                        animation_speed = 0.75,
                        scale = 0.75,
                        shift = util.by_pixel(0, -14.25),
                    },
                    light = {intensity = 0.4, size = 6, color = {r = 1.0, g = 1.0, b = 1.0}}
                },
                {
                    north_position = {-1.25, -3.3},
                    east_position = {-0.125, -4},
                    south_position = {-1.25, -3.125},
                    west_position = {0, -3.875},
                    animation = {
                        filename = "__RExtended__/graphics/entity/Machinery/Refinery/Refinery-r1-fire.png",
                        line_length = 10,
                        width = 40,
                        height = 81,
                        frame_count = 60,
                        animation_speed = 0.75,
                        scale = 0.75,
                        shift = util.by_pixel(0, -14.25),
                    },
                    light = {intensity = 0.4, size = 6, color = {r = 1.0, g = 1.0, b = 1.0}}
                }
            }
        },
        vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
        working_sound = {
            sound = { filename = "__base__/sound/oil-refinery.ogg" },
            idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
            apparent_volume = 2.5,
        },
        fluid_boxes = {
            {
                production_type = "input",
                pipe_covers = npipecovers(),
                base_area = 10,
                base_level = -1,
                volume = 1000,
                pipe_connections = {{
                    flow_direction="input",
                    direction = defines.direction.south,
                    position = {-1, 2}
                }}
            },
            {
                production_type = "input",
                pipe_covers = npipecovers(),
                base_area = 10,
                base_level = -1,
                volume = 1000,
                pipe_connections = {{
                    flow_direction="input",
                    direction = defines.direction.south,
                    position = {1, 2}
                }}
            },
            {
                production_type = "output",
                pipe_covers = npipecovers(),
                base_level = 1,
                volume = 1000,
                pipe_connections = {{
                    flow_direction="output",
                    direction = defines.direction.north,
                    position = {-2, -2}
                }}
            },
            {
                production_type = "output",
                pipe_covers = npipecovers(),
                base_level = 1,
                volume = 1000,
                pipe_connections = {{
                    flow_direction="output",
                    direction = defines.direction.north,
                    position = {0, -2}
                }}
            },
            {
                production_type = "output",
                pipe_covers = npipecovers(),
                base_level = 1,
                volume = 1000,
                pipe_connections = {{
                    flow_direction="output",
                    direction = defines.direction.north,
                    position = {2, -2}
                }}
            }
        }
    }
})

local RefineryR2 = table.deepcopy(data.raw['assembling-machine']['refinery-r1'])
RefineryR2.name = "refinery-r2"
RefineryR2.icon = "__RExtended__/graphics/icons/Machinery/Bulk/refinery-r2.png"
RefineryR2.icon_size = 32
RefineryR2.minable.result = "refinery-r2"
RefineryR2.energy_usage = "1.5MW"
RefineryR2.crafting_speed = 4
RefineryR2.module_slots = 3
RefineryR2.module_specification = {
    module_info_icon_shift = {0, 0.2},
    module_info_multi_row_initial_height_modifier = -0.3
}
RefineryR2.graphics_set.animation.south.filename = "__RExtended__/graphics/entity/Machinery/Refinery/Refinery-r2-s.png"
RefineryR2.graphics_set.animation.west.filename  = "__RExtended__/graphics/entity/Machinery/Refinery/Refinery-r2-w.png"
RefineryR2.graphics_set.animation.north.filename = "__RExtended__/graphics/entity/Machinery/Refinery/Refinery-r2-n.png"
RefineryR2.graphics_set.animation.east.filename  = "__RExtended__/graphics/entity/Machinery/Refinery/Refinery-r2-e.png"
RefineryR2.working_visualisations = {
    {
        north_position = {1.25, -3.3},
        east_position = {-0.125, -2.25},
        south_position = {1.25, -3.125},
        west_position = {0, -2.125},
        animation = {
            filename = "__RExtended__/graphics/entity/Machinery/Refinery/Refinery-r2-fire.png",
            line_length = 10,
            width = 40,
            height = 81,
            frame_count = 60,
            animation_speed = 0.75,
            scale = 0.75,
            shift = util.by_pixel(0, -14.25),
        },
        light = {intensity = 0.4, size = 6, color = {r = 1.0, g = 1.0, b = 1.0}}
    },
    {
        north_position = {-1.25, -3.3},
        east_position = {-0.125, -4},
        south_position = {-1.25, -3.125},
        west_position = {0, -3.875},
        animation = {
            filename = "__RExtended__/graphics/entity/Machinery/Refinery/Refinery-r2-fire.png",
            line_length = 10,
            width = 40,
            height = 81,
            frame_count = 60,
            animation_speed = 0.75,
            scale = 0.75,
            shift = util.by_pixel(0, -14.25),
        },
        light = {intensity = 0.4, size = 6, color = {r = 1.0, g = 1.0, b = 1.0}}
    }
}

data:extend({RefineryR2})