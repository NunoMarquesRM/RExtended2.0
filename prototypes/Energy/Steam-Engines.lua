function npipecovers()
	return {
		north = {
			filename = "__RExtended__/graphics/entity/Pipes/pipe-cover-north.png",
			priority = "extra-high",
			width = 128,
			height = 128,
			scale = 0.5,
		},
		east = {
			filename = "__RExtended__/graphics/entity/Pipes/clear.png",
			priority = "extra-high",
			width = 32,
			height = 32,
		},
		south = {
			filename = "__RExtended__/graphics/entity/Pipes/pipe-cover-south.png",
			priority = "extra-high",
			width = 128,
			height = 128,
			scale = 0.5,
		},
		west = {
			filename = "__RExtended__/graphics/entity/Pipes/clear.png",
			priority = "extra-high",
			width = 32,
			height = 32,
		}
	}
end

data:extend({
	{--Entity Steam Engine R2
		type = "generator",
		name = "steam-engine-r2",
		icon = "__RExtended__/graphics/icons/Energy/Steam-engines/R2.png",
		icon_size = 32,
		flags = {"placeable-neutral","player-creation"},
		minable = {mining_time = 0.3, result = "steam-engine-r2"},
		max_health = 650,
		corpse = "big-remnants",
		effectivity = 4.5,
		fluid_usage_per_tick = 30/60,--0/30
		maximum_temperature = 200,
		resistances = {{type = "fire",percent = 70}},
		collision_box = {{-1.3, -1.7}, {1.3, 1.7}},
		selection_box = {{-1.5, -2.0}, {1.5, 2.0}},
		fluid_box = {
			volume = 1000,
			base_area = 2,
			pipe_covers = npipecovers(),
			pipe_connections = {
				{flow_direction="input-output", direction = defines.direction.north, position = {0, -1.7}},
				{flow_direction="input-output", direction = defines.direction.south, position = {0, 1.7} }
			},
			production_type = "input-output",
			filter = "steam"
		},
		fluid_input = {
			name = "steam",
			amount = 0.0,
			minimum_temperature = 100.0
		},
		energy_source = {
			type = "electric",
			usage_priority = "secondary-output"
		},
		two_direction_only = true,
		pictures = {
			north = {
				animation = {
					layers = {{
						filename = "__RExtended__/graphics/entity/Energy/Steam-engine/r2-v.png",
						width = 320,
						height = 320,
						frame_count = 15,
						line_length = 5,
						shift = {0.625, 0},
						scale = 0.5
					}}
				}
			},
			east = {
				animation = {
					layers = {{
						filename = "__RExtended__/graphics/entity/Energy/Steam-engine/r2-h.png",
						width = 380,
						height = 320,
						frame_count = 15,
						line_length = 5,
						shift = {0.5625,-0.28125},
						scale = 0.5
					}}
				}
			}
		}
	},
	{--Entity Steam Engine R3
		type = "generator",
		name = "steam-engine-r3",
		icon = "__RExtended__/graphics/icons/Energy/Steam-engines/R3.png",
		icon_size = 32,
		flags = {"placeable-neutral","player-creation"},
		minable = {mining_time = 1, result = "steam-engine-r3"},
		max_health = 950,
		corpse = "big-remnants",
		effectivity = 18,
		fluid_usage_per_tick = 30/60, --0/30
		maximum_temperature = 200,
		resistances = {{type = "fire",percent = 70}},
		collision_box = {{-1.3, -1.7}, {1.3, 1.7}},
		selection_box = {{-1.5, -2.0}, {1.5, 2.0}},
		fluid_box = {
			volume = 1000,
			base_area = 3,	
			pipe_covers = npipecovers(),
			pipe_connections = {
				{flow_direction="input-output", direction = defines.direction.north, position = {0, -1.7}},
				{flow_direction="input-output", direction = defines.direction.south, position = {0, 1.7} }
			},
			production_type = "input-output",
			filter = "steam"
		},
		fluid_input = {
			name = "steam",
			amount = 0.0,
			minimum_temperature = 100.0
		},
		energy_source = {
			type = "electric",
			usage_priority = "secondary-output"
		},
		two_direction_only = true,
		pictures = {
			north = {
				animation = {
					layers = {{
						filename = "__RExtended__/graphics/entity/Energy/Steam-engine/r3-v.png",
						width = 320,
						height = 320,
						frame_count = 15,
						line_length = 5,
						shift = {0.625, 0},
						scale = 0.5,
						animation_speed=0.5
					}}
				}
			},
			east = {
				animation = {
					layers = {{
						filename = "__RExtended__/graphics/entity/Energy/Steam-engine/r3-h.png",
						width = 380,
						height = 320,
						frame_count = 15,
						line_length = 5,
						shift = {0.125,-0.28125},
						scale = 0.5,
						animation_speed=0.5
					}}
				}
			}
		}
	}
})

local recipe_sr2 = table.deepcopy(data.raw.recipe['steam-engine'])
recipe_sr2.name = "steam-engine-r2"
recipe_sr2.enabled = false
recipe_sr2.ingredients = {
	{type = "item", name = "steam-engine", amount = 3},
	{type = "item", name = "copper-gear-wheel-r1", amount = 25},
	{type = "item", name = "copper-plate", amount = 7}
}
recipe_sr2.results = {{type="item", name="steam-engine-r2", amount=1}}


local recipe_sr3 = table.deepcopy(data.raw.recipe['steam-engine'])
recipe_sr3.name = "steam-engine-r3"
recipe_sr3.enabled = false
recipe_sr3.ingredients = {
	{type = "item", name = "steam-engine-r2", amount = 2},
	{type = "item", name = "iron-gear-wheel", amount = 5},
	{type = "item", name = "iron-plate", amount = 5},
	{type = "item", name = "steel-plate", amount = 2}
}
recipe_sr3.results = {{type="item", name="steam-engine-r3", amount=1}}

data:extend({recipe_sr2,recipe_sr3})

local item_sr2 = table.deepcopy(data.raw.item['steam-engine'])
item_sr2.name = "steam-engine-r2"
item_sr2.icon = "__RExtended__/graphics/icons/Energy/Steam-engines/R2.png"
item_sr2.icon_size = 32
item_sr2.subgroup = "power-steam"
item_sr2.order = "c-a"
item_sr2.place_result = "steam-engine-r2"

local item_sr3 = table.deepcopy(data.raw.item['steam-engine'])
item_sr3.name = "steam-engine-r3"
item_sr3.icon = "__RExtended__/graphics/icons/Energy/Steam-engines/R3.png"
item_sr3.icon_size = 32
item_sr3.subgroup = "power-steam"
item_sr3.order = "c-b"
item_sr3.place_result = "steam-engine-r3"

data:extend({item_sr2,item_sr3})