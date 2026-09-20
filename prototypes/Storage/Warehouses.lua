local recipe_r1 = table.deepcopy(data.raw.recipe['steel-chest'])
recipe_r1.name = "warehouse-r1"
recipe_r1.enabled = false
recipe_r1.ingredients = {
	{type = "item", name = "steel-chest", amount = 10},
	{type = "item", name = "iron-plate", amount = 25},
	{type = "item", name = "copper-plate", amount = 25}
	--{type = "item", name = "reinforced-iron-plate-r1", amount = 25},
	--{type = "item", name = "reinforced-coal-plate-r1", amount = 25}
}
recipe_r1.results = {{type="item", name="warehouse-r1", amount=1}}


local item_r1 = table.deepcopy(data.raw.item['steel-chest'])
item_r1.name = "warehouse-r1"
item_r1.icon = "__RExtended__/graphics/icons/Storage/Warehouse/Warehouse-r1.png"
item_r1.icon_size = 64
item_r1.subgroup = "machinery-lab"
item_r1.order = "g-b"
item_r1.place_result = "warehouse-r1"
item_r1.stack_size = 5


local entity_r1 = table.deepcopy(data.raw['container']['steel-chest'])
entity_r1.name = "warehouse-r1"
entity_r1.icon = "__RExtended__/graphics/icons/Storage/Warehouse/Warehouse-r1.png"
entity_r1.icon_size = 64
entity_r1.minable = {mining_time = 1, result = "warehouse-r1"}
entity_r1.max_health = 1000
entity_r1.corpse = "big-remnants"
entity_r1.collision_box = {{-2.8, -2.8}, {2.8, 2.8}}
entity_r1.selection_box = {{-3.0, -3.0}, {3.0, 3.0}}
entity_r1.drawing_box = {{-3.0, -3.0}, {3.0, 3.0}}
entity_r1.inventory_size = 5000
entity_r1.picture = {
	filename = "__RExtended__/graphics/entity/Storage/Warehouse/Warehouse-r1.png",
	priority = "high",
	width = 384,
	height = 384,
	scale = 0.5
}
entity_r1.circuit_wire_max_distance = 7.5
entity_r1.circuit_wire_connection_point = {
	shadow =
	{
		red = {2.52, 0.65},
		green = {2.01, 0.65}
	},
	wire =
	{
		red = {2.22, 0.32},
		green = {1.71, 0.32}
	}
}


data:extend({recipe_r1, item_r1, entity_r1})