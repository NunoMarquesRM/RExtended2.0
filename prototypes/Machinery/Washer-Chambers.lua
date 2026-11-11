data:extend({
    create_machinery_item("washer-chamber-r1",
        "__RExtended__/graphics/icons/Machinery/Bulk/Washer-Chamber-Icon-R1.png",
        256, "machinery-ore", "a-b-a", 50),
    create_machinery_item("washer-chamber-r2",
        "__RExtended__/graphics/icons/Machinery/Bulk/washer-chamber-r2.png",
        32, "machinery-ore", "a-b-b", 50),

    create_machinery_recipe("washer-chamber-r1", 4, false,
        {
            {type = "item", name = "steel-plate", amount = 5},
            {type = "item", name = "reinforced-gear-iron-r1", amount = 3},
            {type = "item", name = "reinforced-coal-plate-r1", amount = 5},
            {type = "item", name = "pipe", amount = 10},
            {type = "item", name = "assembling-machine-2", amount = 1}
        },
        {{type = "item", name = "washer-chamber-r1", amount = 1}}
    ),
    create_machinery_recipe("washer-chamber-r2", 5, false,
        {
            {type = "item", name = "steel-plate", amount = 10},
            {type = "item", name = "washer-chamber-r1", amount = 2}
        },
        {{type = "item", name = "washer-chamber-r2", amount = 1}}
    ),
    {-- Washer Chamber R1
        type = "assembling-machine",
        name = "washer-chamber-r1",
        icon = "__RExtended__/graphics/icons/Machinery/Bulk/Washer-Chamber-Icon-R1.png",
        icon_size = 256,
        flags = {"placeable-neutral","placeable-player", "player-creation"},
        minable = {hardness = 0.2, mining_time = 0.5, result = "washer-chamber-r1"},
        max_health = 300,
        corpse = "big-remnants",
        resistances = {{type = "fire",percent = 70}},
        fluid_boxes = {
            {
                production_type = "input",
                pipe_picture = washerpipepictures(),
                pipe_covers = pipe_r2_covers(),
                base_area = 10,
                base_level = -1,
                volume = 1000,
                pipe_connections = {{
                    flow_direction="input",
                    direction = defines.direction.north,
                    position = {0, -1}
                }},
                secondary_draw_orders = { north = -1 }
            }
        },
        fluid_boxes_off_when_no_fluid_recipe = true,
        collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
        selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
        crafting_categories = {"red-washer-chamber"},
        energy_usage = "210kW",
        ingredient_count = 4,
        crafting_speed = 1,
        next_upgrade = "washer-chamber-r2",
        energy_source = {type = "electric", input_priority = "secondary", usage_priority = "secondary-input", emissions_per_minute = { pollution = 4.41 }},
        fast_replaceable_group = "assembling-machine",
        open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
        close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
        module_slots = 2,
        module_specification = {
            module_info_icon_shift = {0, 0.2},
            module_info_multi_row_initial_height_modifier = -0.3
        },
        allowed_effects = add_quality_effect_if_available(
            {"consumption", "speed", "productivity", "pollution"}
        ),
        working_sound = {
            sound = {{ filename = "__base__/sound/chemical-plant.ogg", volume = 0.8 },},
            idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
            apparent_volume = 1.5,
        },
        graphics_set = {
            animation = {
                south = { filename = "__RExtended__/graphics/entity/Machinery/Bulk/Washer-Chamber-R1-Animated.png", width = 256, height = 256, shift = {0.28125, -0}, scale = 0.5, frame_count = 16, line_length = 8, animation_speed=1.0, }    ,
                west  = { filename = "__RExtended__/graphics/entity/Machinery/Bulk/Washer-Chamber-R1-Animated.png", width = 256, height = 256, shift = {0.28125, -0}, scale = 0.5, frame_count = 16, line_length = 8, animation_speed=1.0, }    ,
                north = { filename = "__RExtended__/graphics/entity/Machinery/Bulk/Washer-Chamber-R1-Animated.png", width = 256, height = 256, shift = {0.28125, -0}, scale = 0.5, frame_count = 16, line_length = 8, animation_speed=1.0, }    ,
                east  = { filename = "__RExtended__/graphics/entity/Machinery/Bulk/Washer-Chamber-R1-Animated.png", width = 256, height = 256, shift = {0.28125, -0}, scale = 0.5, frame_count = 16, line_length = 8, animation_speed=1.0, }    ,
            }
        }
    }
})

-- Washer Chamber R2
local WasherChamberR2 = table.deepcopy(data.raw['assembling-machine']['washer-chamber-r1'])
WasherChamberR2.name = "washer-chamber-r2"
WasherChamberR2.icon = "__RExtended__/graphics/icons/Machinery/Bulk/washer-chamber-r2.png"
WasherChamberR2.icon_size = 32
WasherChamberR2.minable.result = "washer-chamber-r2"
WasherChamberR2.energy_usage = "2MW"
WasherChamberR2.next_upgrade = nil
WasherChamberR2.energy_source.emissions_per_minute = { pollution = 42 }
WasherChamberR2.crafting_speed = 4
WasherChamberR2.module_slots = 3
WasherChamberR2.module_specification = {
    module_info_icon_shift = {0, 0.2},
    module_info_multi_row_initial_height_modifier = -0.3
}
WasherChamberR2.graphics_set.animation.south.filename = "__RExtended__/graphics/entity/Machinery/Bulk/washer-chamber-r2.png"
WasherChamberR2.graphics_set.animation.west.filename = "__RExtended__/graphics/entity/Machinery/Bulk/washer-chamber-r2.png"
WasherChamberR2.graphics_set.animation.north.filename = "__RExtended__/graphics/entity/Machinery/Bulk/washer-chamber-r2.png"
WasherChamberR2.graphics_set.animation.east.filename = "__RExtended__/graphics/entity/Machinery/Bulk/washer-chamber-r2.png"


data:extend({WasherChamberR2})
