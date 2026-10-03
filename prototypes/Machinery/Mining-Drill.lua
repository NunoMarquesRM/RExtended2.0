data:extend({
	--ITEM
	{--Mining Drill R2
		type = "item",
		name = "mining-drill-r2",
		icon = "__RExtended__/graphics/icons/Machinery/Mining-Drill/mining-drill-r2.png",
		icon_size = 32,
		subgroup = "machinery-drill",
		order = "f-a",
		place_result = "mining-drill-r2",
		stack_size = 50
	},
	{--Mining Drill R3
		type = "item",
		name = "mining-drill-r3",
		icon = "__RExtended__/graphics/icons/Machinery/Mining-Drill/mining-drill-r3.png",
		icon_size = 32,
		subgroup = "machinery-drill",
		order = "f-b",
		place_result = "mining-drill-r3",
		stack_size = 50
	},
	--RECIPE
	{--Mining Drill R2
		type = "recipe",
		name = "mining-drill-r2",
		icon = "__RExtended__/graphics/icons/Machinery/Mining-Drill/mining-drill-r2.png",
		icon_size = 32,
		enabled = false,
		energy_required = 2,
		ingredients = {
			{type = "item", name = "electric-mining-drill", amount = 1},
			{type = "item", name = "copper-gear-wheel-r1", amount = 5},
			{type = "item", name = "iron-plate", amount = 10}
		},
		results = {{type="item", name="mining-drill-r2", amount=1}}
	},
	{--Mining Drill R3
		type = "recipe",
		name = "mining-drill-r3",
		icon = "__RExtended__/graphics/icons/Machinery/Mining-Drill/mining-drill-r3.png",
		icon_size = 32,
		enabled = false,
		energy_required = 2,
		ingredients = {
			{type = "item", name = "mining-drill-r2", amount = 1},
			{type = "item", name = "cable-r1", amount = 5},
			{type = "item", name = "reinforced-component-r1", amount = 10},
			{type = "item", name = "electronic-circuit", amount = 1}
		},
		results = {{type="item", name="mining-drill-r3", amount=1}}
	},
	{--Mining Drill R2
		type = "mining-drill",
		name = "mining-drill-r2",
		icon = "__RExtended__/graphics/icons/Machinery/Mining-Drill/mining-drill-r2.png",
		icon_size = 32,
		flags = {"placeable-neutral", "player-creation"},
		resource_categories = {"basic-solid"},
		minable = {mining_time = 1, result = "mining-drill-r2"},
		max_health = 320,
		corpse = "medium-remnants",
		resistances = {{type = "fire",percent = 80}},
		collision_box = {{-2.2, -2.2}, {2.2, 2.2}},
		selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
		mining_speed = 4,
		input_fluid_box = {
			production_type = "input-output",
			volume = 100,
			base_area = 1,
			pipe_connections = {{ direction = defines.direction.south, position = {0, 2} }}
		},
		working_sound = {sound = {filename = "__base__/sound/electric-mining-drill.ogg", volume = 0.8},},
		energy_source = {
			type = "electric",
			emissions = 0.04,
			usage_priority = "secondary-input"
		},
		energy_usage = "220kW",
		mining_power = 1,
		module_slots = 2,
		module_specification = {
			module_info_icon_shift = {0, 0.2},
			module_info_multi_row_initial_height_modifier = -0.3
		},
		allowed_effects = {"consumption", "speed", "productivity", "pollution"},
		graphics_set = {
			animation = {
			 	north = {
					layers = {{
						priority = "extra-high",
						filename = "__RExtended__/graphics/entity/Machinery/Mining-Drill/minidrill-r2-n.png",
						width = 360,
						height = 360,
						frame_count = 16,
						line_length = 4,
						shift = {0.1875, 0.03125},
						animation_speed = 0.5,
						run_mode = "forward-then-backward",
						scale = 0.5
					}}
				},
				east = {
					layers = {{
						priority = "extra-high",
						filename = "__RExtended__/graphics/entity/Machinery/Mining-Drill/minidrill-r2-e.png",
						width = 360,
						height = 360,
						frame_count = 16,
						line_length = 4,
						shift = {0.1875, 0.03125},
						animation_speed = 0.5,
						run_mode = "forward-then-backward",
						scale = 0.5
					}}
				},
				south = {
					layers = {{
						priority = "extra-high",
						filename = "__RExtended__/graphics/entity/Machinery/Mining-Drill/minidrill-r2-s.png",
						width = 360,
						height = 360,
						frame_count = 16,
						line_length = 4,
						shift = {0.1875, 0.03125},
						animation_speed = 0.5,
						run_mode = "forward-then-backward",
						scale = 0.5
					}}
				},
				west = {
					layers = {{
						priority = "extra-high",
						filename = "__RExtended__/graphics/entity/Machinery/Mining-Drill/minidrill-r2-w.png",
						width = 360,
						height = 360,
						frame_count = 16,
						line_length = 4,
						shift = {0.1875, 0.03125},
						animation_speed = 0.5,
						run_mode = "forward-then-backward",
						scale = 0.5
					}}
				}
			}
		},
		resource_searching_radius = 3,
		vector_to_place_result = {0, -2.75},
		radius_visualisation_picture = {
			filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
			width = 12,
			height = 12
		},
	},
	{--Mining Drill R3
		type = "mining-drill",
		name = "mining-drill-r3",
		icon = "__RExtended__/graphics/icons/Machinery/Mining-Drill/mining-drill-r3.png",
		icon_size = 32,
		flags = {"placeable-neutral", "player-creation"},
		resource_categories = {"basic-solid"},
		minable = {mining_time = 1, result = "mining-drill-r3"},
		max_health = 320,
		corpse = "medium-remnants",
		resistances = {{type = "fire",percent = 80}},
		collision_box = {{-2.2, -2.2}, {2.2, 2.2}},
		selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
		mining_speed = 15,
		input_fluid_box = {
			production_type = "input-output",
			base_area = 1,
			volume = 100,
			pipe_connections = {{ direction = defines.direction.south, position = {0, 2} }}
		},
		working_sound = {sound = {filename = "__base__/sound/electric-mining-drill.ogg", volume = 0.8},},
		energy_source = {
			type = "electric",
			emissions = 0.04,
			usage_priority = "secondary-input"
		},
		energy_usage = "750kW",
		mining_power = 1,
		module_slots = 2,
		module_specification = {
			module_info_icon_shift = {0, 0.2},
			module_info_multi_row_initial_height_modifier = -0.3
		},
		allowed_effects = {"consumption", "speed", "productivity", "pollution"},
		graphics_set = {
			animation = {
				north = {
					layers = {{
						priority = "extra-high",
						filename = "__RExtended__/graphics/entity/Machinery/Mining-Drill/minidrill-r3-n.png",
						width = 360,
						height = 360,
						frame_count = 16,
						line_length = 4,
						shift = {0.1875, 0.03125},
						animation_speed = 0.5,
						run_mode = "forward-then-backward",
						scale = 0.5
					}}
				},
				east = {
					layers = {{
						priority = "extra-high",
						filename = "__RExtended__/graphics/entity/Machinery/Mining-Drill/minidrill-r3-e.png",
						width = 360,
						height = 360,
						frame_count = 16,
						line_length = 4,
						shift = {0.1875, 0.03125},
						animation_speed = 0.5,
						run_mode = "forward-then-backward",
						scale = 0.5
					}}
				},
				south = {
					layers = {{
						priority = "extra-high",
						filename = "__RExtended__/graphics/entity/Machinery/Mining-Drill/minidrill-r3-s.png",
						width = 360,
						height = 360,
						frame_count = 16,
						line_length = 4,
						shift = {0.1875, 0.03125},
						animation_speed = 0.5,
						run_mode = "forward-then-backward",
						scale = 0.5
					}}
				},
				west = {
					layers = {{
						priority = "extra-high",
						filename = "__RExtended__/graphics/entity/Machinery/Mining-Drill/minidrill-r3-w.png",
						width = 360,
						height = 360,
						frame_count = 16,
						line_length = 4,
						shift = {0.1875, 0.03125},
						animation_speed = 0.5,
						run_mode = "forward-then-backward",
						scale = 0.5
					}}
				}
			}
		},
		resource_searching_radius = 3,
		vector_to_place_result = {0, -2.75},
		radius_visualisation_picture = {
			filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
			width = 12,
			height = 12
		}
	}
})