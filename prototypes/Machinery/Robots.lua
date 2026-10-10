data:extend({
    create_machinery_item("red-robot-l",
        "__RExtended__/graphics/icons/Machinery/Robots/red-logistic.png",
        32, "re-robots", "i-a-b", 50),
    create_machinery_item("red-robot-c",
        "__RExtended__/graphics/icons/Machinery/Robots/red-construction.png",
        32, "re-robots", "i-a-c", 50),
    create_machinery_item("red-roboport",
        "__RExtended__/graphics/icons/Machinery/Robots/red-roboport.png",
        64, "re-robots", "i-a-a", 20),
    create_machinery_item("red-chest-storage",
        "__RExtended__/graphics/icons/Machinery/Robots/chest-storage.png",
        32, "re-robots", "i-b-a", 50),
    create_machinery_item("red-chest-passive-provider",
        "__RExtended__/graphics/icons/Machinery/Robots/chest-passive-provider.png",
        32, "re-robots", "i-b-b", 50),
    create_machinery_item("red-chest-requester",
        "__RExtended__/graphics/icons/Machinery/Robots/chest-requester.png",
        32, "re-robots", "i-b-c", 50),
    create_machinery_item("red-chest-buffer",
        "__RExtended__/graphics/icons/Machinery/Robots/chest-buffer.png",
        32, "re-robots", "i-b-d", 50),
    create_machinery_item("red-chest-active-provider",
        "__RExtended__/graphics/icons/Machinery/Robots/chest-active-provider.png",
        32, "re-robots", "i-b-e", 50),
    
        create_machinery_recipe("red-robot-l", 3, false,
        {
            {type = "item", name = "flying-robot-frame", amount = 1},
            {type = "item", name = "advanced-circuit", amount = 3}
        },
        {{type = "item", name = "red-robot-l", amount = 1}}
    ),
    create_machinery_recipe("red-robot-c", 3, false,
        {
            {type = "item", name = "flying-robot-frame", amount = 1},
            {type = "item", name = "electronic-circuit", amount = 3}
        },
        {{type = "item", name = "red-robot-c", amount = 1}}
    ),
    create_machinery_recipe("red-roboport", 5, false,
        {
            {type = "item", name = "advanced-circuit", amount = 45},
            {type = "item", name = "copper-gear-wheel-r1", amount = 50},
            {type = "item", name = "steel-plate", amount = 45}
        },
        {{type = "item", name = "red-roboport", amount = 1}}
    ),
    create_machinery_recipe("red-chest-storage", 1, false,
        {
            {type = "item", name = "reinforced-iron-plate-r1", amount = 4},
            {type = "item", name = "advanced-circuit", amount = 1},
            {type = "item", name = "green-wire", amount = 2},
            {type = "item", name = "red-wire", amount = 2}
        },
        {{type = "item", name = "red-chest-storage", amount = 1}}
    ),
    create_machinery_recipe("red-chest-passive-provider", 1, false,
        {
            {type = "item", name = "reinforced-copper-plate-r1", amount = 4},
            {type = "item", name = "advanced-circuit", amount = 1},
            {type = "item", name = "green-wire", amount = 2},
            {type = "item", name = "red-wire", amount = 2}
        },
        {{type = "item", name = "red-chest-passive-provider", amount = 1}}
    ),
    create_machinery_recipe("red-chest-requester", 1, false,
        {
            {type = "item", name = "reinforced-copper-plate-r1", amount = 4},
            {type = "item", name = "advanced-circuit", amount = 1},
            {type = "item", name = "green-wire", amount = 2},
            {type = "item", name = "red-wire", amount = 2}
        },
        {{type = "item", name = "red-chest-requester", amount = 1}}
    ),
    create_machinery_recipe("red-chest-buffer", 1, false,
        {
            {type = "item", name = "reinforced-copper-plate-r1", amount = 4},
            {type = "item", name = "advanced-circuit", amount = 1},
            {type = "item", name = "green-wire", amount = 2},
            {type = "item", name = "red-wire", amount = 2}
        },
        {{type = "item", name = "red-chest-buffer", amount = 1}}
    ),
    create_machinery_recipe("red-chest-active-provider", 1, false,
        {
            {type = "item", name = "reinforced-copper-plate-r1", amount = 4},
            {type = "item", name = "advanced-circuit", amount = 1},
            {type = "item", name = "green-wire", amount = 2},
            {type = "item", name = "red-wire", amount = 2}
        },
        {{type = "item", name = "red-chest-active-provider", amount = 1}}
    ),
    --IMAGE
    {--Robot Logistic
        type = "logistic-robot",
        name = "red-robot-l",
        icon = "__RExtended__/graphics/icons/Machinery/Robots/red-logistic.png",
        icon_size = 32,
        flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map"},
        minable = {hardness = 0.1, mining_time = 0.1, result = "red-robot-l"},
        max_health = 250,
        resistances = {
            {type = "fire", percent = 85 },
            {type = "physical", decrease = 10, percent = 40 },
        },        
        collision_box = {{0, 0}, {0, 0}},
        selection_box = {{-0.5, -1.5}, {0.5, -0.5}},
        max_payload_size = 2,
        speed = 0.25,
        transfer_distance = 0.5,
        max_energy = "3MJ",
        energy_per_tick = "0.15kJ",
        speed_multiplier_when_out_of_energy = 0.2,
        energy_per_move = "3kJ",
        min_to_charge = 0.2,
        max_to_charge = 0.9,
        idle = {
            filename = "__RExtended__/graphics/entity/Machinery/Robots/red-logistic-on.png",
            priority = "high",
            line_length = 16,
            width = 80,
            height = 80,
            frame_count = 1,
            shift = {0,0},
            scale = 0.5,
            direction_count = 16,
        },
        idle_with_cargo = {
            filename = "__RExtended__/graphics/entity/Machinery/Robots/red-logistic-off.png",
            priority = "high",
            line_length = 16,
            width = 80,
            height = 80,
            frame_count = 1,
            shift = {0,0},
            scale = 0.5,
            direction_count = 16,            
        },
        in_motion = {
            filename = "__RExtended__/graphics/entity/Machinery/Robots/red-logistic-on.png",
            priority = "high",
            line_length = 16,
            width = 80,
            height = 80,
            frame_count = 1,
            shift = {0,0},
            scale = 0.5,
            direction_count = 16,            
        },
        in_motion_with_cargo = {
            filename = "__RExtended__/graphics/entity/Machinery/Robots/red-logistic-off.png",
            priority = "high",
            line_length = 16,
            width = 80,
            height = 80,
            frame_count = 1,
            shift = {0,0},
            scale = 0.5,
            direction_count = 16,            
        },
        shadow_idle = {
            filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
            priority = "high",
            line_length = 16,
            width = 58,
            height = 29,
            frame_count = 1,
            shift = util.by_pixel(32, 19.5),
            direction_count = 16,
            y = 29,
            draw_as_shadow = true,
            hr_version = {
                filename = "__base__/graphics/entity/logistic-robot/hr-logistic-robot-shadow.png",
                priority = "high",
                line_length = 16,
                width = 115,
                height = 57,
                frame_count = 1,
                shift = util.by_pixel(31.75, 19.75),
                direction_count = 16,
                y = 57,
                scale = 0.5,
                draw_as_shadow = true
            },
        },
        shadow_idle_with_cargo = {
            filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
            priority = "high",
            line_length = 16,
            width = 58,
            height = 29,
            frame_count = 1,
            shift = util.by_pixel(32, 19.5),
            direction_count = 16,
            draw_as_shadow = true,
            hr_version = {
                filename = "__base__/graphics/entity/logistic-robot/hr-logistic-robot-shadow.png",
                priority = "high",
                line_length = 16,
                width = 115,
                height = 57,
                frame_count = 1,
                shift = util.by_pixel(31.75, 19.75),
                direction_count = 16,
                scale = 0.5,
                draw_as_shadow = true
            },
        },
        shadow_in_motion = {
            filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
            priority = "high",
            line_length = 16,
            width = 58,
            height = 29,
            frame_count = 1,
            shift = util.by_pixel(32, 19.5),
            direction_count = 16,
            y = 29,
            draw_as_shadow = true,
            hr_version = {
                filename = "__base__/graphics/entity/logistic-robot/hr-logistic-robot-shadow.png",
                priority = "high",
                line_length = 16,
                width = 115,
                height = 57,
                frame_count = 1,
                shift = util.by_pixel(31.75, 19.75),
                direction_count = 16,
                y = 57*3,
                scale = 0.5,
                draw_as_shadow = true
            },
        },
        shadow_in_motion_with_cargo = {
            filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
            priority = "high",
            line_length = 16,
            width = 58,
            height = 29,
            frame_count = 1,
            shift = util.by_pixel(32, 19.5),
            direction_count = 16,
            draw_as_shadow = true,
            hr_version = {
                filename = "__base__/graphics/entity/logistic-robot/hr-logistic-robot-shadow.png",
                priority = "high",
                line_length = 16,
                width = 115,
                height = 57,
                frame_count = 1,
                shift = util.by_pixel(31.75, 19.75),
                direction_count = 16,
                y = 114,
                scale = 0.5,
                draw_as_shadow = true
            },
        },
        working_sound = {
        {
            filename = "__base__/sound/construction-robot-11.ogg", volume = 0.47
        },
        {
            filename = "__base__/sound/construction-robot-12.ogg", volume = 0.47
        },
        {
            filename = "__base__/sound/construction-robot-13.ogg", volume = 0.47
        },
        {
            filename = "__base__/sound/construction-robot-14.ogg", volume = 0.47
        },
        {
            filename = "__base__/sound/construction-robot-15.ogg", volume = 0.47
        },
        {
            filename = "__base__/sound/construction-robot-16.ogg", volume = 0.47
        },
        {
            filename = "__base__/sound/construction-robot-17.ogg", volume = 0.47
        },
        {
            filename = "__base__/sound/construction-robot-18.ogg", volume = 0.47
        },
        {
            filename = "__base__/sound/construction-robot-19.ogg", volume = 0.47
        },
        {
            filename = "__base__/sound/flying-robot-1.ogg", volume = 0.43
        },
        {
            filename = "__base__/sound/flying-robot-2.ogg", volume = 0.43
        },
        {
            filename = "__base__/sound/flying-robot-3.ogg", volume = 0.43
        },
        {
            filename = "__base__/sound/flying-robot-4.ogg", volume = 0.43
        },
        {
            filename = "__base__/sound/flying-robot-5.ogg", volume = 0.43
        }
        },
        max_sounds_per_type = 5,
        audible_distance_modifier = 1,
        probability = 1 / (10 * 60), -- average pause between the sound is 10 seconds
        cargo_centered = {0.0, 0.2},
        water_reflection = robot_reflection(1),
    },
    {--Robot Construction
        type = "construction-robot",
        name = "red-robot-c",
        icon = "__RExtended__/graphics/icons/Machinery/Robots/red-construction.png",
        icon_size = 32,
        flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map"},
        minable = {hardness = 0.1, mining_time = 0.1, result = "red-robot-c"},
        resistances = { 
            {type = "fire", percent = 85 },
            {type = "physical", decrease = 10, percent = 40 },        
        },
        max_health = 250,
        collision_box = {{0, 0}, {0, 0}},
        selection_box = {{-0.5, -1.5}, {0.5, -0.5}},
        max_payload_size = 1,
        speed = 0.25,
        transfer_distance = 0.5,
        max_energy = "3MJ",
        energy_per_tick = "0.15kJ",
        speed_multiplier_when_out_of_energy = 0.2,
        energy_per_move = "3kJ",
        min_to_charge = 0.2,
        max_to_charge = 0.9,
        working_light = {intensity = 0.8, size = 3, color = {r = 0.8, g = 0.8, b = 0.8}},
        idle = {
            filename = "__RExtended__/graphics/entity/Machinery/Robots/red-construction.png",
            priority = "high",
            line_length = 16,
            width = 80,
            height = 80,
            frame_count = 1,
            shift = {0, 0},
            scale = 0.5,
            direction_count = 16
        },
        in_motion = {
            filename = "__RExtended__/graphics/entity/Machinery/Robots/red-construction.png",
            priority = "high",
            line_length = 16,
            width = 80,
            height = 80,
            frame_count = 1,
            shift = {0, 0},
            scale = 0.5,
            direction_count = 16,
        },
        shadow_idle = {
            filename = "__base__/graphics/entity/construction-robot/construction-robot-shadow.png",
            priority = "high",
            line_length = 16,
            width = 53,
            height = 25,
            frame_count = 1,
            shift = util.by_pixel(33.5, 18.5),
            direction_count = 16,
            draw_as_shadow = true,
            hr_version = {
                filename = "__base__/graphics/entity/construction-robot/hr-construction-robot-shadow.png",
                priority = "high",
                line_length = 16,
                width = 104,
                height = 49,
                frame_count = 1,
                shift = util.by_pixel(33.5, 18.75),
                direction_count = 16,
                scale = 0.5,
                draw_as_shadow = true
            },
        },
        shadow_in_motion = {
            filename = "__base__/graphics/entity/construction-robot/construction-robot-shadow.png",
            priority = "high",
            line_length = 16,
            width = 53,
            height = 25,
            frame_count = 1,
            shift = util.by_pixel(33.5, 18.5),
            direction_count = 16,
            draw_as_shadow = true,
            hr_version = {
                filename = "__base__/graphics/entity/construction-robot/hr-construction-robot-shadow.png",
                priority = "high",
                line_length = 16,
                width = 104,
                height = 49,
                frame_count = 1,
                shift = util.by_pixel(33.5, 18.75),
                direction_count = 16,
                scale = 0.5,
                draw_as_shadow = true
            },
        },
        working = {
            filename = "__RExtended__/graphics/entity/Machinery/Robots/red-construction-work.png",
            priority = "high",
            line_length = 2,
            width = 80,
            height = 80,
            frame_count = 2,
            shift = {0, 0},
            scale = 0.5,
            direction_count = 16,
            animation_speed = 0.3,
        },
        shadow_working = {
            filename = "__base__/graphics/entity/construction-robot/construction-robot-shadow.png",
            priority = "high",
            line_length = 16,
            width = 53,
            height = 25,
            frame_count = 1,
            repeat_count = 2,
            shift = util.by_pixel(33.5, 18.5),
            direction_count = 16,
            draw_as_shadow = true,
            hr_version = {
                filename = "__base__/graphics/entity/construction-robot/hr-construction-robot-shadow.png",
                priority = "high",
                line_length = 16,
                width = 104,
                height = 49,
                frame_count = 1,
                repeat_count = 2,
                shift = util.by_pixel(33.5, 18.75),
                direction_count = 16,
                scale = 0.5,
                draw_as_shadow = true
            },
        },
        smoke = {
            filename = "__base__/graphics/entity/smoke-construction/smoke-01.png",
            width = 39,
            height = 32,
            frame_count = 19,
            line_length = 19,
            shift = {0.078125, -0.15625},
            animation_speed = 0.3,
        },
        sparks = {
            {
                filename = "__base__/graphics/entity/sparks/sparks-01.png",
                width = 39,
                height = 34,
                frame_count = 19,
                line_length = 19,
                shift = {-0.109375, 0.3125},
                tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
                animation_speed = 0.3,
            },
            {
                filename = "__base__/graphics/entity/sparks/sparks-02.png",
                width = 36,
                height = 32,
                frame_count = 19,
                line_length = 19,
                shift = {0.03125, 0.125},
                tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
                animation_speed = 0.3,
            },
            {
                filename = "__base__/graphics/entity/sparks/sparks-03.png",
                width = 42,
                height = 29,
                frame_count = 19,
                line_length = 19,
                shift = {-0.0625, 0.203125},
                tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
                animation_speed = 0.3,
            },
            {
                filename = "__base__/graphics/entity/sparks/sparks-04.png",
                width = 40,
                height = 35,
                frame_count = 19,
                line_length = 19,
                shift = {-0.0625, 0.234375},
                tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
                animation_speed = 0.3,
            },
            {
                filename = "__base__/graphics/entity/sparks/sparks-05.png",
                width = 39,
                height = 29,
                frame_count = 19,
                line_length = 19,
                shift = {-0.109375, 0.171875},
                tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
                animation_speed = 0.3,
            },
            {
                filename = "__base__/graphics/entity/sparks/sparks-06.png",
                width = 44,
                height = 36,
                frame_count = 19,
                line_length = 19,
                shift = {0.03125, 0.3125},
                tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
                animation_speed = 0.3,
            },
        },
        working_sound = {
        {
            filename = "__base__/sound/construction-robot-1.ogg", volume = 0.47
        },
        {
            filename = "__base__/sound/construction-robot-2.ogg", volume = 0.47
        },
        {
            filename = "__base__/sound/construction-robot-3.ogg", volume = 0.47
        },
        {
            filename = "__base__/sound/construction-robot-4.ogg", volume = 0.47
        },
        {
            filename = "__base__/sound/construction-robot-5.ogg", volume = 0.47
        },
        {
            filename = "__base__/sound/construction-robot-6.ogg", volume = 0.47
        },
        {
            filename = "__base__/sound/construction-robot-7.ogg", volume = 0.47
        },
        {
            filename = "__base__/sound/construction-robot-8.ogg", volume = 0.47
        },
        {
            filename = "__base__/sound/construction-robot-9.ogg", volume = 0.47
        },
        {
            filename = "__base__/sound/flying-robot-1.ogg", volume = 0.43
        },
        {
            filename = "__base__/sound/flying-robot-2.ogg", volume = 0.43
        },
        {
            filename = "__base__/sound/flying-robot-3.ogg", volume = 0.43
        },
        {
            filename = "__base__/sound/flying-robot-4.ogg", volume = 0.43
        },
        {
            filename = "__base__/sound/flying-robot-5.ogg", volume = 0.43
        }
        },
        max_sounds_per_type = 5,
        audible_distance_modifier = 1,
        probability = 1 / (10 * 60), -- average pause between the sound is 10 seconds
        cargo_centered = {0.0, 0.2},
        water_reflection = robot_reflection(1),
        construction_vector = {0.30, 0.22},
    },
    {--Roboport
        type = "roboport",
        name = "red-roboport",
        icon = "__RExtended__/graphics/icons/Machinery/Robots/red-roboport.png",
        icon_size = 64,
        flags = {"placeable-player", "player-creation"},
        minable = {hardness = 0.2, mining_time = 0.5, result = "red-roboport"},
        max_health = 750,
        corpse = "big-remnants",
        collision_box = {{-1.7, -1.7}, {1.7, 1.7}},
        selection_box = {{-2, -2}, {2, 2}},
        resistances = {
            { type = "fire", percent = 80 },
            { type = "impact", percent = 60 }
        },
        dying_explosion = "medium-explosion",
        energy_source = {
            type = "electric",
            usage_priority = "secondary-input",
            input_flow_limit = "100MW",
            buffer_capacity = "400MJ"
        },
        recharge_minimum = "100MJ",
        energy_usage = "300kW",
        -- per one charge slot
        charging_energy = "50000kW",
        logistics_radius = 450,
        construction_radius = 500,
        charge_approach_distance = 10,
        robot_slots_count = 10,
        material_slots_count = 10,
        stationing_offset = {0, -1.25},
        charging_offsets = {
            {-1.5, -0.5}, {1.5, -0.5}, {1.5, 1}, {-1.5, 1},
            {-1.3, -0.3}, {1.3, -0.3}, {1.3, 0.8}, {-1.3, 0.8},
            {-1.8, -0.8}, {1.8, -0.8}, {1.8, -1.8}, {-1.8, -1.8},
            {-2, -1}, {2, -1}, {2, -2}, {-2, -2},
        },
        base = {
            filename = "__RExtended__/graphics/entity/Machinery/Robots/red-roboport-idle.png",
            width = 412,
            height = 412,
            shift = {0.84375, -1.03125},
            scale = 0.5,
        },
        base_patch = {
            filename = "__RExtended__/graphics/entity/Storage/BigStorageTank/empty.png",
            priority = "medium",
            width = 32,
            height = 32,
            frame_count = 1,
            shift = {0, 0}
        },
        base_animation = {
            filename = "__RExtended__/graphics/entity/Machinery/Robots/red-roboport.png",
            priority = "medium",
            width = 412,
            height = 412,
            frame_count = 4,
            animation_speed = 0.05,
            shift = {0.84375, -1.03125},
            scale = 0.5,
        },
        door_animation_up = {
            filename = "__RExtended__/graphics/entity/Storage/BigStorageTank/empty.png",
            priority = "medium",
            width = 32,
            height = 32,
            frame_count = 1,
            shift = {0, 0}
        },
        door_animation_down = {
            filename = "__RExtended__/graphics/entity/Storage/BigStorageTank/empty.png",
            priority = "medium",
            width = 32,
            height = 32,
            frame_count = 1,
            shift = {0, 0}
        },
        recharging_animation = {
            filename = "__base__/graphics/entity/roboport/roboport-recharging.png",
            priority = "high",
            width = 37,
            height = 35,
            frame_count = 16,
            scale = 1.5,
            animation_speed = 0.5
        },
        vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
        working_sound = {
            sound = { filename = "__base__/sound/roboport-working.ogg", volume = 0.6 },
            max_sounds_per_type = 3,
            audible_distance_modifier = 0.5,
            probability = 1 / (5 * 60) -- average pause between the sound is 5 seconds
        },
        recharging_light = {intensity = 0.4, size = 5, color = {r = 1.0, g = 1.0, b = 1.0}},
        request_to_open_door_timeout = 15,
        spawn_and_station_height = -0.1,
        draw_logistic_radius_visualization = true,
        draw_construction_radius_visualization = true,
        open_door_trigger_effect = { { type = "play-sound", sound = { filename = "__base__/sound/roboport-door.ogg", volume = 1.2 } }, },
        close_door_trigger_effect = { { type = "play-sound", sound = { filename = "__base__/sound/roboport-door.ogg", volume = 0.75 } }, },
        circuit_wire_connection_point = {
            shadow = { red = {1.17188, 1.98438}, green = {1.04688, 2.04688} },
            wire = { red = {0.78125, 1.375}, green = {0.78125, 1.53125} }
        },
        circuit_connector_sprites = circuit_connector_definitions["roboport"].sprites,
        circuit_wire_max_distance = 9,
        default_available_logistic_output_signal = {type = "virtual", name = "signal-X"},
        default_total_logistic_output_signal = {type = "virtual", name = "signal-Y"},
        default_available_construction_output_signal = {type = "virtual", name = "signal-Z"},
        default_total_construction_output_signal = {type = "virtual", name = "signal-T"},
    },
    {--Chest Storage
        type = "logistic-container",
        name = "red-chest-storage",
        icon = "__RExtended__/graphics/icons/Machinery/Robots/chest-storage.png",
        icon_size = 32,
        flags = {"placeable-player", "player-creation"},
        minable = {hardness = 0.2, mining_time = 0.3, result = "red-chest-storage"},
        max_health = 400,
        corpse = "small-remnants",
        collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        resistances = { { type = "fire", percent = 90 }, { type = "impact", percent = 60 } },
        fast_replaceable_group = "container",
        max_logistic_slots = 1,
        inventory_size = 75,
        logistic_mode = "storage",
        open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
        close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
        vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
        picture = {
            filename = "__RExtended__/graphics/entity/Machinery/Robots/chest-storage.png",
            priority = "extra-high",
            width = 168,
            height = 168,
            shift = {0.0625, -0.125},
            scale = 0.25,
        },
        circuit_wire_connection_point = {
            shadow =
            {
                red = {0.734375, 0.453125},
                green = {0.609375, 0.515625},
            },
            wire =
            {
                red = {0.40625, 0.21875},
                green = {0.40625, 0.375},
            }
        },
        circuit_wire_max_distance = 15,
        circuit_connector_definitions["chest"].sprites,
    },
    {--Chest Passive Provider
        type = "logistic-container",
        name = "red-chest-passive-provider",
        icon = "__RExtended__/graphics/icons/Machinery/Robots/chest-passive-provider.png",
        icon_size = 32,
        flags = {"placeable-player", "player-creation"},
        minable = {hardness = 0.2, mining_time = 0.3, result = "red-chest-passive-provider"},
        max_health = 400,
        corpse = "small-remnants",
        collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        resistances = {
            {
                type = "fire",
                percent = 90
            },
            {
                type = "impact",
                percent = 60
            }
        },
        fast_replaceable_group = "container",
        inventory_size = 75,
        logistic_mode = "passive-provider",
        open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
        close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
        vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
        picture = {
            filename = "__RExtended__/graphics/entity/Machinery/Robots/chest-passive-provider.png",
            priority = "extra-high",
            width = 168,
            height = 168,
            shift = {0.0625, -0.125},
            scale = 0.25,
        },
        circuit_wire_connection_point = {
            shadow =
            {
                red = {0.734375, 0.453125},
                green = {0.609375, 0.515625},
            },
            wire =
            {
                red = {0.40625, 0.21875},
                green = {0.40625, 0.375},
            }
        },
        circuit_wire_max_distance = 15,
        circuit_connector_definitions["chest"].sprites,
    },
    {--Chest Requester
        type = "logistic-container",
        name = "red-chest-requester",
        icon = "__RExtended__/graphics/icons/Machinery/Robots/chest-requester.png",
        icon_size = 32,
        flags = {"placeable-player", "player-creation"},
        minable = {hardness = 0.2, mining_time = 0.3, result = "red-chest-requester"},
        max_health = 400,
        corpse = "small-remnants",
        collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        resistances = {
            {
                type = "fire",
                percent = 90
            },
            {
                type = "impact",
                percent = 60
            }
        },
        fast_replaceable_group = "container",
        inventory_size = 75,
        logistic_mode = "requester",
        logistic_slots_count = 18,
        open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
        close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
        vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
        picture = {
            filename = "__RExtended__/graphics/entity/Machinery/Robots/chest-requester.png",
            priority = "extra-high",
            width = 168,
            height = 168,
            shift = {0.0625, -0.125},
            scale = 0.25,
        },
        circuit_wire_connection_point = {
            shadow = {
                red = {0.734375, 0.453125},
                green = {0.609375, 0.515625},
            },
            wire = {
                red = {0.40625, 0.21875},
                green = {0.40625, 0.375},
            }
        },
        circuit_wire_max_distance = 15,
        circuit_connector_definitions["chest"].sprites,
    },
    {--Chest Buffer
        type = "logistic-container",
        name = "red-chest-buffer",
        icon = "__RExtended__/graphics/icons/Machinery/Robots/chest-buffer.png",
        icon_size = 32,
        flags = {"placeable-player", "player-creation"},
        minable = {hardness = 0.2, mining_time = 0.3, result = "red-chest-buffer"},
        max_health = 400,
        corpse = "small-remnants",
        collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        resistances = {
            {
                type = "fire",
                percent = 90
            },
            {
                type = "impact",
                percent = 60
            }
        },
        fast_replaceable_group = "container",
        inventory_size = 49,
        logistic_mode = "buffer",
        logistic_slots_count = 18,
        open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
        close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
        vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
        picture = {
            filename = "__RExtended__/graphics/entity/Machinery/Robots/chest-buffer.png",
            priority = "extra-high",
            width = 168,
            height = 168,
            shift = {0.0625, -0.125},
            scale = 0.25,
        },
        circuit_wire_connection_point = {
            shadow = {
                red = {0.734375, 0.453125},
                green = {0.609375, 0.515625},
            },
            wire = {
                red = {0.40625, 0.21875},
                green = {0.40625, 0.375},
            }
        },
        circuit_wire_max_distance = 15,
        circuit_connector_definitions["chest"].sprites,
    },
    {--Chest Active Provider
        type = "logistic-container",
        name = "red-chest-active-provider",
        icon = "__RExtended__/graphics/icons/Machinery/Robots/chest-active-provider.png",
        icon_size = 32,
        flags = {"placeable-player", "player-creation"},
        minable = {hardness = 0.2, mining_time = 0.3, result = "red-chest-active-provider"},
        max_health = 400,
        corpse = "small-remnants",
        collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        resistances = {
            {
                type = "fire",
                percent = 90
            },
            {
                type = "impact",
                percent = 60
            }
        },
        fast_replaceable_group = "container",
        inventory_size = 49,
        logistic_mode = "active-provider",
        open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
        close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
        vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
        picture = {
            filename = "__RExtended__/graphics/entity/Machinery/Robots/chest-active-provider.png",
            priority = "extra-high",
            width = 168,
            height = 168,
            shift = {0.0625, -0.125},
            scale = 0.25,
        },
        circuit_wire_connection_point = {
            shadow = {
                red = {0.734375, 0.453125},
                green = {0.609375, 0.515625},
            },
            wire = {
                red = {0.40625, 0.21875},
                green = {0.40625, 0.375},
            }
        },
        circuit_wire_max_distance = 15,
        circuit_connector_definitions["chest"].sprites,
    }
})