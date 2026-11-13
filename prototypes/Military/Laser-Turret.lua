local util = require("util")
local hit_effects = require("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")

local turret_name = "laser-turret-r2"
local turret_graphics = "__RExtended__/graphics/entity/Military/Laser-Turret/"

local function scale_beam_damage(value, multiplier)
    if type(value) ~= "table" then
        return
    end

    if value.type == "damage" and value.damage and type(value.damage.amount) == "number" then
        value.damage.amount = value.damage.amount * multiplier
    end

    for _, child in pairs(value) do
        if type(child) == "table" then
            scale_beam_damage(child, multiplier)
        end
    end
end

local function laser_turret_r2_shooting()
    return {
        filename = turret_graphics .. "laser-turret-shooting.png",
        line_length = 8,
        width = 126,
        height = 120,
        direction_count = 64,
        shift = util.by_pixel(0, -35),
        scale = 0.5
    }
end

local function laser_turret_r2_extension(inputs)
    return {
        filename = turret_graphics .. "laser-turret-raising.png",
        priority = "medium",
        width = 130,
        height = 126,
        frame_count = inputs.frame_count or 15,
        line_length = inputs.line_length or 0,
        run_mode = inputs.run_mode or "forward",
        direction_count = 4,
        shift = util.by_pixel(0, -32.5),
        scale = 0.5
    }
end

-- Clone the vanilla beam, then scale its action damage for this turret only.
local turret_beam = table.deepcopy(data.raw.beam["laser-beam"])
turret_beam.name = turret_name .. "-beam"
scale_beam_damage(turret_beam.action, 4)
turret_beam.graphics_set.beam.head.layers[1].filename = turret_graphics .. "laser-body.png"
turret_beam.graphics_set.beam.body[1].layers[1].filename = turret_graphics .. "laser-body.png"

local turret = {
    type = "electric-turret",
    name = turret_name,
    icon = "__RExtended__/graphics/icons/Military/Laser-Turret.png",
    flags = {"placeable-player", "placeable-enemy", "player-creation"},
    minable = {mining_time = 0.5, result = turret_name},
    fast_replaceable_group = "laser-turret",
    max_health = 1200,
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-1, -1}, {1, 1}},
    drawing_box_vertical_extension = 0.3,
    damaged_trigger_effect = hit_effects.entity(),
    circuit_connector = circuit_connector_definitions["laser-turret"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    rotation_speed = 0.01,
    preparing_speed = 0.05,
    open_sound = sounds.turret_open,
    close_sound = sounds.turret_close,
    preparing_sound = sounds.laser_turret_activate,
    folding_sound = sounds.laser_turret_deactivate,
    corpse = "laser-turret-remnants",
    dying_explosion = "laser-turret-explosion",
    folding_speed = 0.05,
    energy_source = {
        type = "electric",
        buffer_capacity = "150MJ",
        input_flow_limit = "360MW",
        drain = "24kW",
        usage_priority = "primary-input"
    },
    folded_animation = {
        layers = {
            laser_turret_r2_extension{frame_count = 1, line_length = 1},
            laser_turret_extension_shadow{frame_count = 1, line_length = 1}
        }
    },
    preparing_animation = {
        layers = {
            laser_turret_r2_extension{},
            laser_turret_extension_shadow{}
        }
    },
    prepared_animation = {
        layers = {
            laser_turret_r2_shooting(),
            laser_turret_shooting_shadow()
        }
    },
    energy_glow_animation = laser_turret_shooting_glow(),
    glow_light_intensity = 0.5,
    folding_animation = {
        layers = {
            laser_turret_r2_extension{run_mode = "backward"},
            laser_turret_extension_shadow{run_mode = "backward"}
        }
    },
    graphics_set = {
        base_visualisation = {
            animation = {
                layers = {
                    {
                        filename = turret_graphics .. "laser-turret-base.png",
                        priority = "high",
                        width = 138,
                        height = 104,
                        shift = util.by_pixel(-0.5, 2),
                        scale = 0.5
                    },
                    {
                        filename = "__base__/graphics/entity/laser-turret/laser-turret-base-shadow.png",
                        line_length = 1,
                        width = 132,
                        height = 82,
                        draw_as_shadow = true,
                        shift = util.by_pixel(6, 3),
                        scale = 0.5
                    }
                }
            }
        }
    },
    attack_parameters = {
        type = "beam",
        cooldown = 40,
        range = 60,
        threatening_asteroid_penalty = -20,
        range_mode = "center-to-bounding-box",
        source_direction_count = 64,
        source_offset = {0, -3.423489 / 4},
        damage_modifier = 2,
        ammo_category = "laser",
        ammo_type = {
            energy_consumption = "30MJ",
            action = {
                type = "direct",
                action_delivery = {
                    type = "beam",
                    beam = turret_beam.name,
                    max_length = 60,
                    duration = 40,
                    source_offset = {0, -1.31439}
                }
            }
        }
    },
    call_for_help_radius = 60,
    water_reflection = {
        pictures = {
            filename = "__base__/graphics/entity/laser-turret/laser-turret-reflection.png",
            priority = "extra-high",
            width = 20,
            height = 32,
            shift = util.by_pixel(0, 40),
            variation_count = 1,
            scale = 5
        },
        rotate = false,
        orientation_to_variation = false
    }
}

data:extend({
    turret_beam,
    turret,
    {
        type = "recipe",
        name = turret_name,
        enabled = false,
        energy_required = 30,
        allow_productivity = false,
        ingredients = {
            {type = "item", name = "laser-turret", amount = 4},
            {type = "item", name = "processing-unit", amount = 50},
            {type = "item", name = "speed-module-2", amount = 2},
            {type = "item", name = "electric-component-r1", amount = 15}
        },
        results = {{type = "item", name = turret_name, amount = 1}}
    },
    {
        type = "item",
        name = turret_name,
        icon = "__RExtended__/graphics/icons/Military/Laser-Turret.png",
        subgroup = "machinery-military",
        order = "k-a",
        place_result = turret_name,
        stack_size = 50
    }
})
