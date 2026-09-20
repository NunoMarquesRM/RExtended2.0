--local battery_r1_item = table.deepcopy(data.raw.item['battery'])
--battery_r1_item.name = "battery-r1"
--battery_r1_item.icon_size = 64
--battery_r1_item.icon = "__RExtended__/graphics/icons/CR/battery-r1.png"
--battery_r1_item.subgroup = "accumulators-products"
--battery_r1_item.order = "k-a-d"
--
--local battery_r1_recipe = table.deepcopy(data.raw.recipe['battery'])
--battery_r1_recipe.name = "battery-r1"
--battery_r1_recipe.normal = {
--	energy_required = 2,
--	enabled = false,
--	ingredients = {
--		{type="fluid", name="lithium-r1", amount=20},
--		{type = "item", name = "copper-plate", amount=1}
--	},
--	results = {{type="item", name="battery-r1", amount=1}}
--}
--battery_r1_recipe.expensive = {
--	energy_required = 4,
--	enabled = false,
--	ingredients = {
--		{type="fluid", name="lithium-r1", amount=50},
--		{type = "item", name = "copper-plate", amount=3}
--	},
--	results = {{type="item", name="battery-r1", amount=1}}
--}
--
--data:extend({battery_r1_item, battery_r1_recipe})

------------- Accumulator R2
local recipe_r2 = table.deepcopy(data.raw.recipe['accumulator'])
recipe_r2.name = "accumulator-r2"
recipe_r2.ingredients = {
	{type = "item", name = "accumulator",amount=2},
	{type = "item", name = "electronic-circuit", amount = 10}
}
recipe_r2.results = {{type="item", name="accumulator-r2", amount=1}}

local item_r2 = table.deepcopy(data.raw.item['accumulator'])
item_r2.name = "accumulator-r2"
item_r2.icon = "__RExtended__/graphics/icons/Accumulator/accumulator-r2.png"
item_r2.icon_size = 32
item_r2.subgroup = "power-energy"
item_r2.order = "h-a"
item_r2.place_result = "accumulator-r2"

local r2 = table.deepcopy(data.raw['accumulator']['accumulator'])
r2.name = "accumulator-r2"
r2.icon = "__RExtended__/graphics/icons/Accumulator/accumulator-r2.png"
r2.icon_size = 32
r2.minable.result = "accumulator-r2"
r2.max_health = 250
r2.collision_box = {{-1.9, -1.9}, {1.9, 1.9}}
r2.selection_box = {{-2, -2}, {2, 2}}
r2.energy_source.buffer_capacity = "15MJ"
r2.energy_source.input_flow_limit = "900kW"
r2.energy_source.output_flow_limit = "900kW"
r2.chargable_graphics.picture = {
	filename = "__RExtended__/graphics/entity/Accumulator/R2/accumulator-idle.png",
	priority = "extra-high",
	width = 157,
	height = 244,
	shift = {0.43, -1.781}
}
r2.chargable_graphics.charge_animation = {
	filename = "__RExtended__/graphics/entity/Accumulator/R2/accumulator-charging.png",
	width = 157,
	height = 244,
	line_length = 10,
	frame_count = 40,
	shift = {0.43, -1.781},
	animation_speed = 0.2
}
r2.chargable_graphics.charge_cooldown = 30
r2.charge_light = {
	intensity = 0.3,
	size = 7,
	color = {
		r = 1.0,
		g = 1.0,
		b = 1.0
	}
}
r2.chargable_graphics.discharge_animation = {
	filename = "__RExtended__/graphics/entity/Accumulator/R2/accumulator-discharging.png",
	width = 157,
	height = 244,
	line_length = 10,
	frame_count = 40,
	shift = {0.43, -1.781},
	animation_speed = 0.2
}
r2.chargable_graphics.discharge_cooldown = 60
r2.discharge_light = {
	intensity = 0.7,
	size = 7,
	color = {
		r = 1.0,
		g = 1.0,
		b = 1.0
	}
}

data:extend({recipe_r2,item_r2,r2})

------------- Accumulator R3
local recipe_r3 = table.deepcopy(data.raw.recipe['accumulator'])
recipe_r3.name = "accumulator-r3"
recipe_r3.ingredients = {
	{type = "item", name = "accumulator-r2",amount=1},
	{type = "item", name = "iron-plate",amount=4},
	{type = "item", name = "battery",amount=5}
}
recipe_r3.results = {{type="item", name="accumulator-r3", amount=1}}

local item_r3 = table.deepcopy(data.raw.item['accumulator'])
item_r3.name = "accumulator-r3"
item_r3.icon = "__RExtended__/graphics/icons/Accumulator/accumulator-r3.png"
item_r3.icon_size = 32
item_r3.subgroup = "power-energy"
item_r3.order = "h-b"
item_r3.place_result = "accumulator-r3"

local r3 = table.deepcopy(data.raw['accumulator']['accumulator'])
r3.name = "accumulator-r3"
r3.icon = "__RExtended__/graphics/icons/Accumulator/accumulator-r3.png"
r3.icon_size = 32
r3.minable.result = "accumulator-r3"
r3.max_health = 350
r3.collision_box = {{-2.4, -2.4}, {2.4, 2.4}}
r3.selection_box = {{-2.5, -2.5}, {2.5, 2.5}}
r3.energy_source.buffer_capacity = "30MJ"
r3.energy_source.input_flow_limit = "1.5MW"
r3.energy_source.output_flow_limit = "1.5MW"
r3.chargable_graphics.picture = {
	filename = "__RExtended__/graphics/entity/Accumulator/R3/charged.png",
	priority = "extra-high",
	width = 192,
	height = 288,
	shift = util.by_pixel(16, -64),
}
r3.chargable_graphics.charge_animation = {
	filename = "__RExtended__/graphics/entity/Accumulator/R3/charging.png",
	width = 192,
	height = 288,
	line_length = 10,
	frame_count = 70,
	shift = util.by_pixel(16, -64),
	animation_speed = 0.3
}
r3.chargable_graphics.charge_cooldown = 30
r3.charge_light = {
	intensity = 0.7,
	size = 7,
	color = {
		r = 0.219,
		g = 0.835,
		b = 0.188
	}
}
r3.chargable_graphics.discharge_animation = {
	filename = "__RExtended__/graphics/entity/Accumulator/R3/discharge.png",
	width = 192,
	height = 288,
	line_length = 9,
	frame_count = 36,
	shift = util.by_pixel(16, -64),
	animation_speed = 0.3
}
r3.chargable_graphics.discharge_cooldown = 60
r3.discharge_light = {
	intensity = 0.7,
	size = 7,
	color = {
		r = 0.862,
		g = 0.117,
		b = 0.117
	}
}

data:extend({recipe_r3,item_r3,r3})