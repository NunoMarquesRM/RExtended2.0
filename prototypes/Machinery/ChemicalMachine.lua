data:extend({
    create_machinery_item("chemical-machine-r1", "__RExtended__/graphics/icons/Machinery/Bulk/chemical-machine-r1.png",
        32, "machinery-condenser", "c-c-a", 50),
    create_machinery_item("chemical-machine-r2", "__RExtended__/graphics/icons/Machinery/Bulk/chemical-machine-r2.png",
        32, "machinery-condenser", "c-c-b", 50),

    create_machinery_recipe("chemical-machine-r1", 5, false,
        {
            {type = "item", name = "steel-plate", amount = 12},
            {type = "item", name = "reinforced-gear-iron-r1", amount = 5},
            {type = "item", name = "reinforced-gear-copper-r1", amount = 3},
            {type = "item", name = "electric-component-r1", amount = 2},
            {type = "item", name = "pipe", amount = 6}
        },
        {{type = "item", name = "chemical-machine-r1", amount = 1}}
    ),
    create_machinery_recipe("chemical-machine-r2", 5, false,
        {
            {type = "item", name = "steel-plate", amount = 10},
            {type = "item", name = "pipe", amount = 4},
            {type = "item", name = "chemical-machine-r1", amount = 2}
        },
        {{type = "item", name = "chemical-machine-r2", amount = 1}}
    ),
    -- Entity
    {
        type = "assembling-machine",
        name = "chemical-machine-r1",
        icon = "__RExtended__/graphics/icons/Machinery/Bulk/chemical-machine-r1.png",
        icon_size = 32,
        flags = {"placeable-neutral","placeable-player", "player-creation"},
        minable = {hardness = 0.2, mining_time = 0.5, result = "chemical-machine-r1"},
        max_health = 500,
        corpse = "big-remnants",
        resistances = {{type = "fire",percent = 70}},
        fluid_boxes = {
            {
                production_type = "input",
                pipe_picture = chemicalpipepictures(),
                pipe_covers = npipecovers(),
                base_area = 10,
                base_level = -1,
                volume = 1000,
                pipe_connections = {{ flow_direction="input", direction = defines.direction.north, position = {-1, -1} }},
                secondary_draw_orders = { north = -1 }
            },
            {
                production_type = "input",
                pipe_picture = chemicalpipepictures(),
                pipe_covers = npipecovers(),
                base_area = 10,
                base_level = -1,
                volume = 1000,
                pipe_connections = {{ flow_direction="input", direction = defines.direction.north, position = {1, -1} }},
                secondary_draw_orders = { north = -1 }
            },
            {
                production_type = "output",
                pipe_picture = chemicalpipepictures(),
                pipe_covers = npipecovers(),
                base_level = 1,
                volume = 1000,
                pipe_connections = {{ flow_direction="output", direction = defines.direction.south, position = {-1, 1} }},
                secondary_draw_orders = { north = -1 }
            },
            {
                production_type = "output",
                pipe_picture = chemicalpipepictures(),
                pipe_covers = npipecovers(),
                base_level = 1,
                volume = 1000,
                pipe_connections = {{ flow_direction="output", direction = defines.direction.south, position = {1, 1} }},
                secondary_draw_orders = { north = -1 }
            }
        },
        fluid_boxes_off_when_no_fluid_recipe = true,
        collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
        selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
        crafting_categories = {"chemistry"},
        energy_usage = "350kW",
        ingredient_count = 6,
        crafting_speed = 2,
        energy_source = {type = "electric", input_priority = "secondary", usage_priority = "secondary-input", emissions = 0.018, },
        fast_replaceable_group = "assembling-machine",
        module_slots = 3,
        module_specification = {
            module_info_icon_shift = {0, 0.2},
            module_info_multi_row_initial_height_modifier = -0.3
        },
        allowed_effects = {"consumption", "speed", "productivity", "pollution"},
        working_sound = {
            sound = { { filename = "__base__/sound/chemical-plant.ogg", volume = 0.8 }, },
            idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
            apparent_volume = 1.5,
        },
        graphics_set = {
            animation = {
                filename = "__RExtended__/graphics/entity/Machinery/Bulk/chemical-machine-r1.png",
                width = 320,
                height = 320,
                frame_count = 8,
                line_length = 4,
                animation_speed=0.3,
                shift = {0.875, -0.8125},
                scale  = 0.5,
            }
        }
    }
})

local ChemicalMachineR2 = table.deepcopy(data.raw['assembling-machine']['chemical-machine-r1'])
ChemicalMachineR2.name = "chemical-machine-r2"
ChemicalMachineR2.icon = "__RExtended__/graphics/icons/Machinery/Bulk/chemical-machine-r2.png"
ChemicalMachineR2.icon_size = 32
ChemicalMachineR2.minable.result = "chemical-machine-r2"
ChemicalMachineR2.energy_usage = "750kW"
ChemicalMachineR2.graphics_set.animation.filename = "__RExtended__/graphics/entity/Machinery/Bulk/chemical-machine-r2.png"
ChemicalMachineR2.crafting_speed = 4

data:extend({ChemicalMachineR2})
