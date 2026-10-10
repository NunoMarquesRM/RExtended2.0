-- Solar Panels
local function create_solar_panel_recipe(tier, ingredients)
    local recipe = table.deepcopy(data.raw.recipe["solar-panel"])

    recipe.name = "solar-panel-r" .. tier
    recipe.ingredients = ingredients
    recipe.results = {
        {type = "item", name = recipe.name, amount = 1}
    }

    return recipe
end

local function create_solar_panel_item(tier, order, stack_size)
    local item = table.deepcopy(data.raw.item["solar-panel"])

    item.name = "solar-panel-r" .. tier
    item.icon = "__RExtended__/graphics/icons/Energy/Solar-Panels/solar-panel-r" .. tier .. ".png"
    item.icon_size = 32
    item.subgroup = "power-solar"
    item.order = "g-" .. order
    item.place_result = item.name
    item.stack_size = stack_size

    return item
end

local function create_solar_panel_entity(tier, max_health, production)
    local entity = table.deepcopy(data.raw["solar-panel"]["solar-panel"])

    entity.name = "solar-panel-r" .. tier
    entity.icon = "__RExtended__/graphics/icons/Energy/Solar-Panels/solar-panel-r" .. tier .. ".png"
    entity.icon_size = 32
    entity.minable.result = entity.name
    entity.max_health = max_health
    entity.picture.layers = {
        {
            filename = "__RExtended__/graphics/entity/Energy/Solar-Panel/R" .. tier .. "/r" .. tier .. ".png",
            priority = "high",
            width = 116,
            height = 112,
            shift = util.by_pixel(-3, 3),
            hr_version = {
                filename = "__RExtended__/graphics/entity/Energy/Solar-Panel/R" .. tier .. "/hr-r" .. tier .. ".png",
                priority = "high",
                width = 230,
                height = 224,
                shift = util.by_pixel(-3, 3.5),
                scale = 0.5
            }
        },
        {
            filename = "__base__/graphics/entity/Solar-Panel/solar-panel-shadow.png",
            priority = "high",
            width = 112,
            height = 90,
            shift = util.by_pixel(10, 6),
            draw_as_shadow = true,
            hr_version = {
                filename = "__base__/graphics/entity/Solar-Panel/hr-solar-panel-shadow.png",
                priority = "high",
                width = 220,
                height = 180,
                shift = util.by_pixel(9.5, 6),
                draw_as_shadow = true,
                scale = 0.5
            }
        }
    }
    entity.production = production

    return entity
end

-- Recipes - tier, ingredients
data:extend({
    create_solar_panel_recipe(2, {
        {type = "item", name = "solar-panel", amount = 2},
        {type = "item", name = "electric-component-r1", amount = 5},
        {type = "item", name = "solar-cell", amount = 10}
    }),
    
    create_solar_panel_recipe(3, {
        {type = "item", name = "solar-panel-r2", amount = 2},
        {type = "item", name = "electronic-circuit", amount = 4},
        {type = "item", name = "solar-cell", amount = 4}
    }),
    
    create_solar_panel_recipe(4, {
        {type = "item", name = "solar-panel-r3", amount = 2},
        {type = "item", name = "advanced-circuit", amount = 2},
        {type = "item", name = "solar-cell", amount = 1}
    }),
    
    create_solar_panel_recipe(5, {
        {type = "item", name = "solar-panel-r4", amount = 2},
        {type = "item", name = "processing-unit", amount = 4}
    })
})

-- Items - tier, order, stack_size
data:extend({
    create_solar_panel_item(2, "a", 40),
    create_solar_panel_item(3, "b", 30),
    create_solar_panel_item(4, "c", 20),
    create_solar_panel_item(5, "d", 10)
})

-- Entities - tier, max_health, production
data:extend({
    create_solar_panel_entity(2, 250, "600kW"),
    create_solar_panel_entity(3, 350, "6MW"),
    create_solar_panel_entity(4, 450, "36MW"),
    create_solar_panel_entity(5, 750, "150MW")
})

-- Solar Panel Equipment R2
local recipe_spe_r2 = table.deepcopy(data.raw.recipe['solar-panel-equipment'])
recipe_spe_r2.name = "solar-panel-equipment-r2"
recipe_spe_r2.ingredients = {
    {type = "item", name = "solar-panel-equipment", amount = 1},
    {type = "item", name = "solar-cell", amount = 4},
    {type = "item", name = "advanced-circuit", amount = 2}
}
recipe_spe_r2.results = {{type = "item", name = "solar-panel-equipment-r2", amount = 1}}

local item_spe_r2 = table.deepcopy(data.raw.item['solar-panel-equipment'])
item_spe_r2.name = "solar-panel-equipment-r2"
item_spe_r2.icon = "__RExtended__/graphics/icons/Energy/Solar-Panels/solar-panel-equipment-r2.png"
item_spe_r2.icon_size = 128
item_spe_r2.place_as_equipment_result = "solar-panel-equipment-r2"
item_spe_r2.stack_size = 10
item_spe_r2.subgroup = "power-solar"
item_spe_r2.order = "g-e"

local equip_spe_r2 = table.deepcopy(data.raw['solar-panel-equipment']['solar-panel-equipment'])
equip_spe_r2.name = "solar-panel-equipment-r2"
equip_spe_r2.power = "100kW"
equip_spe_r2.sprite = {
    filename = "__RExtended__/graphics/icons/Energy/Solar-Panels/solar-panel-equipment-r2.png",
    width = 128,
    height = 128,
    priority = "medium"
}

data:extend({recipe_spe_r2, item_spe_r2, equip_spe_r2})
