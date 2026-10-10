local function create_power_pole_item(base_name, name, order, stack_size, icon_size)
    local item = table.deepcopy(data.raw.item[base_name])

    item.name = name
    item.icon = "__RExtended__/graphics/icons/Energy/Poles/" .. name .. ".png"
    item.icon_size = icon_size
    item.subgroup = "power-poles"
    item.order = order
    item.place_result = name
    item.stack_size = stack_size

    return item
end

local function create_power_pole_recipe(base_name, name, energy_required, enabled, ingredients, results)
    local recipe = table.deepcopy(data.raw.recipe[base_name])

    recipe.name = name
    recipe.energy_required = energy_required
    recipe.enabled = enabled
    recipe.ingredients = ingredients
    recipe.results = results

    return recipe
end

-- Items - base_name, name, order, stack_size, icon_size
data:extend({
    create_power_pole_item("small-electric-pole", "small-pole-r1", "a-a-b", 50, 64),
    create_power_pole_item("medium-electric-pole", "medium-pole-r1", "a-b-a", 50, 32),
    create_power_pole_item("big-electric-pole", "long-pole-r1", "a-c-a", 50, 32),
    create_power_pole_item("substation", "substation-pole-r1", "a-d-a", 5, 32)
})

-- Recipes - base_name, name, energy_required, enabled, ingredients, results
data:extend({
    create_power_pole_recipe("small-electric-pole", "small-pole-r1", 1, true,
        {{type = "item", name = "small-electric-pole", amount = 8}},
        {{type = "item", name = "small-pole-r1", amount = 2}}
    ),
    create_power_pole_recipe("medium-electric-pole", "medium-pole-r1", 1.5, false,
        {
            {type = "item", name = "steel-plate", amount = 2},
            {type = "item", name = "copper-plate", amount = 2},
            {type = "item", name = "medium-electric-pole", amount = 1}
        },
        {{type = "item", name = "medium-pole-r1", amount = 2}}
    ),
    create_power_pole_recipe("big-electric-pole", "long-pole-r1", 1, false,
        {
            {type = "item", name = "big-electric-pole", amount = 2},
            {type = "item", name = "steel-plate", amount = 5},
            {type = "item", name = "reinforced-component-r1", amount = 5}
        },
        {{type = "item", name = "long-pole-r1", amount = 1}}
    ),
    create_power_pole_recipe("substation", "substation-pole-r1", 1, false,
        {
            {type = "item", name = "substation", amount = 3},
            {type = "item", name = "electric-component-r1", amount = 2},
            {type = "item", name = "copper-gear-wheel-r1", amount = 3}
        },
        {{type = "item", name = "substation-pole-r1", amount = 1}}
    )
})

-- Entities
local function setup_power_pole_entity(entity, name, max_health, maximum_wire_distance, supply_area_distance, minable)
    entity.name = name
    entity.icon = "__RExtended__/graphics/icons/Energy/Poles/" .. name .. ".png"
    entity.icon_size = 32

    entity.max_health = max_health
    entity.maximum_wire_distance = maximum_wire_distance
    entity.supply_area_distance = supply_area_distance
    entity.minable = minable

    return entity
end

-- Small Pole
local entity_smallPole = setup_power_pole_entity(table.deepcopy(data.raw["electric-pole"]["small-electric-pole"]),
    "small-pole-r1", 100, 9, 4, {mining_time = 0.1, result = "small-pole-r1"})

    entity_smallPole.pictures = {
    layers = {
        {
            filename = "__RExtended__/graphics/entity/Energy/Poles/small-pole-r1.png",
            priority = "extra-high",
            width = 72,
            height = 220,
            direction_count = 4,
            shift = util.by_pixel(1.5, -42.5),
            scale = 0.5
        },
        {
            filename = "__base__/graphics/entity/small-electric-pole/small-electric-pole-shadow.png",
            priority = "extra-high",
            width = 256,
            height = 52,
            direction_count = 4,
            shift = util.by_pixel(51, 3),
            draw_as_shadow = true,
            scale = 0.5
        }
    }
}

-- Medium Pole
local entity_mediumPole = setup_power_pole_entity(table.deepcopy(data.raw["electric-pole"]["medium-electric-pole"]),
    "medium-pole-r1", 140, 16, 8, {hardness = 0.2, mining_time = 0.5, result = "medium-pole-r1"})

entity_mediumPole.collision_box = {{-0.2, -0.2}, {0.2, 0.2}}
entity_mediumPole.selection_box = {{-0.5, -0.5}, {0.5, 0.5}}
entity_mediumPole.drawing_box = {{-0.5, -1}, {0.5, 0.5}}
entity_mediumPole.pictures = {
    filename = "__RExtended__/graphics/entity/Energy/Poles/medium-pole-r1.png",
    priority = "high",
    width = 320,
    height = 320,
    direction_count = 1,
    shift = {1.53125, -1.90625},
    scale = 0.5
}
entity_mediumPole.connection_points = {{
    shadow = {
        copper = {3.375, -0.4375},
        green = {3.375, -0.4375},
        red = {3.375, -0.4375}
    },
    wire = {
        copper = {0, -3.125},
        green = {-0.2,-3.125},
        red = {0.2,-3.125}
    }
}}

-- Long Pole
local entity_longPole = setup_power_pole_entity( table.deepcopy(data.raw["electric-pole"]["big-electric-pole"]),
    "long-pole-r1", 300, 64, 4, {hardness = 0.2, mining_time = 0.5, result = "long-pole-r1"})

entity_longPole.collision_box = {{-0.65, -0.65}, {0.65, 0.65}}
entity_longPole.selection_box = {{-1, -1}, {1, 1}}
entity_longPole.drawing_box = {{-1, -3}, {1, 0.5}}
entity_longPole.pictures = {
    filename = "__RExtended__/graphics/entity/Energy/Poles/long-pole-r1.png",
    priority = "high",
    width = 360,
    height = 360,
    direction_count = 1,
    shift = {1.71875, -1.84375},
    scale = 0.5
}
entity_longPole.connection_points = {{
    shadow = {
        copper = {4.1875, 0},
        green = {4.1875, 0},
        red = {4.1875, 0}
    },
    wire = {
        copper = {0, -4.5},
        green = {-0.2,-4.5},
        red = {0.2,-4.5}
    }
}}

-- Substation
local entity_substation = setup_power_pole_entity( table.deepcopy(data.raw["electric-pole"]["substation"]), "substation-pole-r1",
    330, 64, 64, {hardness = 0.2, mining_time = 0.5, result = "substation-pole-r1"})

entity_substation.collision_box = {{-0.65, -0.65}, {0.65, 0.65}}
entity_substation.selection_box = {{-1, -1}, {1, 1}}
entity_substation.drawing_box = {{-1, -3}, {1, 0.5}}
entity_substation.pictures = {
    filename = "__RExtended__/graphics/entity/Energy/Poles/substation-pole-r1.png",
    priority = "high",
    width = 360,
    height = 360,
    direction_count = 1,
    shift = {1.71875, -1.84375},
    scale = 0.5
}
entity_substation.connection_points = {{
    shadow = {
        copper = {4.1875, 0},
        green = {4.1875, 0},
        red = {4.1875, 0}
    },
    wire = {
        copper = {0, -4.5},
        green = {-0.2,-4.5},
        red = {0.2,-4.5}
    }
}}

data:extend({entity_smallPole, entity_mediumPole, entity_longPole, entity_substation})

-- Light Pole
data:extend({
    {
        type = "item",
        name = "light-pole-r1",
        icon = "__RExtended__/graphics/icons/Energy/Poles/light-pole-r1.png",
        icon_size = 32,
        place_result = "light-pole-r1",
        subgroup = "power-poles",
        order = "a-a-a",
        stack_size = 25,
    },
    {
        type = "recipe",
        name = "light-pole-r1",
        icon = "__RExtended__/graphics/icons/Energy/Poles/light-pole-r1.png",
        icon_size = 32,
        energy_required = 1,
        enabled = false,
        ingredients = {
            {type = "item", name = "iron-plate", amount = 5},
            {type = "item", name = "copper-gear-wheel-r1", amount = 2},
            {type = "item", name = "copper-cable", amount = 4}
        },
        results = {{type="item", name="light-pole-r1", amount=1}}
    },
    {
        type = "lamp",
        name = "light-pole-r1",
        icon = "__RExtended__/graphics/icons/Energy/Poles/light-pole-r1.png",
        icon_size = 32,
        flags = {"placeable-neutral", "player-creation"},
        minable = {hardness = 0.5, mining_time = 1.0, result = "light-pole-r1"},
        max_health = 150,
        corpse = "big-remnants",
        energy_source = {type = "electric", input_priority = "secondary", usage_priority = "secondary-input", emissions = 0.004, },
        energy_usage_per_tick = "50kW",
        light = {intensity = 1.0, size = 250},
        circuit_wire_max_distance = 20,
        collision_box = {{-0.65, -0.65}, {0.65, 0.65}},
        selection_box = {{-1, -1}, {1, 1}},
        picture_off = {
            filename = "__RExtended__/graphics/entity/Energy/Poles/light-pole-r1-off.png",
            priority = "high",
            width = 360,
            height = 360,
            scale = 0.5,
            shift = {0.90625, -1.78125}
        },
        picture_on = {
            filename = "__RExtended__/graphics/entity/Energy/Poles/light-pole-r1-on.png",
            priority = "high",
            width = 360,
            height = 360,
            scale = 0.5,
            shift = {0.90625, -1.78125}
        }
    }
})