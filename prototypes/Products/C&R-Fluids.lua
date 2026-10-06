-- Chain 1 - Basic Metallurgy -> Ore Washing
-- Chain 2 - Fluid Metallurgy/Casting
data:extend({
-- Recipes
	{-- Pressurized Water R1
		type = "recipe",
		name = "pressurized-water-r1",
		icon = "__RExtended__/graphics/icons/CR/pressurized-water-r1.png", 
		icon_size = 32,
		energy_required = 1,
		enabled = false,
		ingredients = {{type = "fluid", name="water" , amount = 100}},
		results = {{type="fluid", name="pressurized-water-r1", amount=50}},
		categories = {"red-compressing"},
		subgroup = "fluid-products",
		order = "z-a-b"
	},
	{-- Molten Iron
		type = "recipe",
		name = "molten-iron-r1",
		icon = "__RExtended__/graphics/icons/CR/molten-iron-r1.png",
		icon_size = 32,
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
		icon = "__RExtended__/graphics/icons/CR/molten-copper-r1.png",
		icon_size = 32,
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
		icon = "__RExtended__/graphics/icons/CR/molten-steel-r1.png",
		icon_size = 32,
		energy_required = 1,
		enabled = false,
		ingredients = {{type = "item", name = "clean-steel-r1", amount = 1}},
		results = {{type="fluid", name="molten-steel-r1", amount=50}},
		categories = {"red-forge-chamber"},
		subgroup = "plate-products",
		order = "b-b-c"
	},
-- Items
	{-- Pressurized Water
		type = "fluid",
		name = "pressurized-water-r1",
		icon = "__RExtended__/graphics/icons/CR/pressurized-water-r1.png",
		icon_size = 32,
		default_temperature = 23,
		max_temperature = 100,
		heat_capacity = "0.1kJ",
		base_color = { r=189, g=189, b=189 },
		flow_color = { r=130, g=130, b=130 },
		pressure_to_speed_ratio = 0.460,
		flow_to_energy_ratio = 0.400,
		subgroup = "fluid-products",
		order = "z-a-b"
	},
	{-- Molten Iron
		type = "fluid",
		name = "molten-iron-r1",
		icon = "__RExtended__/graphics/icons/CR/molten-iron-r1.png",
		icon_size = 32,
		default_temperature = 110,
		max_temperature = 150,
		heat_capacity = "1kJ",
		base_color = { r=20, g=23, b=62 },
		flow_color = { r=65, g=68, b=109 },
		pressure_to_speed_ratio = 0.200,
		flow_to_energy_ratio = 0.200,
		subgroup = "fluid-products",
		order = "z-c-a"
	},
	{-- Molten Copper
		type = "fluid",
		name = "molten-copper-r1",
		icon = "__RExtended__/graphics/icons/CR/molten-copper-r1.png",
		icon_size = 32,
		default_temperature = 110,
		max_temperature = 150,
		heat_capacity = "1kJ",
		base_color = { r=85, g=28, b=12 },
		flow_color = { r=65, g=13, b=10 },
		pressure_to_speed_ratio = 0.200,
		flow_to_energy_ratio = 0.200,
		subgroup = "fluid-products",
		order = "z-c-b"
	},
	{-- Molten Steel
		type = "fluid",
		name = "molten-steel-r1",
		icon = "__RExtended__/graphics/icons/CR/molten-steel-r1.png",
		icon_size = 32,
		default_temperature = 110,
		max_temperature = 150,
		heat_capacity = "1kJ",
		base_color = { r=85, g=28, b=12 },
		flow_color = { r=65, g=13, b=10 },
		pressure_to_speed_ratio = 0.200,
		flow_to_energy_ratio = 0.200,
		subgroup = "fluid-products",
		order = "z-c-c"
	}
})

-- Oil
data:extend({
-- Recipes
	{-- Diesel Fuel
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
-- Items
	{-- Diesel Fuel
		type = "fluid",
		name = "diesel-fuel",
		icon = "__RExtended__/graphics/icons/CR/diesel-fuel.png",
		icon_size = 32,
		default_temperature = 300,
		max_temperature = 300,
		heat_capacity = "0.2kJ",
		fuel_category = "fluid",
		fuel_value = "2MJ",
		base_color = {r = 0.8, g = 0.7, b = 0},
		flow_color = {r = 0.5, g = 0.4, b = 0},
		pressure_to_speed_ratio = 0.4,
		flow_to_energy_ratio = 0.59,
		subgroup = "fluid-products",
		order = "z-b-a"
	},
})

data:extend({
--RECIPE
	{-- Water
		type = "recipe",
		name = "water-r1",
		energy_required = 1,
		enabled = false,
		categories = {"crafting-with-fluid"},
		ingredients = {
			{type="fluid", name="water", amount=200}
		},
		results = {{type="item", name="water-r1", amount=1}},
	},
	{-- Water for the Water Condenser
		type = "recipe",
		name = "water-r1",
		energy_required = 1,
		enabled = false,
		ingredients = {},
		results = {{type="fluid", name="water", amount=600}},
		categories = {"red-water-condenser"},
		icon = "__RExtended__/graphics/icons/CR/water-r1.png",
		icon_size = 32,
		subgroup = "fluid-products",
		order = "z-a-a",
	},
	{-- Molten Coal
		type = "recipe",
		name = "molten-coal-r1",
		icon = "__RExtended__/graphics/icons/CR/molten-coal.png",
		icon_size = 32,
		energy_required = 1,
		enabled = false,
		ingredients = {{type = "item", name = "clean-coal-r1", amount = 1}},
		results = {{type="fluid", name="molten-coal-r1", amount=50}},
		categories = {"red-forge-chamber"},
		subgroup = "accumulators-products",
		order = "k-a-a",
	},
	{-- OIL Basic Heavy
		type = "recipe",
		name = "oil-basic-heavy-r1",
		icon = "__RExtended__/graphics/icons/CR/oil-basic-heavy-r1.png",
		icon_size = 32,
		categories = {"red-oil-process"},
		enabled = false,
		energy_required = 5,
		ingredients = {{type="fluid", name="crude-oil", amount=100}},
		results= {{type="fluid", name="heavy-oil", amount=45}},
		subgroup = "oil-fluid-products",
		order = "y-a-a"
	},
	{-- OIL Basic Light
		type = "recipe",
		name = "oil-basic-light-r1",
		icon = "__RExtended__/graphics/icons/CR/oil-basic-light-r1.png",
		icon_size = 32,
		categories = {"red-oil-process"},
		enabled = false,
		energy_required = 5,
		ingredients = {{type="fluid", name="crude-oil", amount=100}},
		results= {{type="fluid", name="light-oil", amount=45}},
		subgroup = "oil-fluid-products",
		order = "y-b-a"
	},
	{--OIL Advanced Heavy
		type = "recipe",
		name = "oil-advanced-heavy-r1",
		icon = "__RExtended__/graphics/icons/CR/oil-advanced-heavy-r1.png",
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
	{--OIL Advanced Light
		type = "recipe",
		name = "oil-advanced-light-r1",
		icon = "__RExtended__/graphics/icons/CR/oil-advanced-light-r1.png",
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
	{--OIL Advanced Petroleum
		type = "recipe",
		name = "oil-advanced-petroleum-r1",
		icon = "__RExtended__/graphics/icons/CR/oil-advanced-petroleum-r1.png",
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
	{--OIL Special Heavy
		type = "recipe",
		name = "oil-special-heavy-r1",
		icon = "__RExtended__/graphics/icons/CR/oil-special-heavy-r1.png",
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
	{--OIL Special Light
		type = "recipe",
		name = "oil-special-light-r1",
		icon = "__RExtended__/graphics/icons/CR/oil-special-light-r1.png",
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
	{--OIL Special Petroleum
		type = "recipe",
		name = "oil-special-petroleum-r1",
		icon = "__RExtended__/graphics/icons/CR/oil-special-petroleum-r1.png",
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
	{--OIl Special Processing
		type = "recipe",
		name = "oil-special-process-r1",
		icon = "__RExtended__/graphics/icons/CR/oil-special-r1.png",
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
	},
	{-- Enriched Petro
		type = "recipe",
		name = "enriched-petro-r1",
		icon = "__RExtended__/graphics/icons/CR/enrichedPetro.png",
		icon_size = 32,
		categories = {"red-oil-process"},
		enabled = false,
		energy_required = 5,
		ingredients = {
			{type="fluid", name="molten-coal-r1", amount=50},
			{type="fluid", name="crude-oil", amount=100}
		},
		results= {{type="fluid", name="enriched-petro-r1", amount=150}},
		subgroup = "accumulators-products",
		order = "k-a-b",
		allow_decomposition = false
	},
	{-- Lithium
		type = "recipe",
		name = "lithium-r1",
		categories = {"chemistry"},
		enabled = false,
		energy_required = 5,
		ingredients = {
			{type = "fluid", name = "enriched-petro-r1", amount = 75},
			{type = "item", name = "crystalline-silicon-r1", amount = 5}
		},
		results = {{type = "fluid", name = "lithium-r1", amount = 50, temperature = 300}}
	},
--ITEM & Fluid
	{--Water-
		type = "item",
		name = "water-r1",
		tooltip = "wftt",
		icon = "__RExtended__/graphics/Tech/Tree/C&R/water-r1.png",
		icon_size = 128,
		subgroup = "fluid-products",
		order = "z-a-b",
		stack_size = 200,
		place_as_tile = {
			result = "water",
			condition_size = 1,
			condition = { layers={water_tile=true} }
		}
	},
	{--Molten Coal-
		type = "fluid", 
		name = "molten-coal-r1", 
		icon = "__RExtended__/graphics/icons/CR/molten-coal.png", 
		icon_size = 32,
		default_temperature = 110, 
		max_temperature = 150, 
		heat_capacity = "1kJ", 
		base_color = { r=85, g=28, b=12 }, 
		flow_color = { r=65, g=13, b=10 }, 
		pressure_to_speed_ratio = 0.200, 
		flow_to_energy_ratio = 0.200, 
		subgroup = "fluid-products",
		order = "z-c-d",
	},
	{--Enriched Petro-
		type = "fluid", 
		name = "enriched-petro-r1",
		icon = "__RExtended__/graphics/icons/CR/enrichedPetro.png",
		icon_size = 32,
		default_temperature = 110, 
		max_temperature = 150, 
		heat_capacity = "1kJ", 
		base_color = { r=85, g=28, b=12 }, 
		flow_color = { r=65, g=13, b=10 }, 
		pressure_to_speed_ratio = 0.200, 
		flow_to_energy_ratio = 0.200, 
		subgroup = "oil-fluid-products",
		order = "y-d-b",
	},
	{--Lithium
		type = "fluid",
		name = "lithium-r1",
		icon = "__RExtended__/graphics/icons/CR/lithium-r1.png",
		icon_size = 32,
		default_temperature = 300,
		max_temperature = 300,
		heat_capacity = "0.2kJ",
		base_color = {r = 0.8, g = 0.7, b = 0},
		flow_color = {r = 0.5, g = 0.4, b = 0},
		pressure_to_speed_ratio = 0.200, 
		flow_to_energy_ratio = 0.200, 
		subgroup = "accumulators-products",
		order = "k-a-c",
	}
})