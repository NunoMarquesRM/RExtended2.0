-- --------------------Components and Recipes--------------------
-- Chain 1 - Basic Metallurgy -> Ore Washing
-- Chain 2 - Fluid Metallurgy/Casting
data:extend({
-- Recipes
    {-- Clean Iron R1
        type = "recipe",
        name = "clean-iron-r1",
        energy_required = 2,
        enabled = false,
        ingredients = {
            {type = "item", name = "iron-ore", amount = 1},
            {type = "fluid", name ="pressurized-water-r1" , amount = 20}
        },
        results = {{type="item", name="clean-iron-r1", amount=1}},
        categories = {"red-washer-chamber"}
    },
    {-- Clean Copper R1
        type = "recipe",
        name = "clean-copper-r1",
        energy_required = 2,
        enabled = false,
        ingredients = {
            {type = "item", name = "copper-ore", amount = 1},
            {type = "fluid", name ="pressurized-water-r1" , amount = 20}
        },
        results = {{type="item", name="clean-copper-r1", amount=1}},
        categories = {"red-washer-chamber"}
    },
    {-- Clean Coal R1
        type = "recipe",
        name = "clean-coal-r1",
        energy_required = 2,
        enabled = false,
        ingredients = {
            {type = "item", name = "coal", amount = 2},
            {type = "fluid", name ="pressurized-water-r1" , amount = 20}
        },
        results = {{type="item", name="clean-coal-r1", amount=1}},
        categories = {"red-washer-chamber"}
    },
    {-- Iron Plate v1
        type = "recipe",
        name = "iron-plate-r1-v1",
        icon = "__base__/graphics/icons/iron-plate.png",
        icon_size = 64,
        icon_mipmaps = 4,
        energy_required = 2,
        enabled = false,
        ingredients = {{type="item", name="clean-iron-r1", amount=1}},
        results = {{type="item", name="iron-plate", amount=3}},
        categories = {"smelting"},
        subgroup = "plates",
        order = "c-a-a"
    },
    {-- Iron Plate v2
        type = "recipe",
        name = "iron-plate-r1-v2",
        icon = "__base__/graphics/icons/iron-plate.png",
        icon_size = 64,
        icon_mipmaps = 4,
        energy_required = 1,
        enabled = false,
        ingredients = {
            {type = "fluid", name ="pressurized-water-r1", amount = 25},
            {type = "fluid", name ="molten-iron-r1", amount = 25}
        },
        results = {{type="item", name="iron-plate", amount=5}},
        categories = {"red-casting-chamber"},
        subgroup = "plates",
        order = "c-a-b"
    },
    {-- Copper Plate v1
        type = "recipe",
        name = "copper-plate-r1-v1",
        icon = "__base__/graphics/icons/copper-plate.png",
        icon_size = 64,
        icon_mipmaps = 4,
        energy_required = 2,
        enabled = false,
        ingredients = {{type="item", name="clean-copper-r1", amount=1}},
        results = {{type="item", name="copper-plate", amount=3}},
        categories = {"smelting"},
        subgroup = "plates",
        order = "c-a-c"
    },
    {-- Copper Plate v2
        type = "recipe",
        name = "copper-plate-r1-v2",
        icon = "__base__/graphics/icons/copper-plate.png",
        icon_size = 64,
        icon_mipmaps = 4,
        energy_required = 1,
        enabled = false,
        ingredients = {
            {type = "fluid", name ="pressurized-water-r1" , amount = 25},
            {type = "fluid", name ="molten-copper-r1" , amount = 25}
        },
        results = {{type="item", name="copper-plate", amount=5}},
        categories = {"red-casting-chamber"},
        subgroup = "plates",
        order = "c-a-d"
    },
    {-- Clean Steel v1
        type = "recipe",
        name = "clean-steel-r1-v1",
        icon = "__RExtended__/graphics/icons/CR/clean-steel-r1.png",
        icon_size = 32,
        energy_required = 3,
        enabled = false,
        ingredients = {
            {type="item", name="iron-ore", amount=4},
            {type="item", name="coal", amount=1},
        },
        results = {{type="item", name="clean-steel-r1", amount=1}},
        categories = {"red-furnace"},
        subgroup = "plate-products",
        order = "b-a-c"
    },
    {-- Clean Steel v2
        type = "recipe",
        name = "clean-steel-r1-v2",
        icon = "__RExtended__/graphics/icons/CR/clean-steel-r1.png",
        icon_size = 32,
        energy_required = 3,
        enabled = false,
        ingredients = {
            {type="item", name="clean-iron-r1", amount=4},
            {type="item", name="clean-coal-r1", amount=1},
        },
        results = {{type="item", name="clean-steel-r1", amount=5}},
        categories = {"red-furnace"},
        subgroup = "plate-products",
        order = "b-a-d"
    },
    {-- Steel Plate v1
        type = "recipe",
        name = "steel-plate-r1-v1",
        icon = "__base__/graphics/icons/steel-plate.png",
        icon_size = 64, icon_mipmaps = 4,
        energy_required = 1,
        enabled = false,
        ingredients = {{type="item", name="clean-steel-r1", amount=1}},
        results = {{type="item", name="steel-plate", amount=2}},
        categories = {"red-furnace"},
        subgroup = "plates",
        order = "c-a-e"
    },
    {-- Steel Plate v2
        type = "recipe",
        name = "steel-plate-r1-v2",
        icon = "__base__/graphics/icons/steel-plate.png",
        icon_size = 64, icon_mipmaps = 4,
        energy_required = 1,
        enabled = false,
        ingredients = {
            {type = "fluid", name ="pressurized-water-r1" , amount = 25},
            {type = "fluid", name ="molten-steel-r1" , amount = 25}
        },
        results = {{type="item", name="steel-plate", amount=2}},
        categories = {"red-casting-chamber"},
        subgroup = "plates",
        order = "c-a-f"
    },
-- Items
    {-- Clean Iron R1
        type = "item",
        name = "clean-iron-r1",
        icon = "__RExtended__/graphics/icons/CR/clean-iron-r1.png",
        icon_size = 32,
        subgroup = "plate-products",
        order = "b-a-a",
        stack_size = 100
    },
    {-- Clean Copper R1
        type = "item",
        name = "clean-copper-r1",
        icon = "__RExtended__/graphics/icons/CR/clean-copper-r1.png",
        icon_size = 32,
        subgroup = "plate-products",
        order = "b-a-b",
        stack_size = 100
    },
    {-- Clean Coal R1
        type = "item",
        name = "clean-coal-r1",
        icon = "__RExtended__/graphics/icons/CR/clean-coal-r1.png",
        icon_size = 32,
        fuel_categories = {"chemical"},
        fuel_value = "36MJ",
        subgroup = "chemical-products-r1",
        order = "a-a-b",
        stack_size = 200
    },
    {-- Clean Steel R1
        type = "item",
        name = "clean-steel-r1",
        icon = "__RExtended__/graphics/icons/CR/clean-steel-r1.png",
        icon_size = 32,
        subgroup = "plate-products",
        order = "b-a-c",
        stack_size = 100
    }
})

-- Glue & Cable
data:extend({
-- Recipes
    {-- Recipe 1
        type = "recipe",
        name = "glue-r1-v1",
        energy_required = 2,
        enabled = false,
        ingredients = {
            {type="item", name="coal", amount=3},
            {type="fluid", name ="water" , amount = 50}
        },
        results = {{type="item", name="glue-r1", amount=20}},
        categories = {"red-mixing"},
        order = "e-a"
    },
    {-- Recipe 2
        type = "recipe",
        name = "glue-r1-v2",
        energy_required = 2,
        enabled = false,
        ingredients = {
            {type="item", name="clean-coal-r1", amount=2},
            {type="fluid", name = "water" , amount = 50}
        },
        results = {{type="item", name="glue-r1", amount = 40}},
        categories = {"red-mixing"},
        order = "e-b"
    },
    {-- Cable R1
        type = "recipe",
        name = "cable-r1",
        energy_required = 0.5,
        enabled = false,
        ingredients = {
            {type = "item", name = "copper-cable", amount = 2},
            {type = "item", name = "glue-r1", amount = 4}
        },
        results = {{type="item", name="cable-r1", amount=2}},
        categories = {"crafting"}
    },
-- Items
    {-- Glue
        type = "item",
        name = "glue-r1",
        icon = "__RExtended__/graphics/icons/CR/glue-r1.png",
        icon_size = 32,
        subgroup = "electronic-products",
        stack_size = 500
    },
    {-- Cable R1
        type = "item",
        name = "cable-r1",
        icon = "__RExtended__/graphics/icons/CR/cable-r1.png",
        icon_size = 32,
        subgroup = "electronic-products",
        order = "e-c",
        stack_size = 200
    }
})

-- Chain: Reinforced Materials -> Electronic Component
data:extend({
-- Recipes
    {-- Special Component
        type = "recipe",
        name = "reinforced-component-r1",
        energy_required = 0.5,
        enabled = false,
        ingredients = {
            {type="item", name="iron-plate", amount=1},
            {type="item", name="copper-plate", amount=1},
        },
        results = {{type="item", name="reinforced-component-r1", amount=4}},
        categories = {"crafting"}
    },
    {-- Reinforced Iron Plate
        type = "recipe",
        name = "reinforced-iron-plate-r1",
        energy_required = 0.5,
        enabled = false,
        ingredients = {
            {type="item", name="iron-plate", amount=1},
            {type="item", name="glue-r1", amount=2},
            {type="item", name="reinforced-component-r1", amount=2}
        },
        results = {{type="item", name="reinforced-iron-plate-r1",amount=1}},
        categories = {"crafting"}
    },
    {-- Reinforced Copper Plate
        type = "recipe",
        name = "reinforced-copper-plate-r1",
        energy_required = 0.5,
        enabled = false,
        ingredients = {
            {type="item", name="copper-plate", amount=1},
            {type="item", name="glue-r1", amount=2},
            {type="item", name="reinforced-component-r1", amount=2}
        },
        results = {{type="item", name="reinforced-copper-plate-r1",amount=1}},
        categories = {"crafting"}
    },
    {-- Reinforced Coal Plate
        type = "recipe",
        name = "reinforced-coal-plate-r1",
        energy_required = 0.5,
        enabled = false,
        ingredients = {
            {type="item", name="coal", amount=2},
            {type="item", name="iron-plate", amount=1},
            {type="item", name="reinforced-component-r1", amount=2}
        },
        results = {{type="item", name="reinforced-coal-plate-r1", amount=1}},
        categories = {"crafting"}
    },
    {-- Electronic Component
        type = "recipe",
        name = "electric-component-r1",
        energy_required = 2,
        enabled = false,
        ingredients = {
            {type="item", name="reinforced-iron-plate-r1", amount=2},
            {type="item", name="reinforced-copper-plate-r1", amount=2},
            {type="item", name="reinforced-coal-plate-r1", amount=2},
            {type="item", name="cable-r1", amount=6}
        },
        results = {{type="item", name="electric-component-r1", amount=1}},
        categories = {"crafting"}
    },
-- Item
    {-- Special Component
        type = "item",
        name = "reinforced-component-r1",
        icon = "__RExtended__/graphics/icons/CR/reinforced-component-r1.png",
        icon_size = 32,
        subgroup = "reinforced-products",
        order = "d-a",
        stack_size = 400
    },
    {-- Reinforced Iron Plate
        type = "item",
        name = "reinforced-iron-plate-r1",
        icon = "__RExtended__/graphics/icons/CR/reinforced-iron-plate-r1.png",
        icon_size = 32,
        subgroup = "reinforced-products",
        order = "d-b",
        stack_size = 200
    }, 
    {-- Reinforced Copper Plate
        type = "item",
        name = "reinforced-copper-plate-r1",
        icon = "__RExtended__/graphics/icons/CR/reinforced-copper-plate-r1.png",
        icon_size = 32,
        subgroup = "reinforced-products",
        order = "d-c",
        stack_size = 200
    },
    {-- Reinforced Coal Plate
        type = "item",
        name = "reinforced-coal-plate-r1",
        icon = "__RExtended__/graphics/icons/CR/reinforced-coal-plate-r1.png",
        icon_size = 32,
        subgroup = "reinforced-products",
        order = "d-d",
        stack_size = 200
    },
    {-- Electronic Component
        type = "item",
        name = "electric-component-r1",
        icon = "__RExtended__/graphics/icons/CR/electric-component-r1.png",
        icon_size = 32,
        subgroup = "electronic-products",
        order = "e-d",
        stack_size = 200
    }
})

-- Chain: Gears
data:extend({
-- Recipes
    {-- Reinforced Iron Gear
        type = "recipe",
        name = "reinforced-gear-iron-r1",
        energy_required = 0.5,
        enabled = false,
        ingredients = {
            {type="item", name="iron-plate", amount=1},
            {type="item", name="iron-gear-wheel", amount=2}
        },
        results = {{type="item", name="reinforced-gear-iron-r1", amount=1}},
        categories = {"crafting"}
    },
    {-- Reinforced Copper Gear
        type = "recipe",
        name = "reinforced-gear-copper-r1",
        energy_required = 0.5,
        enabled = false,
        ingredients = {
            {type="item", name="copper-plate", amount=1},
            {type="item", name="copper-gear-wheel-r1", amount=2}
        },
        results = {{type="item", name="reinforced-gear-copper-r1", amount=1}},
        categories = {"crafting"}
    },
-- Items
    {-- Copper Gear Wheel R1
        type = "item",
        name = "copper-gear-wheel-r1",
        icon = "__RExtended__/graphics/icons/CR/copper-gear-wheel.png",
        icon_size = 32,
        subgroup = "intermediate-product",
        order = "c[copper-gear-wheel]",
        stack_size = 100
    },
    {-- Reinforced Iron Gear
        type = "item",
        name = "reinforced-gear-iron-r1",
        icon = "__RExtended__/graphics/icons/CR/reinforced-gear-iron-r1.png",
        icon_size = 32,
        subgroup = "reinforced-products",
        order = "d-a-e",
        stack_size = 200,
    },
    {-- Reinforced Copper Gear
        type = "item",
        name = "reinforced-gear-copper-r1",
        icon = "__RExtended__/graphics/icons/CR/reinforced-gear-copper-r1.png",
        icon_size = 32,
        subgroup = "reinforced-products",
        order = "d-a-f",
        stack_size = 200,
    }
})

local recipe_cgw_r1 = table.deepcopy(data.raw.recipe['iron-gear-wheel'])
recipe_cgw_r1.name = "copper-gear-wheel-r1"
recipe_cgw_r1.icon = "__RExtended__/graphics/icons/CR/copper-gear-wheel.png"
recipe_cgw_r1.icon_size = 32
recipe_cgw_r1.energy_required = 0.5
recipe_cgw_r1.enabled = true
recipe_cgw_r1.ingredients = {{type = "item", name = "copper-plate", amount=4}}
recipe_cgw_r1.results = {{type="item", name="copper-gear-wheel-r1", amount=1}}

data:extend({recipe_cgw_r1})

-- Others
data:extend({
--RECIPE
    {-- Coal (wood)
        type = "recipe",
        name = "coal-r1",
        ingredients = {{type = "item", name = "wood", amount=4}},
        enabled = false,
        subgroup = "chemical-products-r1",
        order = "a-a-a",
        results = {{type="item", name="coal", amount=1}}
    },
    {-- Plastic with Clean Coal
        type = "recipe",
        name = "plastic-bar-r1",
        energy_required = 1,
        enabled = false,
        ingredients = {
            {type="item", name="clean-coal-r1", amount=1},
            {type="fluid", name="petroleum-gas", amount=20}
        },
        results = {{type="item", name="plastic-bar", amount=4}},
        categories = {"chemistry"},
        subgroup = "chemical-products-r1",
        order = "a-a-d"
    },
    {-- Enriched Coal
        type = "recipe",
        name = "enriched-coal-r1",
        categories = {"crafting-with-fluid", "red-enrichment-chamber"},
        enabled = false,
        energy_required = 1,
        ingredients = {
            {type = "fluid", name = "diesel-fuel", amount = 50},
            {type = "item", name = "clean-coal-r1", amount = 2}
        },
        results = {{type="item", name="enriched-coal-r1", amount=1}}
    },
--ITEM
    {--Enriched Coal
        type = "item",
        name = "enriched-coal-r1",
        icon = "__RExtended__/graphics/icons/CR/enrichedCoal-r1.png",
        icon_size = 32,
        fuel_categories = {"chemical"},
        fuel_value = "144MJ",
        subgroup = "chemical-products-r1",
        order = "a-a-c",
        stack_size = 200
    }
})

------- Chain: Solar Panels
-- Blue Quartz
local recipe_quartz = table.deepcopy(data.raw.recipe['iron-plate'])
recipe_quartz.categories = {"crafting-with-fluid"}
recipe_quartz.name = "blue-quartz-r1"
recipe_quartz.energy_required = 1
recipe_quartz.enabled = false
recipe_quartz.ingredients = {
    {type = "item", name = "stone", amount = 4},
    {type = "fluid", name = "pressurized-water-r1", amount = 75}
}
recipe_quartz.results = {{type="item", name="blue-quartz-r1", amount=1}}

-- Crystalline Silicon
local recipe_silicon = table.deepcopy(data.raw.recipe['iron-plate'])
recipe_silicon.name = "crystalline-silicon-r1"
recipe_silicon.energy_required = 10
recipe_silicon.enabled = false
recipe_silicon.ingredients = {
    {type = "item", name = "blue-quartz-r1", amount = 2},
    {type = "item", name = "clean-coal-r1", amount = 1}
}
recipe_silicon.results = {{type="item", name="crystalline-silicon-r1", amount=1}}

-- Solar Cell
local recipe_solarCell = table.deepcopy(data.raw.recipe['engine-unit'])
recipe_solarCell.name = "solar-cell"
recipe_solarCell.energy_required = 5
recipe_solarCell.enabled = false
recipe_solarCell.ingredients = {
    {type = "item", name = "crystalline-silicon-r1", amount = 2},
    {type = "item", name = "electric-component-r1", amount = 1},
    {type = "item", name = "cable-r1", amount = 2}
}
recipe_solarCell.results = {{type="item", name="solar-cell", amount=1}}

data:extend({recipe_quartz, recipe_silicon, recipe_solarCell})

--Blue Quartz
local item_quartz = table.deepcopy(data.raw.item['iron-plate'])
item_quartz.name = "blue-quartz-r1"
item_quartz.icon = "__RExtended__/graphics/icons/CR/blue-quartz-r1.png"
item_quartz.icon_size = 32
item_quartz.subgroup = "solar-products"
item_quartz.order = "i-a-a"

--Crystalline Silicon
local item_silicon = table.deepcopy(data.raw.item['iron-plate'])
item_silicon.name = "crystalline-silicon-r1"
item_silicon.icon = "__RExtended__/graphics/icons/CR/crystalline-silicon-r1.png"
item_silicon.icon_size = 32
item_silicon.subgroup = "solar-products"
item_silicon.order = "i-a-b"

--Solar Cell
local item_solarCell = table.deepcopy(data.raw.item['iron-stick'])
item_solarCell.name = "solar-cell"
item_solarCell.icon = "__RExtended__/graphics/icons/CR/solar-cell-r1.png"
item_solarCell.icon_size = 32
item_solarCell.subgroup = "solar-products"
item_solarCell.order = "i-a-c"

data:extend({item_quartz, item_silicon, item_solarCell})
