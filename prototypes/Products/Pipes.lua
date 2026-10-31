local function create_pipes_item(name, icon, subgroup, order, stack_size)
    return {
        type = "item",
        name = name,
        icon = "__RExtended__/graphics/icons/Pipes/" .. icon .. ".png",
        icon_size = 32,
        subgroup = subgroup,
        order = order,
        place_result = name,
        stack_size = stack_size,
        inventory_move_sound = {filename = "__base__/sound/item/metal-small-inventory-move.ogg", volume = 0.8, aggregation = {max_count = 1, remove = true}},
        pick_sound = {filename = "__base__/sound/item/metal-small-inventory-pickup.ogg", volume = 0.8, aggregation = {max_count = 1, remove = true}},
        drop_sound = {filename = "__base__/sound/item/metal-small-inventory-move.ogg", volume = 0.8, aggregation = {max_count = 1, remove = true}}
    }
end

local function create_pipes_recipe(name, energy_required, enabled, ingredients, results)
    return {
        type = "recipe",
        name = name,
        energy_required = energy_required,
        enabled = enabled,
        ingredients = ingredients,
        results = results
    }
end

local function create_pipes_entity(name, icon)
    
    local pics = {
        straight_vertical_single = {
            filename = "__RExtended__/graphics/entity/Pipes/New/" .. icon .. "-Single.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
        },
        straight_vertical = {
            filename = "__RExtended__/graphics/entity/Pipes/New/" .. icon .. "-Sv.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
        },
        straight_vertical_window = {
            filename = "__RExtended__/graphics/entity/Pipes/New/" .. icon .. "-Vclean.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
        },
        straight_horizontal_single = {
            filename = "__RExtended__/graphics/entity/Pipes/New/" .. icon .. "-Sh.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
        },
        straight_horizontal_window = {
            filename = "__RExtended__/graphics/entity/Pipes/New/" .. icon .. "-Hclean.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
        },
        straight_horizontal = {
            filename = "__RExtended__/graphics/entity/Pipes/New/" .. icon .. "-Sh.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
        },
        corner_up_right = {
            filename = "__RExtended__/graphics/entity/Pipes/New/" .. icon .. "-Ur.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
        },
        corner_up_left = {
            filename = "__RExtended__/graphics/entity/Pipes/New/" .. icon .. "-Ul.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
        },
        corner_down_right = {
            filename = "__RExtended__/graphics/entity/Pipes/New/" .. icon .. "-Dr.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
        },
        corner_down_left = {
            filename = "__RExtended__/graphics/entity/Pipes/New/" .. icon .. "-Dl.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
        },
        t_up = {
            filename = "__RExtended__/graphics/entity/Pipes/New/" .. icon .. "-Cu.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
        },
        t_down = {
            filename = "__RExtended__/graphics/entity/Pipes/New/" .. icon .. "-Cd.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
        },
        t_right = {
            filename = "__RExtended__/graphics/entity/Pipes/New/" .. icon .. "-Cr.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
        },
        t_left = {
            filename = "__RExtended__/graphics/entity/Pipes/New/" .. icon .. "-Cl.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
        },
        cross = {
            filename = "__RExtended__/graphics/entity/Pipes/New/" .. icon .. "-Cross.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
        },
        ending_up = {
            filename = "__RExtended__/graphics/entity/Pipes/New/" .. icon .. "-Ed.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
        },
        ending_down = {
            filename = "__RExtended__/graphics/entity/Pipes/New/" .. icon .. "-Eu.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
        },
        ending_right = {
            filename = "__RExtended__/graphics/entity/Pipes/New/" .. icon .. "-El.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
            --shift = {-0.1875, 0},
        },
        ending_left = {
            filename = "__RExtended__/graphics/entity/Pipes/New/" .. icon .. "-Er.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
            --shift = {0.1875, 0},
        },
        horizontal_window_background = {
            filename = "__RExtended__/graphics/entity/Pipes/clear.png",
            priority = "extra-high",
            width = 32,
            height = 32
        },
        vertical_window_background = {
            filename = "__RExtended__/graphics/entity/Pipes/clear.png",
            priority = "extra-high",
            width = 32,
            height = 32
        },
        fluid_background = {
            filename = "__RExtended__/graphics/entity/Pipes/clear.png",
            priority = "extra-high",
            width = 32,
            height = 32
        },
        low_temperature_flow = {
            filename = "__RExtended__/graphics/entity/Pipes/clear.png",
            priority = "extra-high",
            width = 32,
            height = 32
        },
        middle_temperature_flow = {
            filename = "__RExtended__/graphics/entity/Pipes/clear.png",
            priority = "extra-high",
            width = 32,
            height = 32
        },
        high_temperature_flow = {
            filename = "__RExtended__/graphics/entity/Pipes/clear.png",
            priority = "extra-high",
            width = 32,
            height = 32
        },
        gas_flow = {
            filename = "__RExtended__/graphics/entity/Pipes/clear.png",
            priority = "extra-high",
            width = 32,
            height = 32,
            frame_count = 1,
            line_length = 1,
            axially_symmetrical = false,
            direction_count = 1
        },
    }

    for key, value in pairs(create_pipe_r_visualizations()) do
        pics[key] = value
    end

    local entity = {
        type = "pipe",
        name = name,
        icon = "__RExtended__/graphics/icons/Pipes/" .. icon .. ".png",
        icon_size = 32,
        icon_draw_specification = {scale = 0.5},
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 0.2, result = name},
        max_health = 200,
        corpse = "pipe-remnants",
        dying_explosion = "pipe-explosion",
        impact_category = "metal",
        resistances = {{type = "fire", percent = 70}, {type = "impact", percent = 30}},
        collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        fast_replaceable_group = "pipe",
        default_fluid_temperature_signal = {type = "virtual", name = "signal-T"},
        fluid_box = {
            volume = 250,
            pipe_connections = {
                { position = {0, 0}, direction = defines.direction.north, hide_connection_info = true},
                { position = {0, 0}, direction = defines.direction.east, hide_connection_info = true},
                { position = {0, 0}, direction = defines.direction.south, hide_connection_info = true},
                { position = {0, 0}, direction = defines.direction.west, hide_connection_info = true}
            }
        },
        pictures = pics,
        working_sound = {
            sound = {{filename = "__base__/sound/pipe.ogg", volume = 1}},
            match_volume_to_activity = true,
            max_sounds_per_type = 3
        },
        horizontal_window_bounding_box = {{-0.25, -0.25}, {0.25, 0.25}},
        vertical_window_bounding_box = {{-0.25, -0.25}, {0.125, 0.125}},
        circuit_connector = circuit_connector_definitions["pipe"],
        circuit_wire_max_distance = default_circuit_wire_max_distance
    }

    return entity
end

local function create_pipes_under_entity(name, icon, function_pipes)
    return {
        type = "pipe-to-ground",
        name = name,
        icon = "__RExtended__/graphics/icons/Pipes/" .. icon .. ".png",
        icon_size = 32,
        icon_draw_specification = {scale = 0.5},
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 0.2, result = name},
        max_health = 200,
        corpse = "pipe-to-ground-remnants",
        dying_explosion = "pipe-to-ground-explosion",
        impact_category = "metal",
        resistances = {{type = "fire", percent = 70}, {type = "impact", percent = 30}},
        collision_box = {{-0.29, -0.29}, {0.29, 0.2}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        fluid_box = {
            volume = 250,
            pipe_covers = function_pipes,
            pipe_connections = {
                {position = {0, 0}, direction = defines.direction.north, hide_connection_info = true},
                {
                    position = {0, 0},
                    max_underground_distance = 21,
                    direction = defines.direction.south,
                    connection_type = "underground",
                    hide_connection_info = true
                }
            }
        },
        underground_sprite = {
            filename = "__core__/graphics/arrows/underground-lines.png",
            priority = "high",
            width = 64,
            height = 64,
            scale = 0.5
        },
        pictures = {
            north = {
                filename = "__RExtended__/graphics/entity/Pipes/New/" .. icon .. "-Gu.png",
                priority = "high",
                width = 128,
                height = 128,
                scale = 0.5
            },
            south = {
                filename = "__RExtended__/graphics/entity/Pipes/New/" .. icon .. "-Gd.png",
                priority = "high",
                width = 128,
                height = 128,
                scale = 0.5
            },
            west = {
                filename = "__RExtended__/graphics/entity/Pipes/New/" .. icon .. "-Gl.png",
                priority = "high",
                width = 128,
                height = 128,
                scale = 0.5
            },
            east = {
                filename = "__RExtended__/graphics/entity/Pipes/New/" .. icon .. "-Gr.png",
                priority = "high",
                width = 128,
                height = 128,
                scale = 0.5
            }
        },
        visualization = {
            north = {
                filename = "__base__/graphics/entity/pipe-to-ground/visualization.png",
                priority = "extra-high",
                x = 64,
                size = 64,
                scale = 0.5,
                flags = {"icon"}
            },
            south = {
                filename = "__base__/graphics/entity/pipe-to-ground/visualization.png",
                priority = "extra-high",
                x = 192,
                size = 64,
                scale = 0.5,
                flags = {"icon"}
            },
            west = {
                filename = "__base__/graphics/entity/pipe-to-ground/visualization.png",
                priority = "extra-high",
                x = 256,
                size = 64,
                scale = 0.5,
                flags = {"icon"}
            },
            east = {
                filename = "__base__/graphics/entity/pipe-to-ground/visualization.png",
                priority = "extra-high",
                x = 128,
                size = 64,
                scale = 0.5,
                flags = {"icon"}
            }
        },
        disabled_visualization = {
            north = {
                filename = "__base__/graphics/entity/pipe-to-ground/disabled-visualization.png",
                priority = "extra-high",
                x = 64,
                size = 64,
                scale = 0.5,
                flags = {"icon"}
            },
            south = {
                filename = "__base__/graphics/entity/pipe-to-ground/disabled-visualization.png",
                priority = "extra-high",
                x = 192,
                size = 64,
                scale = 0.5,
                flags = {"icon"}
            },
            west = {
                filename = "__base__/graphics/entity/pipe-to-ground/disabled-visualization.png",
                priority = "extra-high",
                x = 256,
                size = 64,
                scale = 0.5,
                flags = {"icon"}
            },
            east = {
                filename = "__base__/graphics/entity/pipe-to-ground/disabled-visualization.png",
                priority = "extra-high",
                x = 128,
                size = 64,
                scale = 0.5,
                flags = {"icon"}
            }
        },
        circuit_connector = circuit_connector_definitions["pipe-to-ground"],
        circuit_wire_max_distance = default_circuit_wire_max_distance,
        default_fluid_temperature_signal = {type = "virtual", name = "signal-T"}
    }
end

data:extend({
    create_pipes_item("pipe-r1", "Pipe-R1", "machinery-storage", "m-d", 150),
    create_pipes_item("pipe-under-r1", "Pipe-Under-R1", "machinery-storage", "m-e", 100),
    create_pipes_item("pipe-r2", "Pipe-R2", "machinery-storage", "m-f", 150),
    create_pipes_item("pipe-under-r2", "Pipe-Under-R2", "machinery-storage", "m-g", 100),

    create_pipes_recipe("pipe-r1", 0.5, false,
        {
            {type = "item", name = "reinforced-copper-plate-r1", amount = 1},
            {type = "item", name = "glue-r1", amount = 5}
        },
        {{type = "item", name = "pipe-r1", amount = 1}}),
    create_pipes_recipe("pipe-under-r1", 0.5, false,
        {
            {type = "item", name = "pipe-r1", amount = 2},
            {type = "item", name = "reinforced-copper-plate-r1", amount = 3}
        },
        {{type = "item", name = "pipe-under-r1", amount = 2}}),
    create_pipes_recipe("pipe-r2", 0.5, false,
        {
            {type = "item", name = "reinforced-iron-plate-r1", amount = 1},
            {type = "item", name = "glue-r1", amount = 5}
        },
        {{type = "item", name = "pipe-r2", amount = 1}}),
    create_pipes_recipe("pipe-under-r2", 0.5, false,
        {
            {type = "item", name = "pipe-r2", amount = 2},
            {type = "item", name = "reinforced-iron-plate-r1", amount = 3}
        },
        {{type = "item", name = "pipe-under-r2", amount = 2}}
    ),
    create_pipes_entity("pipe-r1", "Pipe-R1"),
    create_pipes_under_entity("pipe-under-r1", "Pipe-Under-R1", pipe_r1_covers()),
    create_pipes_entity("pipe-r2", "Pipe-R2"),
    create_pipes_under_entity("pipe-under-r2", "Pipe-Under-R2", pipe_r2_covers())
})
