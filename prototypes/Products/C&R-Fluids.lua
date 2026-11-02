----------------------Components and Recipes: Fluids--------------------
local function create_item(name, icon_name, icon_size, 
    subgroup, order, default_temperature, max_temperature, heat_capacity,
    base_color, flow_color, pressure_to_speed_ratio, flow_to_energy_ratio)
    return {
        type = "fluid",
        name = name,
        icon = "__RExtended__/graphics/icons/CR_Fluids/" .. icon_name .. ".png",
        icon_size = icon_size,
        subgroup = subgroup,
        order = order,
        default_temperature = default_temperature,
        max_temperature = max_temperature,
        heat_capacity = heat_capacity,
        base_color = base_color,
        flow_color = flow_color,
        pressure_to_speed_ratio = pressure_to_speed_ratio,
        flow_to_energy_ratio = flow_to_energy_ratio
    }
end

-- Chain 1 - Basic Metallurgy -> Ore Washing
-- Chain 2 - Fluid Metallurgy/Casting
data:extend({
-- Recipes
    {-- Pressurized Water R1
        type = "recipe",
        name = "pressurized-water-r1",
        energy_required = 1,
        enabled = false,
        ingredients = {{type = "fluid", name="water" , amount = 300}},
        results = {{type="fluid", name="pressurized-water-r1", amount=50}},
        categories = {"red-compressing"}
    },
    {-- Molten Iron
        type = "recipe",
        name = "molten-iron-r1",
        energy_required = 1,
        enabled = false,
        ingredients = {{type = "item", name = "clean-iron-r1", amount = 1}},
        results = {{type="fluid", name="molten-iron-r1", amount=50}},
        categories = {"red-forge-chamber"},
        subgroup = "plate-products",
        order = "b-b-a"
    },
    {-- Molten Copper
        type = "recipe",
        name = "molten-copper-r1",
        energy_required = 1,
        enabled = false,
        ingredients = {{type = "item", name = "clean-copper-r1", amount = 1}},
        results = {{type="fluid", name="molten-copper-r1", amount=50}},
        categories = {"red-forge-chamber"},
        subgroup = "plate-products",
        order = "b-b-b"
    },
    {-- Molten Steel
        type = "recipe",
        name = "molten-steel-r1",
        energy_required = 1,
        enabled = false,
        ingredients = {{type = "item", name = "clean-steel-r1", amount = 1}},
        results = {{type="fluid", name="molten-steel-r1", amount=50}},
        categories = {"red-forge-chamber"},
        subgroup = "plate-products",
        order = "b-b-c"
    },

    create_item("pressurized-water-r1", "HR/Pressurized-Water-R1", 256,
        "fluid-products", "z-b", 23, 100, "0.1kJ",
        { r=189, g=189, b=189 },
        { r=130, g=130, b=130 }, 0.460, 0.400
    ),
    create_item("molten-iron-r1", "HR/Molten-Iron-R1", 256,
        "fluid-products", "z-c-a", 110, 150, "1kJ",
        { r=20, g=23, b=62 },
        { r=65, g=68, b=109 }, 0.200, 0.200
    ),
    create_item("molten-copper-r1", "HR/Molten-Copper-R1", 256,
        "fluid-products", "z-c-b", 110, 150, "1kJ",
        { r=85, g=28, b=12 },
        { r=65, g=13, b=10 }, 0.200, 0.200
    ),
    create_item("molten-steel-r1", "HR/Molten-Steel-R1", 256,
        "fluid-products", "z-c-c", 110, 150, "1kJ",
        { r=85, g=28, b=12 },
        { r=65, g=13, b=10 }, 0.200, 0.200
    )
})

-- Water for the Water Condenser
data:extend({
    {
        type = "recipe",
        name = "water-r1",
        icon = "__RExtended__/graphics/icons/CR_Fluids/HR/Water-R1.png",
        icon_size = 256,
        energy_required = 1,
        enabled = false,
        ingredients = {},
        results = {{type="fluid", name="water", amount=600}},
        categories = {"red-water-condenser"},
        subgroup = "fluid-products",
        order = "z-a"
    }
})

-- Chain: Diesel Fuel
data:extend({
    {-- Recipe
        type = "recipe",
        name = "diesel-fuel",
        categories = {"chemistry"},
        enabled = false,
        energy_required = 5,
        ingredients = {
            {type = "fluid", name = "petroleum-gas", amount = 20},
            {type = "fluid", name = "light-oil", amount = 20}
        },
        results = {{type = "fluid", name = "diesel-fuel", amount = 30, temperature = 300}}
    },
    create_item("diesel-fuel", "HR/Diesel-Fuel-R1", 256,
        "chemical-products-r1", "a-a-d", 300, 300, "2MJ",
        { r=0.8, g=0.7, b=0 },
        { r=0.5, g=0.4, b=0 }, 0.4, 0.59
    )
})

-- Chain: Energy Storage
data:extend({
    -- Recipes
    {-- Molten Coal
        type = "recipe",
        name = "molten-coal-r1",
        energy_required = 1,
        enabled = false,
        ingredients = {{type = "item", name = "clean-coal-r1", amount = 2}},
        results = {{type="fluid", name="molten-coal-r1", amount=50}},
        categories = {"red-forge-chamber"},
        subgroup = "accumulators-products",
        order = "k-a-a"
    },
    {-- Enriched Petroleum
        type = "recipe",
        name = "enriched-petro-r1",
        categories = {"red-oil-process"},
        enabled = false,
        allow_decomposition = false,
        energy_required = 5,
        ingredients = {
            {type="fluid", name="molten-coal-r1", amount=100},
            {type="fluid", name="crude-oil", amount=200}
        },
        results= {{type="fluid", name="enriched-petro-r1", amount=250}},
        subgroup = "accumulators-products",
        order = "k-a-b"
    },
    {-- Lithium
        type = "recipe",
        name = "lithium-r1",
        categories = {"chemistry"},
        enabled = false,
        energy_required = 5,
        ingredients = {
            {type = "fluid", name = "enriched-petro-r1", amount = 100},
            {type = "item", name = "crystalline-silicon-r1", amount = 5}
        },
        results = {{type = "fluid", name = "lithium-r1", amount = 50, temperature = 300}}
    },
    
    create_item("molten-coal-r1", "HR/Molten-Coal-R1", 256,
        "fluid-products", "z-c-d", 110, 150, "1kJ",
        { r=85, g=28, b=12 },
        { r=65, g=13, b=10 }, 0.200, 0.200
    ),
    create_item("enriched-petro-r1", "HR/Enriched-Petroleum-R1", 256,
        "oil-fluid-products", "y-d-b", 110, 150, "1kJ",
        { r=85, g=28, b=12 },
        { r=65, g=13, b=10 }, 0.200, 0.200
    ),
    create_item("lithium-r1", "HR/Lithium-R1", 256,
        "accumulators-products", "k-a-c", 300, 300, "0.2kJ",
        { r=0.8, g=0.7, b=0 },
        { r=0.5, g=0.4, b=0 }, 0.200, 0.200
    )
})

-- Chain: Oil
data:extend({
    -- Recipes
    {-- Basic Heavy
        type = "recipe",
        name = "oil-basic-heavy-r1",
        icon = "__RExtended__/graphics/icons/CR_Fluids/oil-basic-heavy-r1.png",
        icon_size = 32,
        categories = {"red-oil-process"},
        enabled = false,
        energy_required = 5,
        ingredients = {{type="fluid", name="crude-oil", amount=100}},
        results= {{type="fluid", name="heavy-oil", amount=45}},
        subgroup = "oil-fluid-products",
        order = "y-a-a"
    },
    {-- Basic Light
        type = "recipe",
        name = "oil-basic-light-r1",
        icon = "__RExtended__/graphics/icons/CR_Fluids/oil-basic-light-r1.png",
        icon_size = 32,
        categories = {"red-oil-process"},
        enabled = false,
        energy_required = 5,
        ingredients = {{type="fluid", name="crude-oil", amount=100}},
        results= {{type="fluid", name="light-oil", amount=45}},
        subgroup = "oil-fluid-products",
        order = "y-b-a"
    },
    {-- Advanced Heavy
        type = "recipe",
        name = "oil-advanced-heavy-r1",
        icon = "__RExtended__/graphics/icons/CR_Fluids/oil-advanced-heavy-r1.png",
        icon_size = 32,
        categories = {"red-oil-process"},
        enabled = false,
        energy_required = 5,
        ingredients = {
            {type="fluid", name="water", amount=100},
            {type="fluid", name="crude-oil", amount=100}
        },
        results= {{type="fluid", name="heavy-oil", amount=90}},
        subgroup = "oil-fluid-products",
        order = "y-a-b"
    },
    {-- Advanced Light
        type = "recipe",
        name = "oil-advanced-light-r1",
        icon = "__RExtended__/graphics/icons/CR_Fluids/oil-advanced-light-r1.png",
        icon_size = 32,
        categories = {"red-oil-process"},
        enabled = false,
        energy_required = 5,
        ingredients = {
            {type="fluid", name="water", amount=100},
            {type="fluid", name="crude-oil", amount=100}
        },
        results= {{type="fluid", name="light-oil", amount=90}},
        subgroup = "oil-fluid-products",
        order = "y-b-b"
    },
    {-- Advanced Petroleum
        type = "recipe",
        name = "oil-advanced-petroleum-r1",
        icon = "__RExtended__/graphics/icons/CR_Fluids/oil-advanced-petroleum-r1.png",
        icon_size = 32,
        categories = {"red-oil-process"},
        enabled = false,
        energy_required = 5,
        ingredients = {
            {type="fluid", name="water", amount=100},
            {type="fluid", name="crude-oil", amount=100}
        },
        results= {{type="fluid", name="petroleum-gas", amount=90}},
        subgroup = "oil-fluid-products",
        order = "y-c-a"
    },
    {-- Elite Heavy
        type = "recipe",
        name = "oil-special-heavy-r1",
        icon = "__RExtended__/graphics/icons/CR_Fluids/oil-special-heavy-r1.png",
        icon_size = 32,
        categories = {"red-oil-process"},
        enabled = false,
        energy_required = 5,
        ingredients = {
            {type="fluid", name="steam", amount=75},
            {type="fluid", name="crude-oil", amount=100}
        },
        results= {{type="fluid", name="heavy-oil", amount=130}},
        subgroup = "oil-fluid-products",
        order = "y-a-c",
        allow_decomposition = false
    },
    {-- Elite Light
        type = "recipe",
        name = "oil-special-light-r1",
        icon = "__RExtended__/graphics/icons/CR_Fluids/oil-special-light-r1.png",
        icon_size = 32,
        categories = {"red-oil-process"},
        enabled = false,
        energy_required = 5,
        ingredients = {
            {type="fluid", name="steam", amount=75},
            {type="fluid", name="crude-oil", amount=100}
        },
        results= {{type="fluid", name="light-oil", amount=130}},
        subgroup = "oil-fluid-products",
        order = "y-b-c",
        allow_decomposition = false
    },
    {-- Elite Petroleum
        type = "recipe",
        name = "oil-special-petroleum-r1",
        icon = "__RExtended__/graphics/icons/CR_Fluids/oil-special-petroleum-r1.png",
        icon_size = 32,
        categories = {"red-oil-process"},
        enabled = false,
        energy_required = 5,
        ingredients ={
            {type="fluid", name="steam", amount=75},
            {type="fluid", name="crude-oil", amount=100}
        },
        results= {{type="fluid", name="petroleum-gas", amount=130}},
        subgroup = "oil-fluid-products",
        order = "y-c-c",
        allow_decomposition = false
    },
    {-- Elite Processing
        type = "recipe",
        name = "oil-special-process-r1",
        icon = "__RExtended__/graphics/icons/CR_Fluids/oil-special-r1.png",
        icon_size = 32,
        categories = {"red-oil-process"},
        enabled = false,
        energy_required = 5,
        ingredients = {
            {type="fluid", name="steam", amount=100},
            {type="fluid", name="crude-oil", amount=100}
        },
        results= {
            {type="fluid", name="heavy-oil", amount=55},
            {type="fluid", name="light-oil", amount=55},
            {type="fluid", name="petroleum-gas", amount=55}
        },
        subgroup = "oil-fluid-products",
        order = "y-d-a",
        allow_decomposition = false
    }
})

if mods["quality"] then
    for _, recipe_name in ipairs({
        "pressurized-water-r1",
        "molten-iron-r1",
        "molten-copper-r1",
        "molten-steel-r1",
        "water-r1",
        "diesel-fuel",
        "molten-coal-r1",
        "enriched-petro-r1",
        "lithium-r1",
        "oil-basic-heavy-r1",
        "oil-basic-light-r1",
        "oil-advanced-heavy-r1",
        "oil-advanced-light-r1",
        "oil-advanced-petroleum-r1",
        "oil-special-heavy-r1",
        "oil-special-light-r1",
        "oil-special-petroleum-r1",
        "oil-special-process-r1"
    }) do
        data.raw.recipe[recipe_name].allow_quality = false
    end
end
