data:extend({
    create_machinery_item("compressor-r1", "__RExtended__/graphics/icons/Machinery/Bulk/compressor-r1.png",
        32, "machinery-ore", "a-a-a", 50),
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
            {type = "item", name = "compressor-r1", amount = 2},
            {type = "item", name = "steel-plate", amount = 10},
            {type = "item", name = "reinforced-iron-plate-r1", amount = 5},
            {type = "item", name = "reinforced-copper-plate-r1", amount = 5}
        },
        {{type = "item", name = "compressor-r2", amount = 1}}
    ),
    -- Entity
    {
        type = "assembling-machine",
        name = "compressor-r1",
        icon = "__RExtended__/graphics/icons/Machinery/Bulk/compressor-r1.png",
        icon_size = 32,
        flags = {"placeable-neutral","placeable-player", "player-creation"},
        minable = {hardness = 0.2, mining_time = 0.5, result = "compressor-r1"},
        max_health = 300,
        corpse = "big-remnants",
        resistances = {{type = "fire",percent = 70}},
        fluid_boxes = {
            {
                production_type = "input",
                pipe_picture = compressor_pipepictures(),
                pipe_covers = npipecovers(),
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
                pipe_covers = npipecovers(),
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
        energy_source = {type = "electric", input_priority = "secondary", usage_priority = "secondary-input", emissions = 0.004, },
        fast_replaceable_group = "assembling-machine",
        module_slots = 2,
        module_specification = {
            module_info_icon_shift = {0, 0.2},
            module_info_multi_row_initial_height_modifier = -0.3
        },
        allowed_effects = {"consumption", "speed", "productivity", "pollution"},
        working_sound = {
            sound = {{ filename = "__base__/sound/chemical-plant.ogg", volume = 0.8 },},
            idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
            apparent_volume = 1.5,
        },
        graphics_set = {
            animation = {
                south = { filename = "__RExtended__/graphics/entity/Machinery/Compressor/Compressor-r1-v.png", width = 256, height = 256, shift = {0.3125, 0.125}, scale = 0.5, frame_count = 16, line_length = 8, animation_speed=1.0, },                            
                west  = { filename = "__RExtended__/graphics/entity/Machinery/Compressor/Compressor-r1-h.png", width = 256, height = 256, shift = {0.375, 0}, scale = 0.5, frame_count = 16, line_length = 8, animation_speed=1.0, },                    
                north = { filename = "__RExtended__/graphics/entity/Machinery/Compressor/Compressor-r1-v.png", width = 256, height = 256, shift = {0.3125, 0.125}, scale = 0.5, frame_count = 16, line_length = 8, animation_speed=1.0, },                            
                east  = { filename = "__RExtended__/graphics/entity/Machinery/Compressor/Compressor-r1-h.png", width = 256, height = 256, shift = {0.375, 0}, scale = 0.5, frame_count = 16, line_length = 8, animation_speed=1.0, },                            
            }
        }
    }
})

local CompressorR2 = table.deepcopy(data.raw['assembling-machine']['compressor-r1'])
CompressorR2.name = "compressor-r2"
CompressorR2.icon = "__RExtended__/graphics/icons/Machinery/Bulk/compressor-r2.png"
CompressorR2.icon_size = 32
CompressorR2.minable.result = "compressor-r2"
CompressorR2.energy_usage = "750kW"
CompressorR2.crafting_speed = 4
CompressorR2.module_slots = 3
CompressorR2.module_specification = {
    module_info_icon_shift = {0, 0.2},
    module_info_multi_row_initial_height_modifier = -0.3
}
CompressorR2.graphics_set.animation.south.filename = "__RExtended__/graphics/entity/Machinery/Compressor/Compressor-r2-v.png"
CompressorR2.graphics_set.animation.west.filename  = "__RExtended__/graphics/entity/Machinery/Compressor/Compressor-r2-h.png"
CompressorR2.graphics_set.animation.north.filename = "__RExtended__/graphics/entity/Machinery/Compressor/Compressor-r2-v.png"
CompressorR2.graphics_set.animation.east.filename  = "__RExtended__/graphics/entity/Machinery/Compressor/Compressor-r2-h.png"

data:extend({CompressorR2})