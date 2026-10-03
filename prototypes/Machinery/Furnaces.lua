local item_stone_r2 = table.deepcopy(data.raw.item['stone-furnace'])
item_stone_r2.name = "electric-stone-furnace"
item_stone_r2.icon = "__RExtended__/graphics/icons/Machinery/Furnaces/stone-furnace-r2.png"
item_stone_r2.icon_size = 32
item_stone_r2.subgroup = "machinery-formation"
item_stone_r2.order = "d-c-a"
item_stone_r2.place_result = "electric-stone-furnace"

local recipe_stone_r2 = table.deepcopy(data.raw.recipe['stone-furnace'])
recipe_stone_r2.name = "electric-stone-furnace"
recipe_stone_r2.ingredients = {
	{type = "item", name = "stone-furnace", amount = 2},
	{type = "item", name = "electronic-circuit", amount = 2}
}
recipe_stone_r2.enabled = false
recipe_stone_r2.results = {{type="item", name="electric-stone-furnace", amount=1}}

local stone_r2 = table.deepcopy(data.raw['furnace']['stone-furnace'])
stone_r2.name = "electric-stone-furnace"
stone_r2.icon = "__RExtended__/graphics/icons/Machinery/Furnaces/stone-furnace-r2.png"
stone_r2.icon_size = 32
stone_r2.minable.result = "electric-stone-furnace"
stone_r2.fast_replaceable_group = "furnace"
stone_r2.max_health = 250
stone_r2.crafting_speed = 2
stone_r2.energy_usage = "250kW"
stone_r2.energy_source = {
	type = "electric",
	usage_priority = "secondary-input",
	emissions = 0.005
}
stone_r2.graphics_set = {
	animation = { layers = {{
		filename = "__RExtended__/graphics/entity/Machinery/Furnaces/electric-stone-furnace/r2.png",
		priority = "extra-high",
		width = 192,
		height = 128,
		frame_count = 1,
		shift = {0.46875, 0 },
		scale = 0.5,
	}}},
	working_visualisations = {{
		north_position = { 0.078125, 0.5234375},
		west_position = { 0.078125, 0.5234375},
		south_position = { 0.078125, 0.5234375},
		east_position = { 0.078125, 0.5234375},
		animation = {
			filename = "__RExtended__/graphics/entity/Machinery/Furnaces/electric-stone-furnace/r2-fire.png",
			width = 23,
			height = 38,
			frame_count = 12,
			shift = {-0.125, 0.05 }
		}
	}}
}


data:extend({item_stone_r2,recipe_stone_r2,stone_r2})

local item_steel_r2 = table.deepcopy(data.raw.item['steel-furnace'])
item_steel_r2.name = "electric-steel-furnace"
item_steel_r2.icon = "__RExtended__/graphics/icons/Machinery/Furnaces/steel-furnace-r2.png"
item_steel_r2.icon_size = 32
item_steel_r2.subgroup = "machinery-formation"
item_steel_r2.order = "d-d-a"
item_steel_r2.place_result = "electric-steel-furnace"

local recipe_steel_r2 = table.deepcopy(data.raw.recipe['steel-furnace'])
recipe_steel_r2.name = "electric-steel-furnace"
recipe_steel_r2.ingredients = {
	{type = "item", name = "steel-furnace", amount = 2},
	{type = "item", name = "electronic-circuit", amount = 5}
	--{type = "item", name = "copper-gear-wheel-r1", amount = 1}
}
recipe_steel_r2.enabled = false
recipe_steel_r2.results = {{type="item", name="electric-steel-furnace", amount=1}}

data:extend({item_steel_r2, recipe_steel_r2,
	{
		type = "furnace",
		name = "electric-steel-furnace",
		icon = "__RExtended__/graphics/icons/Machinery/Furnaces/steel-furnace-r2.png",
		icon_size = 32,
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		minable = {mining_time = 1, result = "electric-steel-furnace"},
		max_health = 400,
		corpse = "medium-remnants",
		resistances = {{type = "fire",percent = 80}},
		open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
		close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
		module_slots = 3,
		allowed_effects = {"consumption", "speed", "productivity", "pollution"},
		working_sound = { sound = { filename = "__base__/sound/furnace.ogg" }},
		resistances = {{ type = "fire", percent = 80 }},
		collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
		selection_box = {{-0.8, -1}, {0.8, 1}},
		crafting_categories = {"smelting"},
		energy_usage = "350kW",
		result_inventory_size = 1,
		source_inventory_size = 1,
		crafting_speed = 4,
		energy_source = {
			type = "electric",
			usage_priority = "secondary-input",
			emissions_per_minute = { pollution = 0.005 }
		},
		graphics_set = {
			animation = {
				filename = "__RExtended__/graphics/entity/Machinery/Furnaces/electric-steel-furnace/r2.png",
				priority = "extra-high",
				width = 192,
				height = 192,
				frame_count = 8,
				shift = {0.5, -0.375},
				scale = 0.5
			},
		  	working_visualisations = {{
				north_position = { 0.078125, 0.5234375},
				west_position = { 0.078125, 0.5234375},
				south_position = { 0.078125, 0.5234375},
				east_position = { 0.078125, 0.5234375},
				animation = {
					filename = "__RExtended__/graphics/entity/Machinery/Furnaces/electric-steel-furnace/r2-fire.png",
					priority = "extra-high",
					width = 8,
					height = 11,
					frame_count = 12,
					shift = {-0.1, 0.25}
				}
			}}
		},
		fast_replaceable_group = "furnace",
		effect_receiver = { uses_module_effects = true, uses_beacon_effects = true, uses_surface_effects = true }
	}
})