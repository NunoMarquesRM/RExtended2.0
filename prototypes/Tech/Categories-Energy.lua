data:extend({
	{--Group
		type = "item-group",
		name = "power-extends",
		order = "kba-a",
		inventory_order = "g-a-a",
		icon = "__RExtended__/graphics/Tech/Categories/Energy.png",
		icon_size = 64,
	},
	{--Poles
		type = "item-subgroup",
		name = "power-poles",
		group = "power-extends",
		order = "a",
	},
	{--Boiler
		type = "item-subgroup",
		name = "power-boilers",
		group = "power-extends",
		order = "b",
	},
	{--Steam Engines
		type = "item-subgroup",
		name = "power-steam",
		group = "power-extends",
		order = "c",
	},
	{--Solar Panels
		type = "item-subgroup",
		name = "power-solar",
		group = "power-extends",
		order = "g",
	},
	{--Accumulator
		type = "item-subgroup",
		name = "power-energy",
		group = "power-extends",
		order = "h",
	},
	{--Transport Belt
		type = "item-subgroup",
		name = "power-belts",
		group = "power-extends",
		order = "i",
	}
})