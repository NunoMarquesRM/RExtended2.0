local function create_air_item(name, icon_name, icon_size, subgroup, order, stack_size)
    return {
        type = "item",
        name = name,
        icon = "__RExtended__/graphics/icons/Machinery/Air-Purification/" .. icon_name .. ".png",
        icon_size = icon_size,
        subgroup = subgroup,
        order = order,
        stack_size = stack_size
    }
end

local function create_air_recipe(name, energy_required, enabled, categories, ingredients, results)
    return {
        type = "recipe",
        name = name,
        energy_required = energy_required,
        enabled = enabled,
        categories = categories,
        ingredients = ingredients,
        results = results
    }
end

data:extend({
    create_air_item("purificator-tool-r1", "Purificator-tool-r1", 32, "fluid-products", "z-d", 25),
    create_air_item("purificator-tool-r1-empty", "Purificator-tool-r1-Empty", 32, "fluid-products", "z-c", 50),

    create_air_recipe("purificator-tool-r1", 2, false, {"crafting-with-fluid"}, {
            {type = "item", name = "purificator-tool-r1-empty", amount = 2},
            {type = "fluid", name = "water", amount = 500}
        },
        {{type = "item", name = "purificator-tool-r1", amount = 1}}),
    
    create_air_recipe("purificator-tool-r1-empty", 2, false, {"crafting"},
        {{type = "item", name = "reinforced-iron-plate-r1", amount = 4}},
        {{type = "item", name = "purificator-tool-r1-empty", amount = 1}}),

    create_air_recipe("air-purificator-r1", 1, false, {"crafting"}, {
            {type = "item", name = "reinforced-iron-plate-r1", amount = 25},
            {type = "item", name = "reinforced-copper-plate-r1", amount = 25},
            {type = "item", name = "cable-r1", amount = 25}
        },
        {{type = "item", name = "air-purificator-r1", amount = 1}}),
    
    {
        type = "item",
        name = "air-purificator-r1",
        icon = "__RExtended__/graphics/icons/Machinery/Air-Purification/Air-Purification-r1.png",
        icon_size = 64,
        subgroup = "machinery-condenser",
        order = "h-c",
        place_result = "air-purificator-r1",
        stack_size = 50
    },
    {-- Pure Air
        type = "recipe",
        name = "pure-air-r1",
        icon = "__RExtended__/graphics/icons/Machinery/Air-Purification/Pure-Air.png",
        icon_size = 32,
        energy_required = 10,
        enabled = false,
        categories = {"air-purification"},
        order = "z-e",
        subgroup = "fluid-products",
        ingredients = {{type = "item", name = "purificator-tool-r1", amount = 1}},
        results = {{type = "item", name = "purificator-tool-r1-empty", amount = 1}}
    },
    {-- Entity Air Purificator
        type = "assembling-machine",
        name = "air-purificator-r1",
        icon = "__RExtended__/graphics/icons/Machinery/Air-Purification/Air-Purification-r1.png",
        icon_size = 64,
        flags = {"placeable-neutral","placeable-player", "player-creation"},
        ingredient_count = 4,
        crafting_speed = 1,
        minable = {mining_time = 0.5, result = "air-purificator-r1"},
        max_health = 300,
        crafting_categories = {"air-purification"},
        energy_usage = "300kW",
        corpse = "big-remnants",
        fluid_boxes = {
            {
                production_type = "input",
                volume = 1000,
                pipe_connections = {{
                    flow_direction = "input",
                    position = {0, -1},
                    direction = defines.direction.north
                }}
            },
            {
                production_type = "output",
                volume = 1000,
                pipe_connections = {{
                    flow_direction = "output",
                    position = {0, 1},
                    direction = defines.direction.south
                }}
            }
        },
        collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
        selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
        energy_source = {
            type = "electric",
            input_priority = "secondary",
            usage_priority = "secondary-input",
            emissions_per_minute = { pollution = -20 }
        },
        graphics_set = {
            animation = {
                south = {filename = "__RExtended__/graphics/entity/Machinery/Air-Purification/Air-Purification-r1.png", width = 256, height = 256, shift = {0.3, -0}, frame_count = 16, line_length = 8, scale = 0.5, animation_speed=1.0},
                west  = {filename = "__RExtended__/graphics/entity/Machinery/Air-Purification/Air-Purification-r1.png", width = 256, height = 256, shift = {0.3, -0}, frame_count = 16, line_length = 8, scale = 0.5, animation_speed=1.0},
                north = {filename = "__RExtended__/graphics/entity/Machinery/Air-Purification/Air-Purification-r1.png", width = 256, height = 256, shift = {0.3, -0}, frame_count = 16, line_length = 8, scale = 0.5, animation_speed=1.0},
                east  = {filename = "__RExtended__/graphics/entity/Machinery/Air-Purification/Air-Purification-r1.png", width = 256, height = 256, shift = {0.3, -0}, frame_count = 16, line_length = 8, scale = 0.5, animation_speed=1.0}
            }
        },
        fast_replaceable_group = "assembling-machine",
        open_sound = {filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
        close_sound = {filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
        module_slots = 2,
        allowed_effects = {"consumption", "speed", "productivity", "pollution"},
        working_sound = {
            sound = {{filename = "__base__/sound/fast-transport-belt.ogg", volume = 0.8}},
            idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
            apparent_volume = 1.5
        },
        effect_receiver = {
            uses_module_effects = true,
            uses_beacon_effects = true,
            uses_surface_effects = true
        },
        fluid_boxes_off_when_no_fluid_recipe = true
    }
})
