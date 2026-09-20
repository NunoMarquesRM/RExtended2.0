-----------Light Pole
data:extend({
{
	type = "item",
	name = "light-pole-r1",
	icon = "__RExtended__/graphics/icons/Poles/light-pole-r1.png",
	icon_size = 32,
	place_result = "light-pole-r1",
	subgroup = "power-poles",
	order = "a-a-a",
	stack_size = 25,
},
{
	type = "recipe",
	name = "light-pole-r1",
	icon = "__RExtended__/graphics/icons/Poles/light-pole-r1.png",
	icon_size = 32,
	energy_required = 1,
	enabled = false,
	ingredients = {
		{type = "item", name = "iron-plate", amount = 5},
		--{type = "item", name = "copper-gear-wheel-r1", amount = 2},
		{type = "item", name = "copper-cable", amount = 4}
	},
	results = {{type="item", name="light-pole-r1", amount=1}}
},
{
	type = "lamp",
	name = "light-pole-r1",
	icon = "__RExtended__/graphics/icons/Poles/light-pole-r1.png",
	icon_size = 32,
	flags = {"placeable-neutral", "player-creation"},
	minable = {hardness = 0.5, mining_time = 1.0, result = "light-pole-r1"},
	max_health = 150,
	corpse = "big-remnants",	
	energy_source = {type = "electric", input_priority = "secondary", usage_priority = "secondary-input", emissions = 0.004, },
	energy_usage_per_tick = "40kW",		
	light = {intensity = 1.0, size = 250},
	circuit_wire_max_distance = 20,
	collision_box = {{-0.65, -0.65}, {0.65, 0.65}},
	selection_box = {{-1, -1}, {1, 1}},
	picture_off = {
		filename = "__RExtended__/graphics/entity/Poles/light-pole-r1-off.png",
		priority = "high",
		width = 360,
		height = 360,
		scale = 0.5,
		shift = {0.90625, -1.78125},
	},
	picture_on = {
		filename = "__RExtended__/graphics/entity/Poles/light-pole-r1-on.png",
		priority = "high",
		width = 360,
		height = 360,
		scale = 0.5,
		shift = {0.90625, -1.78125},
	},
}
})

-----------Small Pole
local item_smallPole = table.deepcopy(data.raw.item['small-electric-pole'])
item_smallPole.name = "small-pole-r1"
item_smallPole.icon = "__RExtended__/graphics/icons/Poles/small-electric-pole-r1.png"
item_smallPole.icon_size = 64 
item_smallPole.icon_mipmaps = 4
item_smallPole.subgroup = "power-poles"
item_smallPole.order = "a-a-b"
item_smallPole.place_result = "small-pole-r1"
item_smallPole.stack_size = 50


local recipe_smallPole = table.deepcopy(data.raw.recipe['small-electric-pole'])
recipe_smallPole.name = "small-pole-r1"
recipe_smallPole.energy_required = 1
recipe_smallPole.enabled = true
recipe_smallPole.ingredients = {
	{type = "item", name = "small-electric-pole", amount = 8}
}
recipe_smallPole.results = {{type="item", name="small-pole-r1", amount=2}}
recipe_smallPole.order = "a-a-b"


local entity_smallPole = table.deepcopy(data.raw['electric-pole']['small-electric-pole'])
entity_smallPole.name = "small-pole-r1"
entity_smallPole.icon = "__RExtended__/graphics/icons/Poles/small-electric-pole-r1.png"
entity_smallPole.minable = {mining_time = 0.1, result = "small-pole-r1"}
entity_smallPole.maximum_wire_distance = 9
entity_smallPole.supply_area_distance = 4
entity_smallPole.pictures = {
	layers = {
		{
			filename = "__RExtended__/graphics/entity/Poles/small-pole-r1.png",
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

data:extend({entity_smallPole, recipe_smallPole, item_smallPole})

-----------Medium Pole
local item_mediumPole = table.deepcopy(data.raw.item['medium-electric-pole'])
item_mediumPole.type = "item"
item_mediumPole.name = "medium-pole-r1"
item_mediumPole.icon = "__RExtended__/graphics/icons/Poles/medium-pole-r1.png"
item_mediumPole.icon_size = 32
item_mediumPole.subgroup = "power-poles"
item_mediumPole.order = "a-b-a"
item_mediumPole.place_result = "medium-pole-r1"
item_mediumPole.stack_size = 50

local recipe_mediumPole = table.deepcopy(data.raw.recipe['medium-electric-pole'])
recipe_mediumPole.name = "medium-pole-r1"
recipe_mediumPole.energy_required = 1.5
recipe_mediumPole.enabled = false
recipe_mediumPole.ingredients = {
	{type = "item", name = "steel-plate", amount = 2},
	{type = "item", name = "copper-plate", amount = 2},
	{type = "item", name = "medium-electric-pole", amount = 1}
}
recipe_mediumPole.results = {{type="item", name="medium-pole-r1", amount=2}}


local entity_mediumPole = table.deepcopy(data.raw['electric-pole']['medium-electric-pole'])
entity_mediumPole.name = "medium-pole-r1"
entity_mediumPole.icon = "__RExtended__/graphics/icons/Poles/medium-pole-r1.png"
entity_mediumPole.icon_size = 32
entity_mediumPole.minable = {hardness = 0.2, mining_time = 0.5, result = "medium-pole-r1"}
entity_mediumPole.max_health = 140
entity_mediumPole.collision_box = {{-0.2, -0.2}, {0.2, 0.2}}
entity_mediumPole.selection_box = {{-0.5, -0.5}, {0.5, 0.5}}
entity_mediumPole.drawing_box = {{-0.5, -1}, {0.5, 0.5}}
entity_mediumPole.maximum_wire_distance = 16
entity_mediumPole.supply_area_distance = 8
entity_mediumPole.pictures = {
	filename = "__RExtended__/graphics/entity/Poles/medium-pole-r1.png",
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

data:extend({entity_mediumPole, recipe_mediumPole, item_mediumPole})

-----------Long Pole
local item_longPole = table.deepcopy(data.raw.item['big-electric-pole'])
item_longPole.name = "long-pole-r1"
item_longPole.icon = "__RExtended__/graphics/icons/Poles/long-pole-r1.png"
item_longPole.icon_size = 32
item_longPole.subgroup = "power-poles"
item_longPole.order = "a-c-a"
item_longPole.place_result = "long-pole-r1"
item_longPole.stack_size = 50


local recipe_longPole = table.deepcopy(data.raw.recipe['big-electric-pole'])
recipe_longPole.name = "long-pole-r1"
recipe_longPole.energy_required = 1
recipe_longPole.enabled = false
recipe_longPole.ingredients = {
	{type = "item", name = "steel-plate", amount = 5},
	{type = "item", name = "iron-plate", amount = 5},
	{type = "item", name = "copper-plate", amount = 2},
	{type = "item", name = "big-electric-pole", amount = 2}
}
recipe_longPole.results = {{type="item", name="long-pole-r1", amount=1}}


local entity_longPole = table.deepcopy(data.raw['electric-pole']['big-electric-pole'])
entity_longPole.name = "long-pole-r1"
entity_longPole.icon = "__RExtended__/graphics/icons/Poles/long-pole-r1.png"
entity_longPole.icon_size = 32
entity_longPole.minable = {hardness = 0.2, mining_time = 0.5, result = "long-pole-r1"}
entity_longPole.max_health = 300
entity_longPole.collision_box = {{-0.65, -0.65}, {0.65, 0.65}}
entity_longPole.selection_box = {{-1, -1}, {1, 1}}
entity_longPole.drawing_box = {{-1, -3}, {1, 0.5}}
entity_longPole.maximum_wire_distance = 64
entity_longPole.supply_area_distance = 4
entity_longPole.pictures = {
	filename = "__RExtended__/graphics/entity/Poles/long-pole-r1.png",
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


data:extend({entity_longPole, recipe_longPole, item_longPole})

-----------Substation
local item_substation = table.deepcopy(data.raw.item['substation'])
item_substation.name = "substation-pole-r1"
item_substation.icon = "__RExtended__/graphics/icons/Poles/substation-pole-r1.png"
item_substation.icon_size = 32
item_substation.subgroup = "power-poles"
item_substation.order = "a-d-a"
item_substation.place_result = "substation-pole-r1"
item_substation.stack_size = 5


local recipe_substation = table.deepcopy(data.raw.recipe['substation'])
recipe_substation.name = "substation-pole-r1"
recipe_substation.energy_required = 1
recipe_substation.enabled = false
recipe_substation.ingredients =  {
	{type = "item", name = "iron-plate", amount = 5},
	--{type = "item", name = "copper-gear-wheel-r1", amount = 5},
	{type = "item", name = "substation", amount = 3}
}
recipe_substation.results = {{type="item", name="substation-pole-r1", amount=1}}


local entity_substation = table.deepcopy(data.raw['electric-pole']['substation'])
entity_substation.name = "substation-pole-r1"
entity_substation.icon = "__RExtended__/graphics/icons/Poles/substation-pole-r1.png"
entity_substation.icon_size = 32
entity_substation.minable = {hardness = 0.2, mining_time = 0.5, result = "substation-pole-r1"}
entity_substation.max_health = 330
entity_substation.collision_box = {{-0.65, -0.65}, {0.65, 0.65}}
entity_substation.selection_box = {{-1, -1}, {1, 1}}
entity_substation.drawing_box = {{-1, -3}, {1, 0.5}}
entity_substation.maximum_wire_distance = 64
entity_substation.supply_area_distance = 64
entity_substation.pictures = {
	filename = "__RExtended__/graphics/entity/Poles/substation-pole-r1.png",
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


data:extend({entity_substation, recipe_substation, item_substation})