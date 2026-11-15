local pump_parts = require("prototypes.Storage.Pumps-Parts")
local pump_bases = require("prototypes.Storage.Pumps-Bases")
local hit_effects = require("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")
local item_sounds = require("__base__.prototypes.item_sounds")
local item_tints = require("__base__.prototypes.item-tints")

local function pump_wagon_connector_graphics()
    return {
        base_animation_finished_at_progress = 0.5,
        clamp_animation_starts_at_progress = 0.75,
        part_1 = pump_parts.part_1,
        part_1_shadow = pump_parts.part_1_shadow,
        part_2 = pump_parts.part_2,
        part_2_shadow = pump_parts.part_2_shadow,
        suction_clamp = pump_parts.suction_clamp,
        suction_clamp_shadow = pump_parts.suction_clamp_shadow,
        base = pump_bases,
        height_diff_to_wagon = 0.15,
        part1_to_2_shift = {0, 0},
        part2_crop_adjustment = -0.05,
        part2_shadow_crop_adjustment = -0.05,
        clamp_y_shift = -0.375,
        top_pivot_shift = {
            north = {0, -2.4},
            east = {1.185, -1.4},
            south = {0, -0.8},
            west = {-1.2, -1.4}
        },
        resting_position_shift = {
            north = {0, -0.6},
            east = {0.75, -0.05},
            south = {0, 0.5},
            west = {-0.7, -0.05}
        },
        shadow_shift = {0.8, 1.55}
    }
end

data:extend({
    {
        type = "item",
        name = "pump-r1",
        icon = "__RExtended__/graphics/icons/Machinery/Bulk/Pump-R1.png",
        icon_size = 256,
        subgroup = "machinery-storage",
        order = "m-h",
        inventory_move_sound = item_sounds.fluid_inventory_move,
        pick_sound = item_sounds.fluid_inventory_pickup,
        drop_sound = item_sounds.fluid_inventory_move,
        place_result = "pump-r1",
        stack_size = 50,
        random_tint_color = item_tints.iron_rust
    },
    {
        type = "recipe",
        name = "pump-r1",
        energy_required = 5,
        enabled = false,
        ingredients =
        {
            {type = "item", name = "pump", amount = 2},
            {type = "item", name = "reinforced-iron-plate-r1", amount = 5},
            {type = "item", name = "reinforced-gear-copper-r1", amount = 2},
            {type = "item", name = "electric-component-r1", amount = 2}
        },
        results = {{type = "item", name = "pump-r1", amount = 1}}
    },
    {
        type = "pump",
        name = "pump-r1",
        icon = "__RExtended__/graphics/icons/Machinery/Bulk/Pump-R1.png",
        icon_size = 256,
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 0.2, result = "pump-r1"},
        max_health = 180,
        fast_replaceable_group = "pipe",
        corpse = "pump-remnants",
        dying_explosion = "pump-explosion",
        collision_box = {{-0.29, -0.9}, {0.29, 0.9}},
        selection_box = {{-0.5, -1}, {0.5, 1}},
        icon_draw_specification = {scale = 0.5},
        working_sound = {
            main_sounds = {
                {
                    sound = {filename = "__base__/sound/pump.ogg", volume = 0.3, audible_distance_modifier = 0.5},
                },
                {
                    sound = {filename = "__base__/sound/entity/pump/pump-fluid-flow.ogg", volume = 0.35},
                    match_volume_to_activity = true,
                    fade_out_ticks = 50,
                    activity_to_volume_modifiers = {offset = 1.0},
                }
            },
            max_sounds_per_prototype = 1
        },
        damaged_trigger_effect = hit_effects.entity(),
        resistances = {
            {
                type = "fire",
                percent = 80
            },
            {
                type = "impact",
                percent = 30
            }
        },
        fluid_box = {
            volume = 800,
            pipe_covers = pipe_pump_covers(),
            pipe_connections = {
                { direction = defines.direction.north, position = {0, -0.5}, flow_direction = "output" },
                { direction = defines.direction.south, position = {0, 0.5}, flow_direction = "input", hide_connection_info = true }
            }
        },
        energy_source = {
            type = "electric",
            usage_priority = "secondary-input",
            drain = "5kW"
        },
        energy_usage = "175kW",
        pumping_speed = 80,
        impact_category = "metal",
        open_sound = sounds.machine_open,
        close_sound = sounds.machine_close,
        animations = {
            north = {
                layers = {
                    {
                        filename = "__RExtended__/graphics/entity/Pump/Pump-R1-North.png",
                        width = 103,
                        height = 164,
                        scale = 0.5,
                        line_length = 8,
                        frame_count = 32,
                        animation_speed = 0.5,
                        shift = util.by_pixel(8, -0.85)
                    },
                    {
                        filename = "__base__/graphics/entity/pump/pump-north-shadow.png",
                        width = 103,
                        height = 164,
                        scale = 0.5,
                        line_length = 8,
                        frame_count = 32,
                        animation_speed = 0.5,
                        shift = util.by_pixel(8, -0.85),
                        draw_as_shadow = true,
                    },
                }
            },
            east = {
                layers = {
                    {
                        filename = "__RExtended__/graphics/entity/Pump/Pump-R1-East.png",
                        width = 130,
                        height = 109,
                        scale = 0.5,
                        line_length =8,
                        frame_count =32,
                        animation_speed = 0.5,
                        shift = util.by_pixel(-0.5, 1.75)
                    },
                    {
                        filename = "__base__/graphics/entity/pump/pump-east-shadow.png",
                        width = 130,
                        height = 109,
                        scale = 0.5,
                        line_length =8,
                        frame_count =32,
                        animation_speed = 0.5,
                        shift = util.by_pixel(-0.5, 1.75),
                        draw_as_shadow = true,
                    },
                }
            },
            south = {
                layers = {
                    {
                        filename = "__RExtended__/graphics/entity/Pump/Pump-R1-South.png",
                        width = 114,
                        height = 160,
                        scale = 0.5,
                        line_length =8,
                        frame_count =32,
                        animation_speed = 0.5,
                        shift = util.by_pixel(11, -8)
                    },
                    {
                        filename = "__base__/graphics/entity/pump/pump-south-shadow.png",
                        width = 114,
                        height = 160,
                        scale = 0.5,
                        line_length =8,
                        frame_count =32,
                        animation_speed = 0.5,
                        shift = util.by_pixel(12.5, -8),
                        draw_as_shadow = true,
                    },
                }
            },
            west = {
                layers = {
                    {
                        filename = "__RExtended__/graphics/entity/Pump/Pump-R1-West.png",
                        width = 131,
                        height = 111,
                        scale = 0.5,
                        line_length =8,
                        frame_count =32,
                        animation_speed = 0.5,
                        shift = util.by_pixel(-0.25, 1.25)
                    },
                    {
                        filename = "__base__/graphics/entity/pump/pump-west-shadow.png",
                        width = 131,
                        height = 111,
                        scale = 0.5,
                        line_length =8,
                        frame_count =32,
                        animation_speed = 0.5,
                        shift = util.by_pixel(-0.25, 1.25),
                        draw_as_shadow = true,
                    },
                }
            }
        },
        wagon_connection_graphics = pump_wagon_connector_graphics(),
        fluid_wagon_tank_valve_max_distance = 2.22,
        base_lifting_sound = {
            sound = {
                filename = "__base__/sound/entity/pump/pump-base-lift-loop.ogg",
                volume = 0.6,
                advanced_volume_control = {
                    fades = {fade_in = {curve_type = "S-curve", from = {control = 0.3, volume_percentage = 0.0}, to = {2.0, 100.0}}}
                },
                aggregation = {max_count = 1, remove = true, count_already_playing = true},
            }
        },
        arm_orienting_sound = {
            sound = {
                filename = "__base__/sound/entity/pump/pump-arm-orient-loop.ogg",
                volume = 0.8,
                advanced_volume_control = {
                    fades = {fade_in = {curve_type = "S-curve", from = {control = 0.3, volume_percentage = 0.0}, to = {2.0, 100.0}}}
                },
                aggregation = {max_count = 1, remove = true, count_already_playing = true},
            }
        },
        clamp_sound = {
            filename = "__base__/sound/entity/pump/pump-clamp.ogg",
            volume = 0.6,
            advanced_volume_control = {
                fades = {fade_in = {curve_type = "S-curve", from = {control = 0.3, volume_percentage = 0.0}, to = {2.0, 100.0}}}
            },
            aggregation = {max_count = 1, remove = true, count_already_playing = true},
        },
        fluid_animation = {
            north = {
                filename = "__base__/graphics/entity/pump/pump-north-liquid.png",
                apply_runtime_tint = true,
                width = 38,
                height = 22,
                scale = 0.5,
                line_length =8,
                frame_count =32,
                shift = util.by_pixel(-0.250, -16.750)
            },
            east = {
                filename = "__base__/graphics/entity/pump/pump-east-liquid.png",
                width = 35,
                height = 46,
                scale = 0.5,
                line_length =8,
                frame_count =32,
                shift = util.by_pixel(6.25, -8.5)
            },
            south = {
                filename = "__base__/graphics/entity/pump/pump-south-liquid.png",
                width = 38,
                height = 45,
                scale = 0.5,
                line_length =8,
                frame_count =32,
                shift = util.by_pixel(0.5, -9.25)
            },
            west = {
                filename = "__base__/graphics/entity/pump/pump-west-liquid.png",
                width = 35,
                height = 47,
                scale = 0.5,
                line_length =8,
                frame_count =32,
                shift = util.by_pixel(-6.5, -9.5)
            }
        },
        glass_pictures = {
            north = {
                filename = "__base__/graphics/entity/pump/pump-north-glass.png",
                width = 64,
                height = 128,
                scale = 0.5
            },
            east = {
                filename = "__base__/graphics/entity/pump/pump-east-glass.png",
                width = 128,
                height = 192,
                scale = 0.5
            },
            south = {
                filename = "__base__/graphics/entity/pump/pump-south-glass.png",
                width = 64,
                height = 128,
                scale = 0.5
            },
            west = {
                filename = "__base__/graphics/entity/pump/pump-west-glass.png",
                width = 192,
                height = 192,
                scale = 0.5,
                shift = util.by_pixel(-16, 0)
            }
        },
        circuit_connector = circuit_connector_definitions["pump"],
        circuit_wire_max_distance = default_circuit_wire_max_distance
    }
})
