----------------------Components and Recipes--------------------
local function create_item(name, icon_name, icon_size, subgroup, order, stack_size)
    return {
        type = "item",
        name = name,
        icon = "__RExtended__/graphics/icons/CR/" .. icon_name .. ".png",
        icon_size = icon_size,
        subgroup = subgroup,
        order = order,
        stack_size = stack_size
    }
end

local function create_recipe(name, ingredients, results, properties)
    local recipe = {
        type = "recipe",
        name = name,
        enabled = false,
        ingredients = ingredients,
        results = results
    }

    for key, value in pairs(properties or {}) do
        recipe[key] = value
    end

    return recipe
end

-- Chain 1 - Basic Metallurgy -> Ore Washing
-- Chain 2 - Fluid Metallurgy/Casting
data:extend({
    create_item("clean-iron-r1", "Clean-Iron-R1", 256, "plate-products", "b-a-a", 100),
    create_item("clean-copper-r1", "Clean-Copper-R1", 256, "plate-products", "b-a-b", 100),
    create_item("clean-steel-r1", "Clean-Steel-R1", 256, "plate-products", "b-a-c", 100),
    create_recipe("clean-iron-r1",
        {
            {type = "item", name = "iron-ore", amount = 1},
            {type = "fluid", name = "pressurized-water-r1", amount = 20}
        },
        {{type = "item", name = "clean-iron-r1", amount = 1}},
        {
            energy_required = 2,
            categories = {"red-washer-chamber"}
        }
    ),
    create_recipe("clean-copper-r1",
        {
            {type = "item", name = "copper-ore", amount = 1},
            {type = "fluid", name = "pressurized-water-r1", amount = 20}
        },
        {{type = "item", name = "clean-copper-r1", amount = 1}},
        {
            energy_required = 2,
            categories = {"red-washer-chamber"}
        }
    ),
    create_recipe("iron-plate-r1-v1",
        {{type = "item", name = "clean-iron-r1", amount = 1}},
        {{type = "item", name = "iron-plate", amount = 3}},
        {
            icon = "__base__/graphics/icons/iron-plate.png",
            icon_size = 64,
            icon_mipmaps = 4,
            energy_required = 2,
            categories = {"smelting"},
            subgroup = "plates",
            order = "c-a"
        }
    ),
    create_recipe("iron-plate-r1-v2",
        {
            {type = "fluid", name = "pressurized-water-r1", amount = 25},
            {type = "fluid", name = "molten-iron-r1", amount = 25}
        },
        {{type = "item", name = "iron-plate", amount = 5}},
        {
            icon = "__base__/graphics/icons/iron-plate.png",
            icon_size = 64,
            icon_mipmaps = 4,
            energy_required = 1,
            categories = {"red-casting-chamber"},
            subgroup = "plates",
            order = "c-b"
        }
    ),
    create_recipe("copper-plate-r1-v1",
        {{type = "item", name = "clean-copper-r1", amount = 1}},
        {{type = "item", name = "copper-plate", amount = 3}},
        {
            icon = "__base__/graphics/icons/copper-plate.png",
            icon_size = 64,
            icon_mipmaps = 4,
            energy_required = 2,
            categories = {"smelting"},
            subgroup = "plates",
            order = "c-c"
        }
    ),
    create_recipe("copper-plate-r1-v2",
        {
            {type = "fluid", name = "pressurized-water-r1", amount = 25},
            {type = "fluid", name = "molten-copper-r1", amount = 25}
        },
        {{type = "item", name = "copper-plate", amount = 5}},
        {
            icon = "__base__/graphics/icons/copper-plate.png",
            icon_size = 64,
            icon_mipmaps = 4,
            energy_required = 1,
            categories = {"red-casting-chamber"},
            subgroup = "plates",
            order = "c-d"
        }
    ),
    create_recipe("clean-steel-r1-v1",
        {
            {type = "item", name = "iron-ore", amount = 4},
            {type = "item", name = "coal", amount = 1}
        },
        {{type = "item", name = "clean-steel-r1", amount = 1}},
        {
            icon = "__RExtended__/graphics/icons/CR/Clean-Steel-R1.png",
            icon_size = 256,
            energy_required = 3,
            categories = {"red-furnace"},
            subgroup = "plate-products",
            order = "b-a-c"
        }
    ),
    create_recipe("clean-steel-r1-v2",
        {
            {type = "item", name = "clean-iron-r1", amount = 4},
            {type = "item", name = "clean-coal-r1", amount = 1}
        },
        {{type = "item", name = "clean-steel-r1", amount = 5}},
        {
            icon = "__RExtended__/graphics/icons/CR/Clean-Steel-R1.png",
            icon_size = 256,
            energy_required = 3,
            categories = {"red-furnace"},
            subgroup = "plate-products",
            order = "b-a-d"
        }
    ),
    create_recipe("steel-plate-r1-v1",
        {{type = "item", name = "clean-steel-r1", amount = 1}},
        {{type = "item", name = "steel-plate", amount = 2}},
        {
            icon = "__base__/graphics/icons/steel-plate.png",
            icon_size = 64,
            icon_mipmaps = 4,
            energy_required = 1,
            categories = {"red-furnace"},
            subgroup = "plates",
            order = "c-e"
        }
    ),
    create_recipe("steel-plate-r1-v2",
        {
            {type = "fluid", name = "pressurized-water-r1", amount = 25},
            {type = "fluid", name = "molten-steel-r1", amount = 25}
        },
        {{type = "item", name = "steel-plate", amount = 2}},
        {
            icon = "__base__/graphics/icons/steel-plate.png",
            icon_size = 64,
            icon_mipmaps = 4,
            energy_required = 1,
            categories = {"red-casting-chamber"},
            subgroup = "plates",
            order = "c-f"
        }
    )
})

-- Glue & Cable
data:extend({
    create_item("glue-r1", "Glue-R1", 256, "electronic-products", "e-a", 500),
    create_item("cable-r1", "Cable-R1", 256, "electronic-products", "e-c", 200),
    create_recipe("glue-r1-v1",
        {
            {type = "item", name = "coal", amount = 3},
            {type = "fluid", name = "water", amount = 50}
        },
        {{type = "item", name = "glue-r1", amount = 20}},
        {
            energy_required = 2,
            categories = {"red-mixing"},
            order = "e-a"
        }
    ),
    create_recipe("glue-r1-v2",
        {
            {type = "item", name = "clean-coal-r1", amount = 2},
            {type = "fluid", name = "water", amount = 50}
        },
        {{type = "item", name = "glue-r1", amount = 40}},
        {
            energy_required = 2,
            categories = {"red-mixing"},
            order = "e-b"
        }
    ),
    create_recipe("cable-r1",
        {
            {type = "item", name = "copper-cable", amount = 2},
            {type = "item", name = "glue-r1", amount = 4}
        },
        {{type = "item", name = "cable-r1", amount = 2}},
        {
            energy_required = 0.5,
            categories = {"crafting"}
        }
    )
})

-- Chain: Reinforced Materials -> Electronic Component
data:extend({
    create_item("reinforced-component-r1", "Reinforced-Component-R1", 256, "reinforced-products", "d-a", 400),
    create_item("reinforced-iron-plate-r1", "Reinforced-Iron-Plate-R1", 256, "reinforced-products", "d-e", 200),
    create_item("reinforced-copper-plate-r1", "Reinforced-Copper-Plate-R1", 256, "reinforced-products", "d-f", 200),
    create_item("reinforced-coal-plate-r1", "Reinforced-Coal-Plate-R1", 256, "reinforced-products", "d-g", 200),
    create_item("electric-component-r1", "Electric-Component-R1", 256, "electronic-products", "e-d", 200),
    create_recipe("reinforced-component-r1",
        {
            {type = "item", name = "iron-plate", amount = 1},
            {type = "item", name = "copper-plate", amount = 1}
        },
        {{type = "item", name = "reinforced-component-r1", amount = 4}},
        {
            energy_required = 0.5,
            categories = {"crafting"}
        }
    ),
    create_recipe("reinforced-iron-plate-r1",
        {
            {type = "item", name = "iron-plate", amount = 1},
            {type = "item", name = "glue-r1", amount = 2},
            {type = "item", name = "reinforced-component-r1", amount = 2}
        },
        {{type = "item", name = "reinforced-iron-plate-r1", amount = 1}},
        {
            energy_required = 0.5,
            categories = {"crafting"}
        }
    ),
    create_recipe("reinforced-copper-plate-r1",
        {
            {type = "item", name = "copper-plate", amount = 1},
            {type = "item", name = "glue-r1", amount = 2},
            {type = "item", name = "reinforced-component-r1", amount = 2}
        },
        {{type = "item", name = "reinforced-copper-plate-r1", amount = 1}},
        {
            energy_required = 0.5,
            categories = {"crafting"}
        }
    ),
    create_recipe("reinforced-coal-plate-r1",
        {
            {type = "item", name = "coal", amount = 2},
            {type = "item", name = "iron-plate", amount = 1},
            {type = "item", name = "reinforced-component-r1", amount = 2}
        },
        {{type = "item", name = "reinforced-coal-plate-r1", amount = 1}},
        {
            energy_required = 0.5,
            categories = {"crafting"}
        }
    ),
    create_recipe("electric-component-r1",
        {
            {type = "item", name = "reinforced-iron-plate-r1", amount = 2},
            {type = "item", name = "reinforced-copper-plate-r1", amount = 2},
            {type = "item", name = "reinforced-coal-plate-r1", amount = 2},
            {type = "item", name = "cable-r1", amount = 6}
        },
        {{type = "item", name = "electric-component-r1", amount = 1}},
        {
            energy_required = 2,
            categories = {"crafting"}
        }
    )
})

-- Chain: Gears & Infused Tools
data:extend({
    create_item("copper-gear-wheel-r1", "Copper-Gear-Wheel-R1", 256, "reinforced-products", "d-b", 100),
    create_item("reinforced-gear-iron-r1", "Reinforced-Iron-Gear-R1", 256, "reinforced-products", "d-c", 200),
    create_item("reinforced-gear-copper-r1", "Reinforced-Copper-Gear-R1", 256, "reinforced-products", "d-d", 200),
    create_item("infuse-tool-r1", "Infuse-Tool-R1", 256, "reinforced-products", "d-h", 100),
    create_recipe("copper-gear-wheel-r1",
        {{type = "item", name = "copper-plate", amount = 4}},
        {{type = "item", name = "copper-gear-wheel-r1", amount = 1}},
        {
            icon = "__RExtended__/graphics/icons/CR/Copper-Gear-Wheel-R1.png",
            icon_size = 256,
            enabled = true,
            energy_required = 0.5,
            --categories = {"crafting"}
        }
    ),
    create_recipe("reinforced-gear-iron-r1",
        {
            {type = "item", name = "iron-plate", amount = 1},
            {type = "item", name = "iron-gear-wheel", amount = 2}
        },
        {{type = "item", name = "reinforced-gear-iron-r1", amount = 1}},
        {
            energy_required = 0.5,
            categories = {"crafting"}
        }
    ),
    create_recipe("reinforced-gear-copper-r1",
        {
            {type = "item", name = "copper-plate", amount = 1},
            {type = "item", name = "copper-gear-wheel-r1", amount = 2}
        },
        {{type = "item", name = "reinforced-gear-copper-r1", amount = 1}},
        {
            energy_required = 0.5,
            categories = {"crafting"}
        }
    ),
    create_recipe("infuse-tool-r1",
        {
            {type = "item", name = "reinforced-gear-iron-r1", amount = 1},
            {type = "item", name = "copper-gear-wheel-r1", amount = 2},
            {type = "item", name = "reinforced-iron-plate-r1", amount = 1},
            {type = "item", name = "reinforced-copper-plate-r1", amount = 1}
        },
        {{type = "item", name = "infuse-tool-r1", amount = 1}},
        {
            energy_required = 1,
            categories = {"crafting"}
        }
    )
})

------- Chain: Clean Coal
data:extend({
    -- Items
    {-- (R1) Clean Coal
        type = "item",
        name = "clean-coal-r1",
        icon = "__RExtended__/graphics/icons/CR/Clean-Coal-R1.png",
        icon_size = 256,
        fuel_categories = {"chemical"},
        fuel_value = "16MJ",
        subgroup = "chemical-products-r1",
        order = "a-c",
        stack_size = 250
    },
    {-- (R2) Infused Clean Coal
        type = "item",
        name = "clean-coal-r2",
        icon = "__RExtended__/graphics/icons/CR/Clean-Coal-R2.png",
        icon_size = 256,
        fuel_categories = {"chemical"},
        fuel_value = "72MJ",
        subgroup = "chemical-products-r1",
        order = "a-d",
        stack_size = 150
    },
    {-- (R3) Enriched Coal
        type = "item",
        name = "clean-coal-r3",
        icon = "__RExtended__/graphics/icons/CR/Clean-Coal-R3.png",
        icon_size = 256,
        fuel_categories = {"chemical"},
        fuel_value = "144MJ",
        subgroup = "chemical-products-r1",
        order = "a-e",
        stack_size = 100
    },
    {-- (R4) Infused Enriched Coal
        type = "item",
        name = "clean-coal-r4",
        icon = "__RExtended__/graphics/icons/CR/Clean-Coal-R4.png",
        icon_size = 256,
        fuel_categories = {"chemical"},
        fuel_value = "288MJ",
        subgroup = "chemical-products-r1",
        order = "a-f",
        stack_size = 50
    },
    create_recipe("clean-coal-r1",
        {
            {type = "item", name = "coal", amount = 2},
            {type = "fluid", name = "pressurized-water-r1", amount = 20}
        },
        {{type = "item", name = "clean-coal-r1", amount = 1}},
        {
            energy_required = 2,
            categories = {"red-washer-chamber"}
        }
    ),
    create_recipe("clean-coal-r2",
        {
            {type = "item", name = "clean-coal-r1", amount = 2},
            {type = "item", name = "infuse-tool-r1", amount = 2}
        },
        {{type = "item", name = "clean-coal-r2", amount = 1}},
        {
            energy_required = 2,
            categories = {"red-furnace"}
        }
    ),
    create_recipe("clean-coal-r3",
        {
            {type = "fluid", name = "diesel-fuel", amount = 50},
            {type = "item", name = "clean-coal-r1", amount = 2}
        },
        {{type = "item", name = "clean-coal-r3", amount = 1}},
        {
            categories = {"red-enrichment-chamber"},
            energy_required = 1
        }
    ),
    create_recipe("clean-coal-r4",
        {
            {type = "item", name = "clean-coal-r3", amount = 2},
            {type = "item", name = "infuse-tool-r2", amount = 1}
        },
        {{type = "item", name = "clean-coal-r4", amount = 2}},
        {
            categories = {"red-furnace"},
            energy_required = 4
        }
    ),
    {-- Rocket Fuel R1
        type = "recipe",
        name = "rocket-fuel-r1",
        icon = "__base__/graphics/icons/rocket-fuel.png",
        energy_required = 20,
        enabled = false,
        subgroup = "chemical-products-r1",
        order = "a-f",
        categories = {"red-enrichment-chamber"},
        ingredients = {
            {type = "item", name = "clean-coal-r1", amount = 5},
            {type = "fluid", name = "heavy-oil", amount = 25}
        },
        results = {{type = "item", name = "rocket-fuel", amount = 1}},
        crafting_machine_tint = {
            primary = {r = 1.0, g = 0.7, b = 0.0, a = 1.000},
            secondary = {r = 1.0, g = 0.7, b = 0.0, a = 1.000}
        },
        allow_productivity = true
    },
    {-- Rocket Fuel R2
        type = "recipe",
        name = "rocket-fuel-r2",
        icon = "__base__/graphics/icons/rocket-fuel.png",
        energy_required = 15,
        enabled = false,
        subgroup = "chemical-products-r1",
        order = "a-g",
        categories = {"red-enrichment-chamber"},
        ingredients = {
            {type = "item", name = "clean-coal-r2", amount = 1},
            {type = "fluid", name = "diesel-fuel", amount = 20}
        },
        results = {{type = "item", name = "rocket-fuel", amount = 2}},
        crafting_machine_tint = {
            primary = {r = 1.0, g = 0.7, b = 0.0, a = 1.000},
            secondary = {r = 1.0, g = 0.7, b = 0.0, a = 1.000}
        },
        allow_productivity = true
    },
    {-- Rocket Fuel R3
        type = "recipe",
        name = "rocket-fuel-r3",
        icon = "__base__/graphics/icons/rocket-fuel.png",
        energy_required = 10,
        enabled = false,
        subgroup = "chemical-products-r1",
        order = "a-h",
        categories = {"red-enrichment-chamber"},
        ingredients = {
            {type = "item", name = "clean-coal-r3", amount = 2}
        },
        results = {{type = "item", name = "rocket-fuel", amount = 3}},
        crafting_machine_tint = {
            primary = {r = 1.0, g = 0.7, b = 0.0, a = 1.000},
            secondary = {r = 1.0, g = 0.7, b = 0.0, a = 1.000}
        },
        allow_productivity = true
    }
})

-- Others (Wood to Coal, Plastic Bar)
data:extend({
    create_recipe("coal-r1",
        {{type = "item", name = "wood", amount = 4}},
        {{type = "item", name = "coal", amount = 1}},
        {
            categories = {"smelting"},
            energy_required = 3,
            subgroup = "chemical-products-r1",
            order = "a-a"
        }
    ),
    create_recipe("plastic-bar-r1",
        {
            {type = "item", name = "clean-coal-r1", amount = 1},
            {type = "fluid", name = "petroleum-gas", amount = 20}
        },
        {{type = "item", name = "plastic-bar", amount = 4}},
        {
            energy_required = 1,
            categories = {"chemistry"},
            subgroup = "chemical-products-r1",
            order = "a-b"
        }
    )
})

------- Chain: Solar Panels
data:extend({
    create_item("blue-quartz-r1", "Blue-Quartz-R1", 256, "energy-products", "i-a", 100),
    create_item("crystalline-silicon-r1", "Crystalline-Silicon-R1", 256, "energy-products", "i-b", 100),
    create_item("solar-cell-r1", "Solar-Cell-R1", 256, "energy-products", "i-c", 200),
    create_recipe("blue-quartz-r1",
        {
            {type = "item", name = "stone", amount = 4},
            {type = "fluid", name = "pressurized-water-r1", amount = 75}
        },
        {{type = "item", name = "blue-quartz-r1", amount = 1}},
        {
            categories = {"crafting-with-fluid"},
            energy_required = 1
        }
    ),
    create_recipe("crystalline-silicon-r1",
        {
            {type = "item", name = "blue-quartz-r1", amount = 2},
            {type = "item", name = "clean-coal-r1", amount = 1}
        },
        {{type = "item", name = "crystalline-silicon-r1", amount = 1}},
        {
            energy_required = 5,
            allow_productivity = true
        }
    ),
    create_recipe("solar-cell-r1",
        {
            {type = "item", name = "crystalline-silicon-r1", amount = 2},
            {type = "item", name = "electric-component-r1", amount = 1},
            {type = "item", name = "cable-r1", amount = 2}
        },
        {{type = "item", name = "solar-cell-r1", amount = 1}},
        {
            energy_required = 5,
            allow_productivity = true
        }
    )
})

local battery_r1_item = table.deepcopy(data.raw.item['battery'])
battery_r1_item.name = "battery-r1"
battery_r1_item.icon_size = 256
battery_r1_item.icon = "__RExtended__/graphics/icons/CR/Battery-R1.png"
battery_r1_item.subgroup = "energy-products"
battery_r1_item.order = "i-d"

local battery_r1_recipe = table.deepcopy(data.raw.recipe['battery'])
battery_r1_recipe.name = "battery-r1"
battery_r1_recipe.energy_required = 2
battery_r1_recipe.enabled = false
battery_r1_recipe.ingredients = {
    {type="fluid", name="lithium-r1", amount=25},
    {type = "item", name = "copper-plate", amount=3}
}
battery_r1_recipe.results = {{type="item", name="battery-r1", amount=1}}

data:extend({battery_r1_item, battery_r1_recipe})


------- Chain: Advanced Intermediate Products
data:extend({
    create_item("azurium-crystal-r1", "Azurium-Crystal-R1", 256, "advanced-crystals", "f-a", 50),
    create_item("apatitium-crystal-r1", "Apatitium-Crystal-R1", 256, "advanced-crystals", "f-b", 50),
    create_item("amazonium-crystal-r1", "Amazonium-Crystal-R1", 256, "advanced-crystals", "f-c", 50),
    create_item("azurium-plate-r1", "Azurium-Plate-R1", 256, "plates", "c-g", 100),
    create_item("apatitium-plate-r1", "Apatitium-Plate-R1", 256, "plates", "c-h", 100),
    create_item("amazonium-plate-r1", "Amazonium-Plate-R1", 256, "plates", "c-i", 100),
    create_item("electric-component-r2", "Electric-Component-R2", 256, "electronic-products", "e-e", 200),
    create_item("electric-component-r3", "Electric-Component-R3", 256, "electronic-products", "e-f", 200),
    create_item("fuse-r1", "Fuse-R1", 256, "electronic-products", "e-g", 200),
    create_item("fuse-r2", "Fuse-R2", 256, "electronic-products", "e-h", 200),
    create_item("fuse-r3", "Fuse-R3", 256, "electronic-products", "e-i", 200),
    create_item("infuse-tool-r2", "Infuse-Tool-R2", 256, "reinforced-products", "d-i", 100),
    create_item("machine-case-r1", "Machine-Case-R1", 256, "machine-cases", "g-a", 50),
    create_item("machine-case-r2", "Machine-Case-R2", 256, "machine-cases", "g-b", 50),
    create_item("machine-case-r3", "Machine-Case-R3", 256, "machine-cases", "g-c", 50),
    create_recipe("azurium-crystal-r1",
        {
            {type = "item", name = "blue-quartz-r1", amount = 2},
            {type = "item", name = "clean-copper-r1", amount = 1},
            {type = "fluid", name = "pressurized-water-r1", amount = 50}
        },
        {{type = "item", name = "azurium-crystal-r1", amount = 2}},
        {
            categories = {"chemistry"},
            energy_required = 8
        }
    ),
    create_recipe("azurium-plate-r1",
        {{type = "item", name = "azurium-crystal-r1", amount = 1}},
        {{type = "item", name = "azurium-plate-r1", amount = 1}},
        {
            categories = {"red-furnace"},
            energy_required = 6
        }
    ),
    create_recipe("apatitium-crystal-r1",
        {
            {type = "item", name = "azurium-crystal-r1", amount = 2},
            {type = "item", name = "clean-steel-r1", amount = 1},
            {type = "fluid", name = "sulfuric-acid", amount = 50}
        },
        {{type = "item", name = "apatitium-crystal-r1", amount = 2}},
        {
            categories = {"chemistry"},
            energy_required = 12
        }
    ),
    create_recipe("apatitium-plate-r1",
        {{type = "item", name = "apatitium-crystal-r1", amount = 1}},
        {{type = "item", name = "apatitium-plate-r1", amount = 1}},
        {
            categories = {"red-furnace"},
            energy_required = 6
        }
    ),
    create_recipe("amazonium-crystal-r1",
        {
            {type = "item", name = "apatitium-crystal-r1", amount = 2},
            {type = "fluid", name = "lithium-r1", amount = 25}
        },
        {{type = "item", name = "amazonium-crystal-r1", amount = 2}},
        {
            categories = {"chemistry"},
            energy_required = 16
        }
    ),
    create_recipe("amazonium-plate-r1",
        {{type = "item", name = "amazonium-crystal-r1", amount = 1}},
        {{type = "item", name = "amazonium-plate-r1", amount = 1}},
        {
            categories = {"red-furnace"},
            energy_required = 6
        }
    ),
    create_recipe("electric-component-r2",
        {
            {type = "item", name = "electric-component-r1", amount = 1},
            {type = "item", name = "apatitium-plate-r1", amount = 2},
            {type = "item", name = "advanced-circuit", amount = 2}
        },
        {{type = "item", name = "electric-component-r2", amount = 1}},
        {
            categories = {"crafting"},
            energy_required = 4
        }
    ),
    create_recipe("electric-component-r3",
        {
            {type = "item", name = "electric-component-r2", amount = 1},
            {type = "item", name = "amazonium-plate-r1", amount = 2},
            {type = "item", name = "processing-unit", amount = 2}
        },
        {{type = "item", name = "electric-component-r3", amount = 1}},
        {
            categories = {"crafting"},
            energy_required = 6
        }
    ),
    create_recipe("fuse-r1",
        {
            {type = "item", name = "azurium-plate-r1", amount = 1},
            {type = "item", name = "cable-r1", amount = 2},
            {type = "item", name = "electronic-circuit", amount = 1}
        },
        {{type = "item", name = "fuse-r1", amount = 2}},
        {
            categories = {"crafting"},
            energy_required = 2
        }
    ),
    create_recipe("fuse-r2",
        {
            {type = "item", name = "fuse-r1", amount = 2},
            {type = "item", name = "apatitium-plate-r1", amount = 1},
            {type = "item", name = "advanced-circuit", amount = 1}
        },
        {{type = "item", name = "fuse-r2", amount = 2}},
        {
            categories = {"crafting"},
            energy_required = 4
        }
    ),
    create_recipe("fuse-r3",
        {
            {type = "item", name = "fuse-r2", amount = 2},
            {type = "item", name = "amazonium-plate-r1", amount = 1},
            {type = "item", name = "processing-unit", amount = 1}
        },
        {{type = "item", name = "fuse-r3", amount = 2}},
        {
            categories = {"crafting"},
            energy_required = 6
        }
    ),
    create_recipe("machine-case-r1",
        {
            {type = "item", name = "azurium-plate-r1", amount = 4},
            {type = "item", name = "reinforced-iron-plate-r1", amount = 2},
            {type = "item", name = "reinforced-gear-iron-r1", amount = 2},
            {type = "item", name = "electric-component-r1", amount = 1}
        },
        {{type = "item", name = "machine-case-r1", amount = 1}},
        {
            categories = {"crafting"},
            energy_required = 4
        }
    ),
    create_recipe("machine-case-r2",
        {
            {type = "item", name = "machine-case-r1", amount = 1},
            {type = "item", name = "apatitium-plate-r1", amount = 4},
            {type = "item", name = "clean-steel-r1", amount = 2},
            {type = "item", name = "electric-component-r2", amount = 1}
        },
        {{type = "item", name = "machine-case-r2", amount = 1}},
        {
            categories = {"crafting"},
            energy_required = 6
        }
    ),
    create_recipe("machine-case-r3",
        {
            {type = "item", name = "machine-case-r2", amount = 1},
            {type = "item", name = "amazonium-plate-r1", amount = 4},
            {type = "item", name = "processing-unit", amount = 2},
            {type = "item", name = "electric-component-r3", amount = 1}
        },
        {{type = "item", name = "machine-case-r3", amount = 1}},
        {
            categories = {"crafting"},
            energy_required = 8
        }
    ),
    create_recipe("infuse-tool-r2",
        {
            {type = "item", name = "infuse-tool-r1", amount = 1},
            {type = "item", name = "amazonium-crystal-r1", amount = 1},
            {type = "item", name = "electric-component-r3", amount = 1},
            {type = "item", name = "fuse-r2", amount = 2}
        },
        {{type = "item", name = "infuse-tool-r2", amount = 1}},
        {
            categories = {"crafting"},
            energy_required = 10
        }
    )
})
