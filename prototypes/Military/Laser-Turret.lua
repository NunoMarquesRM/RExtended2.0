-- Late-game laser turret: combines long range with high damage.
local turret_name = "laser-turret-r2"
local turrent_entity = "__RExtended__/graphics/entity/Military/Laser-Turret/"

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

-- Clone the vanilla beam and scale its damage once to keep the stated x4 damage.
local turret_beam = table.deepcopy(data.raw.beam["laser-beam"])
turret_beam.name = turret_name .. "-beam"
scale_beam_damage(turret_beam.action, 4)

turret_beam.graphics_set.beam.head.layers[1].filename = turrent_entity .. "laser-body.png"
turret_beam.graphics_set.beam.body[1].layers[1].filename = turrent_entity .. "laser-body.png"

-----------------------------------------------
-- Helper Functions from vanilla turrets.lua

local function laser_turret_r2_extension(inputs)
    return
    {
        filename = turrent_entity .. "laser-turret-raising.png",
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
-----------------------------------------------


local turret = table.deepcopy(data.raw["electric-turret"]["laser-turret"])
turret.name = turret_name
turret.max_health = 1200
turret.minable.result = turret_name
turret.energy_source.buffer_capacity = "150MJ"
turret.energy_source.input_flow_limit = "360MW"

turret.attack_parameters.range = 60
turret.attack_parameters.ammo_type.energy_consumption = "30MJ"
turret.attack_parameters.ammo_type.action.action_delivery.beam = turret_beam.name
turret.attack_parameters.ammo_type.action.action_delivery.max_length = 60

turret.call_for_help_radius = math.max(turret.call_for_help_radius or 0, 60)

turret.folded_animation.layers[1] = laser_turret_r2_extension{frame_count=1, line_length = 1}
turret.folded_animation.layers[3] = nil
turret.preparing_animation.layers[1] = laser_turret_r2_extension{}
turret.preparing_animation.layers[3] = nil
turret.prepared_animation.layers[1] = {
    filename = turrent_entity .. "laser-turret-shooting.png",
    line_length = 8,
    width = 126,
    height = 120,
    direction_count = 64,
    shift = util.by_pixel(0, -35),
    scale = 0.5
}
turret.prepared_animation.layers[3] = nil
turret.folding_animation.layers[1] = laser_turret_r2_extension{run_mode = "backward"}
turret.folding_animation.layers[3] = nil
turret.graphics_set.base_visualisation.animation.layers[1].filename = turrent_entity .. "laser-turret-base.png"

turret.energy_glow_animation = {
    filename = "__base__/graphics/entity/laser-turret/laser-turret-shooting-light.png",
    line_length = 8,
    width = 122,
    height = 116,
    direction_count = 64,
    shift = util.by_pixel(-0.5, -35),
    blend_mode = "additive",
    scale = 0.5
}

data:extend({turret_beam, turret,
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
