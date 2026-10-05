data:extend({
--ITEM
	{-- Washer Chamber
		type = "item",
		name = "washer-chamber-r1",
		icon = "__RExtended__/graphics/icons/Machinery/Bulk/washer-chamber-r1.png",
		icon_size = 32,
		subgroup = "machinery-ore",
		order = "a-b-a",
		place_result = "washer-chamber-r1",
		stack_size = 50
	},
	{-- Water Condenser
		type = "item",
		name = "water-condenser-electric-r1",
		icon = "__RExtended__/graphics/icons/Machinery/Bulk/water-condenser-electric-r1.png",
		icon_size = 32,
		subgroup = "machinery-condenser",
		order = "c-a-a",
		place_result = "water-condenser-electric-r1",
		stack_size = 50
	},
	{-- Mixer
		type = "item",
		name = "mixer-r1",
		icon = "__RExtended__/graphics/icons/Machinery/Bulk/mixer-r1.png",
		icon_size = 32,
		subgroup = "machinery-condenser",
		order = "c-b-a",
		place_result = "mixer-r1",
		stack_size = 50
	},
	{-- Formation Furnace
		type = "item",
		name = "formation-furnace-r1",
		icon = "__RExtended__/graphics/icons/Machinery/Bulk/formation-furnace-r1.png",
		icon_size = 32,
		subgroup = "machinery-formation",
		order = "d-a-a",
		place_result = "formation-furnace-r1",
		stack_size = 50
	},
	{-- Formation Furnace Eletric
		type = "item",
		name = "formation-furnace-electric-r1",
		icon = "__RExtended__/graphics/icons/Machinery/Bulk/electric-formation-furnace-r1.png",
		icon_size = 32,
		subgroup = "machinery-formation",
		order = "d-b-a",
		place_result = "formation-furnace-electric-r1",
		stack_size = 50
	},
	{-- Cast Chamber
		type = "item",
		name = "cast-chamber-r1",
		icon = "__RExtended__/graphics/icons/Machinery/Bulk/cast-chamber-r1.png",
		icon_size = 32,
		subgroup = "machinery-ore",
		order = "a-d-a",
		place_result = "cast-chamber-r1",
		stack_size = 50
	},
	{-- Heat Forge
		type = "item",
		name = "heat-forge-chamber-r1",
		icon = "__RExtended__/graphics/icons/Machinery/Bulk/heat-forge-chamber-r1.png",
		icon_size = 32,
		subgroup = "machinery-ore",
		order = "a-c-a",
		place_result = "heat-forge-chamber-r1",
		stack_size = 50
	},
	{-- Enrichement Chamber
		type = "item",
		name = "enrichment-chamber-r1",
		icon = "__RExtended__/graphics/icons/Machinery/Bulk/enrichment-chamber-r1.png",
		icon_size = 32,
		subgroup = "machinery-condenser",
		order = "c-d-a",
		place_result = "enrichment-chamber-r1",
		stack_size = 50
	},
	{-- Beacon
		type = "item",
		name = "beacon-r1",
		icon = "__RExtended__/graphics/icons/Machinery/Bulk/beacon-r1.png",
		icon_size = 64,
		subgroup = "machinery-lab",
		order = "g-c-a",
		place_result = "beacon-r1",
		stack_size = 25
	},
--RECIPE
	{-- Washer Chamber
		type = "recipe",
		name = "washer-chamber-r1",
		energy_required = 4,
		enabled = false,
		ingredients = {
			{type = "item", name = "steel-plate", amount = 5},
			{type = "item", name = "reinforced-gear-iron-r1", amount = 3},
			{type = "item", name = "reinforced-coal-plate-r1", amount = 5},
			{type = "item", name = "assembling-machine-2", amount = 1}
		},
		results = {{type="item", name="washer-chamber-r1", amount=1}}
	},
	{-- Water Condenser
		type = "recipe",
		name = "water-condenser-electric-r1",
		energy_required = 5,
		enabled = false,
		ingredients = {
			{type = "item", name = "iron-plate", amount = 10},
			{type = "item", name = "copper-plate", amount = 10},
			{type = "item", name = "reinforced-iron-plate-r1", amount = 10},
			{type = "item", name = "cable-r1", amount = 10}
		},
		results = {{type="item", name="water-condenser-electric-r1", amount=1}}
	},
	{-- Mixer
		type = "recipe",
		name = "mixer-r1",
		energy_required = 7,
		enabled = false,
		ingredients = {
			{type = "item", name = "iron-plate", amount = 10},
			{type = "item", name = "copper-plate", amount = 10},
			{type = "item", name = "iron-stick", amount = 10},
			{type = "item", name = "reinforced-component-r1", amount = 20}
		},
		results = {{type="item", name="mixer-r1", amount=1}}
	},
	{-- Formation Furnace
		type = "recipe",
		name = "formation-furnace-r1",
		energy_required = 2,
		enabled = false,
		ingredients = {
			{type = "item", name = "reinforced-component-r1", amount = 4},
			{type = "item", name = "iron-plate", amount = 4},
			{type = "item", name = "copper-plate", amount = 4}
		},
		results = {{type="item", name="formation-furnace-r1", amount=1}}
	},
	{-- Formation Furnace Eletric
		type = "recipe",
		name = "formation-furnace-electric-r1",
		energy_required = 6,
		enabled = false,
		ingredients = {
			{type = "item", name = "reinforced-coal-plate-r1", amount = 10},
			{type = "item", name = "reinforced-iron-plate-r1", amount = 10},
			{type = "item", name = "reinforced-copper-plate-r1", amount = 10},
			{type = "item", name = "reinforced-component-r1", amount = 10},
			{type = "item", name = "cable-r1", amount = 10}
		},
		results = {{type="item", name="formation-furnace-electric-r1", amount=1}}
	},
	{-- Cast Chamber
		type = "recipe",
		name = "cast-chamber-r1",
		energy_required = 7,
		enabled = false,
		ingredients = {
			{type = "item", name = "reinforced-copper-plate-r1", amount = 4},
			{type = "item", name = "reinforced-coal-plate-r1", amount = 4},
			{type = "item", name = "pipe", amount = 10},
			{type = "item", name = "electric-component-r1", amount = 5}
		},
		results = {{type="item", name="cast-chamber-r1", amount=1}}
	},
	{-- Heat Forge
		type = "recipe",
		name = "heat-forge-chamber-r1",
		energy_required = 7,
		enabled = false,
		ingredients = {
			{type = "item", name = "reinforced-iron-plate-r1", amount = 4},
			{type = "item", name = "reinforced-coal-plate-r1", amount = 4},
			{type = "item", name = "pipe", amount = 10},
			{type = "item", name = "electric-component-r1", amount = 5}
		},
		results = {{type="item", name="heat-forge-chamber-r1", amount=1}}
	},
	{-- Enrichement Chamber
		type = "recipe",
		name = "enrichment-chamber-r1",
		energy_required = 4,
		enabled = false,
		ingredients = {
			{type = "item", name = "reinforced-coal-plate-r1", amount = 10},
			{type = "item", name = "reinforced-iron-plate-r1", amount = 10},
			{type = "item", name = "reinforced-copper-plate-r1", amount = 10},
			{type = "item", name = "electric-component-r1", amount = 10},
			{type = "item", name = "cable-r1", amount = 10}
		},
		results = {{type="item", name="enrichment-chamber-r1", amount=1}}
	},
	{-- Beacon
		type = "recipe",
		name = "beacon-r1",
		energy_required = 4,
		enabled = false,
		ingredients = {
			{type = "item", name = "reinforced-gear-iron-r1", amount = 5},
			{type = "item", name = "reinforced-gear-copper-r1", amount = 5},
			{type = "item", name = "reinforced-coal-plate-r1", amount = 5},
			{type = "item", name = "electric-component-r1", amount = 2}
		},
		results = {{type="item", name="beacon-r1", amount=1}}
	},
--ENTITY
	{-- Washer Chamber
		type = "assembling-machine",
		name = "washer-chamber-r1",
		icon = "__RExtended__/graphics/icons/Machinery/Bulk/washer-chamber-r1.png",
		icon_size = 32,
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "washer-chamber-r1"},
		max_health = 300,
		corpse = "big-remnants",
		resistances = {{type = "fire",percent = 70}},
		fluid_boxes = {
			{
				production_type = "input",
				pipe_picture = washerpipepictures(),
				pipe_covers = npipecovers(),
				base_area = 10,
				base_level = -1,
				volume = 1000,
				pipe_connections = {{
					flow_direction="input",
					direction = defines.direction.north,
					position = {0, -1}
				}},
				secondary_draw_orders = { north = -1 }
			}
		},
		fluid_boxes_off_when_no_fluid_recipe = true,
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},	
		crafting_categories = {"red-washer-chamber"},
		energy_usage = "210kW",
		ingredient_count = 4,
		crafting_speed = 1,
		energy_source = {type = "electric", input_priority = "secondary", usage_priority = "secondary-input", emissions = 0.021, },
		fast_replaceable_group = "assembling-machine",
		open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
		close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
		module_slots = 2,
		module_specification = {
			module_info_icon_shift = {0, 0.2},
			module_info_multi_row_initial_height_modifier = -0.3
		},
		allowed_effects = {"consumption", "speed", "productivity", "pollution"},
		working_sound = {
			sound = {{ filename = "__base__/sound/chemical-plant.ogg", volume = 0.8 },},
			idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
			apparent_volume = 1.5,
		},
		graphics_set = {
			animation = {
				south = { filename = "__RExtended__/graphics/entity/Machinery/Bulk/washer-chamber-r1.png", width = 256, height = 256, shift = {0.28125, -0}, scale = 0.5, frame_count = 16, line_length = 8, animation_speed=1.0, }	,							
				west  = { filename = "__RExtended__/graphics/entity/Machinery/Bulk/washer-chamber-r1.png", width = 256, height = 256, shift = {0.28125, -0}, scale = 0.5, frame_count = 16, line_length = 8, animation_speed=1.0, }	,				
				north = { filename = "__RExtended__/graphics/entity/Machinery/Bulk/washer-chamber-r1.png", width = 256, height = 256, shift = {0.28125, -0}, scale = 0.5, frame_count = 16, line_length = 8, animation_speed=1.0, }	,							
				east  = { filename = "__RExtended__/graphics/entity/Machinery/Bulk/washer-chamber-r1.png", width = 256, height = 256, shift = {0.28125, -0}, scale = 0.5, frame_count = 16, line_length = 8, animation_speed=1.0, }	,						
			}
		}
	},
	{--Water Condenser
		type = "assembling-machine",
		name = "water-condenser-electric-r1",
		icon = "__RExtended__/graphics/icons/Machinery/Bulk/water-condenser-electric-r1.png",
		icon_size = 32,
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "water-condenser-electric-r1"},
		max_health = 240,
		corpse = "big-remnants",
		resistances = {{type = "fire",percent = 80}},
		fluid_boxes = {{
			production_type = "output",
			pipe_picture = washerpipepictures(),
			pipe_covers = npipecovers(),
			volume = 1000,
			pipe_connections = { 
				{flow_direction="output", direction = defines.direction.south, position = {0, 1}},
				{flow_direction="output", direction = defines.direction.north, position = {0, -1}},
				{flow_direction="output", direction = defines.direction.east, position =  {1, 0}}, 
				{flow_direction="output", direction = defines.direction.west, position =  {-1, 0}}
			},
			secondary_draw_orders = { north = -1 }
		}},
		fluid_boxes_off_when_no_fluid_recipe = true,
		collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		crafting_categories = {"red-water-condenser"},
		energy_usage = "350kW",
		ingredient_count = 4,
		crafting_speed = 1,
		energy_source = {type = "electric", input_priority = "secondary", usage_priority = "secondary-input", emissions = 0.008, },
		fast_replaceable_group = "assembling-machine",
		open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
		close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
		module_slots = 3,
		module_specification = {
			module_info_icon_shift = {0, 0.2},
			module_info_multi_row_initial_height_modifier = -0.3
		},
		allowed_effects = {"consumption", "speed", "productivity", "pollution"},
		working_sound = {
			sound = {{ filename = "__base__/sound/chemical-plant.ogg", },},
			idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
			apparent_volume = 1.5,
		},
		graphics_set = {
			animation = { 
				filename = "__RExtended__/graphics/entity/Machinery/Bulk/water-condenser-electric-r1.png", width = 256, height = 304, shift = {0.375, -0.71875}, frame_count = 24, line_length = 8, scale = 0.5, animation_speed=0.4,
			}
		}
	},
	{-- Mixer
		type = "assembling-machine",
		name = "mixer-r1",
		icon = "__RExtended__/graphics/icons/Machinery/Bulk/mixer-r1.png",
		icon_size = 32,
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "mixer-r1"},
		max_health = 300,
		corpse = "big-remnants",
		resistances = {{type = "fire",percent = 70}},
		fluid_boxes = {
			{
				production_type = "input",
				pipe_picture = compressor_pipepictures(),
				pipe_covers = npipecovers(),
				base_area = 10,
				base_level = -1,
				volume = 1000,
				pipe_connections = {{ flow_direction="input", direction = defines.direction.north, position = {0, -1} }},
				secondary_draw_orders = { north = -1 }
			},
			{
				production_type = "output",
				pipe_picture = compressor_pipepictures(),
				pipe_covers = npipecovers(),
				base_area = 10,
				base_level = 1,
				volume = 1000,
				pipe_connections = {{ flow_direction="output", direction = defines.direction.south, position = {0, 1} }},
				secondary_draw_orders = { north = -1 }
			}
		},
		fluid_boxes_off_when_no_fluid_recipe = true,
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},	
		crafting_categories = {"red-mixing"},
		energy_usage = "200kW",
		ingredient_count = 4,
		crafting_speed = 1,
		energy_source = {type = "electric", input_priority = "secondary", usage_priority = "secondary-input", emissions = 0.005, },
		fast_replaceable_group = "assembling-machine",
		module_slots = 2,
		module_specification = {
			module_info_icon_shift = {0, 0.2},
			module_info_multi_row_initial_height_modifier = -0.3
		},
		allowed_effects = {"consumption", "speed", "productivity", "pollution"},
		working_sound = {
			sound = {{filename = "__base__/sound/chemical-plant.ogg",volume = 0.8},},
			idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
			apparent_volume = 1.5,
		},
		graphics_set = {
			animation = {
				south = { filename = "__RExtended__/graphics/entity/Machinery/Bulk/mixer-r1-v.png", width = 256, height = 256, shift = {0.3125, 0.125}, scale = 0.5, frame_count = 14, line_length = 7, animation_speed=1.0, },							
				west  = { filename = "__RExtended__/graphics/entity/Machinery/Bulk/mixer-r1-h.png", width = 256, height = 256, shift = {0.3125, 0}, scale = 0.5, frame_count = 14, line_length = 7, animation_speed=1.0, },					
				north = { filename = "__RExtended__/graphics/entity/Machinery/Bulk/mixer-r1-v.png", width = 256, height = 256, shift = {0.3125, 0.125}, scale = 0.5, frame_count = 14, line_length = 7, animation_speed=1.0, },							
				east  = { filename = "__RExtended__/graphics/entity/Machinery/Bulk/mixer-r1-h.png", width = 256, height = 256, shift = {0.3125, 0}, scale = 0.5, frame_count = 14, line_length = 7, animation_speed=1.0, },							
			}
		}
	},
	{-- Formation Furnace
		type = "assembling-machine",
		name = "formation-furnace-r1",
		icon = "__RExtended__/graphics/icons/Machinery/Bulk/formation-furnace-r1.png",
		icon_size = 32,
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		minable = {mining_time = 1, result = "formation-furnace-r1"},
		max_health = 200,
		corpse = "medium-remnants",
		open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
		close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
		working_sound = { sound = { filename = "__base__/sound/furnace.ogg" } },
		resistances = {{type = "fire",percent = 100}},
		collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
		selection_box = {{-0.8, -1}, {0.8, 1}},
		crafting_categories = {"red-furnace"},
		energy_usage = "340kW",
		ingredient_count = 2,
		crafting_speed = 1,
		energy_source = {
			type = "burner",
			effectivity = 1,
			fuel_inventory_size = 1,
			emissions = 0.007,
			smoke = { {
				name = "smoke",
				deviation = {0.1, 0.1},
				frequency = 0.5,
				position = {0, 0},
				starting_vertical_speed = 0.05
			}}
		},
		graphics_set = {
			animation = {
				filename = "__RExtended__/graphics/entity/Machinery/Bulk/formation-furnace-r1.png",
				priority = "extra-high",
				width = 96,
				height = 64,
				frame_count = 1,
				shift = {0.3, 0}
			},
			working_visualisations = {{
				north_position = { 0.078125, 0.5234375},
				west_position = { 0.078125, 0.5234375},
				south_position = { 0.078125, 0.5234375},
				east_position = { 0.078125, 0.5234375},
				animation = {
					filename = "__RExtended__/graphics/entity/Machinery/Bulk/formation-furnace-r1-fire.png",
					width = 23,
					height = 38,
					frame_count = 12,
				}
			}}
		},
		fast_replaceable_group = "furnace"
	},
	{-- Formation Furnace Eletric
		type = "assembling-machine",
		name = "formation-furnace-electric-r1",
		icon = "__RExtended__/graphics/icons/Machinery/Bulk/electric-formation-furnace-r1.png",
		icon_size = 32,
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		minable = {mining_time = 1, result = "formation-furnace-electric-r1"},
		max_health = 200,
		corpse = "medium-remnants",
		open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
		close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
		module_slots = 3,
		module_specification = {
			module_info_icon_shift = {0, 0.2},
			module_info_multi_row_initial_height_modifier = -0.3
		},
		allowed_effects = {"consumption", "speed", "productivity", "pollution"},
		working_sound = { sound = { filename = "__base__/sound/furnace.ogg" } },
		resistances = {{ type = "fire", percent = 100 }},
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},	
		crafting_categories = {"red-furnace"},
		energy_usage = "350kW",
		ingredient_count = 2,
		crafting_speed = 2,
		energy_source = {
			type = "electric",
			usage_priority = "secondary-input",
			emissions = 0.005
		},
		graphics_set = {
			animation = {
				filename = "__RExtended__/graphics/entity/Machinery/Bulk/formation-furnace-electric-r1.png",
				priority = "extra-high",
				width = 256,
				height = 256,
				frame_count = 1,
				shift = {0.46875, -0.46875 },
				scale = 0.5,
			},
			working_visualisations = {{
				north_position = { 0.078125, 0.5234375},
				west_position = { 0.078125, 0.5234375},
				south_position = { 0.078125, 0.5234375},
				east_position = { 0.078125, 0.5234375},
				animation = {
					filename = "__RExtended__/graphics/entity/Machinery/Bulk/formation-furnace-electric-r1-fire.png",
					priority = "extra-high",
					width = 12,
					height = 16,
					frame_count = 12,
					shift = {-0.11, 0.346}
				},
			}}
		},
		fast_replaceable_group = "furnace"
	},
	{-- Cast Chamber
		type = "assembling-machine",
		name = "cast-chamber-r1",
		icon = "__RExtended__/graphics/icons/Machinery/Bulk/cast-chamber-r1.png",
		icon_size = 32,
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "cast-chamber-r1"},
		max_health = 300,
		corpse = "big-remnants",
		resistances = {{ type = "fire", percent = 70}},
		fluid_boxes = {
			{
				production_type = "input",
				pipe_picture = castpipepictures(),
				pipe_covers = npipecovers(),
				base_area = 10,
				base_level = -1,
				volume = 1000,
				pipe_connections = {{
					flow_direction="input",
					direction = defines.direction.north,
					position = {1, -1}
				}},
				secondary_draw_orders = { north = -1 }
			},
			{
				production_type = "input",
				pipe_picture = castpipepictures(),
				pipe_covers = npipecovers(),
				base_area = 10,
				base_level = -1,
				volume = 1000,
				pipe_connections = {{
					flow_direction="input",
					direction = defines.direction.north,
					position = {-1, -1}
				}},
				secondary_draw_orders = { north = -1 }
			}
		},
		fluid_boxes_off_when_no_fluid_recipe = true,
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		crafting_categories = {"red-casting-chamber"},
		energy_usage = "400kW",
		ingredient_count = 4,
		crafting_speed = 1,
		energy_source = { 
			type = "electric",
			input_priority = "secondary",
			usage_priority = "secondary-input",
			emissions = 0.018,
		},
		fast_replaceable_group = "assembling-machine",
		module_slots = 2,
		module_specification = {
			module_info_icon_shift = {0, 0.2},
			module_info_multi_row_initial_height_modifier = -0.3
		},
		allowed_effects = {"consumption", "speed", "productivity", "pollution"},
		working_sound = {
			sound = {{ filename = "__base__/sound/chemical-plant.ogg", volume = 0.8 },},
			idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
			apparent_volume = 1.5,
		},
		graphics_set = {
			animation = {
				south = {
					filename = "__RExtended__/graphics/entity/Machinery/Bulk/cast-chamber-r1.png",
					width = 256,
					height = 256,
					shift = {0.28125, 0.1875},
					scale = 0.5,
					frame_count = 16,
					line_length = 8,
					animation_speed=0.25
				},
				west  = {
					filename = "__RExtended__/graphics/entity/Machinery/Bulk/cast-chamber-r1.png",
					width = 256,
					height = 256,
					shift = {0.28125, 0.1875},
					scale = 0.5,
					frame_count = 16,
					line_length = 8,
					animation_speed=0.25
				},
				north = {
					filename = "__RExtended__/graphics/entity/Machinery/Bulk/cast-chamber-r1.png",
					width = 256,
					height = 256,
					shift = {0.28125, 0.1875},
					scale = 0.5,
					frame_count = 16,
					line_length = 8,
					animation_speed=0.25
				},
				east  = {
					filename = "__RExtended__/graphics/entity/Machinery/Bulk/cast-chamber-r1.png",
					width = 256,
					height = 256,
					shift = {0.28125, 0.1875},
					scale = 0.5, frame_count = 16,
					line_length = 8,
					animation_speed=0.25
				}
			}
		}
	},
	{-- Heat Forge
		type = "assembling-machine",
		name = "heat-forge-chamber-r1",
		icon = "__RExtended__/graphics/icons/Machinery/Bulk/heat-forge-chamber-r1.png",
		icon_size = 32,
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "heat-forge-chamber-r1"},
		max_health = 300,
		corpse = "big-remnants",
		resistances = {{type = "fire",percent = 70}},
		fluid_boxes = {
			{
				production_type = "output",
				pipe_picture = forgepipepictures(),
				pipe_covers = npipecovers(),
				base_area = 10,
				base_level = 1,
				volume = 1000,
				pipe_connections = {{
					flow_direction="output",
					direction = defines.direction.south,
					position = {0, 1}
				}},
				secondary_draw_orders = { north = -1 }
			}
		},
		fluid_boxes_off_when_no_fluid_recipe = true,
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		crafting_categories = {"red-forge-chamber"},
		energy_usage = "400kW",
		ingredient_count = 4,
		crafting_speed = 1,
		energy_source = {type = "electric", input_priority = "secondary", usage_priority = "secondary-input", emissions = 0.023, },
		fast_replaceable_group = "assembling-machine",
		module_slots = 2,
		module_specification = {
			module_info_icon_shift = {0, 0.2},
			module_info_multi_row_initial_height_modifier = -0.3
		},
		allowed_effects = {"consumption", "speed", "productivity", "pollution"},
		working_sound = {
			sound = {{ filename = "__base__/sound/chemical-plant.ogg", volume = 0.8},},
			idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
			apparent_volume = 1.5,
		},
		graphics_set = {
			animation = {
				south = { filename = "__RExtended__/graphics/entity/Machinery/Bulk/heat-forge-chamber-r1.png", width = 256, height = 256, shift = {0.25, 0.125}, scale = 0.5, frame_count = 16, line_length = 8, animation_speed=1.0, }	,							
				west  = { filename = "__RExtended__/graphics/entity/Machinery/Bulk/heat-forge-chamber-r1.png", width = 256, height = 256, shift = {0.25, 0.125}, scale = 0.5, frame_count = 16, line_length = 8, animation_speed=1.0, }	,					
				north = { filename = "__RExtended__/graphics/entity/Machinery/Bulk/heat-forge-chamber-r1.png", width = 256, height = 256, shift = {0.25, 0.125}, scale = 0.5, frame_count = 16, line_length = 8, animation_speed=1.0, }	,							
				east  = { filename = "__RExtended__/graphics/entity/Machinery/Bulk/heat-forge-chamber-r1.png", width = 256, height = 256, shift = {0.25, 0.125}, scale = 0.5, frame_count = 16, line_length = 8, animation_speed=1.0, }	,						
			}
		}
	},
	{-- Enrichement Chamber
		type = "assembling-machine",
		name = "enrichment-chamber-r1",
		icon = "__RExtended__/graphics/icons/Machinery/Bulk/enrichment-chamber-r1.png",
		icon_size = 32,
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "enrichment-chamber-r1"},
		max_health = 300,
		corpse = "big-remnants",
		resistances = {{type = "fire",percent = 70}},
		fluid_boxes = {
			{
				production_type = "input",
				pipe_picture = compressor_pipepictures(),
				pipe_covers = npipecovers(),
				base_area = 10,
				base_level = -1,
				volume = 1000,
				pipe_connections = {{ flow_direction="input", direction = defines.direction.north, position = {0, -1} }},
				secondary_draw_orders = { north = -1 },
			},
			{
				production_type = "output",
				pipe_picture = compressor_pipepictures(),
				pipe_covers = npipecovers(),
				base_area = 10,
				base_level = 1,
				volume = 1000,
				pipe_connections = {{ flow_direction="output", direction = defines.direction.south, position = {0, 1} }},
				secondary_draw_orders = { north = -1 },
			},
		},
		fluid_boxes_off_when_no_fluid_recipe = true,
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},	
		crafting_categories = {"red-enrichment-chamber"},
		energy_usage = "1MW",
		ingredient_count = 4,
		crafting_speed = 1,
		energy_source = {type = "electric", input_priority = "secondary", usage_priority = "secondary-input", emissions = 0.05, },
		module_slots = 5,
		module_specification = {
			module_info_icon_shift = {0, 0.2},
			module_info_multi_row_initial_height_modifier = -0.3
		},
		allowed_effects = {"consumption", "speed", "productivity", "pollution"},
		working_sound = {
			sound = { { filename = "__base__/sound/chemical-plant.ogg", volume = 0.8 }, },
			idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
			apparent_volume = 1.5,
		},
		graphics_set = {
			animation = {
				south = { filename = "__RExtended__/graphics/entity/Machinery/Bulk/enrichment-chamber-r1.png", width = 256, height = 256, shift = {0.3, 0}, scale = 0.5, frame_count = 16, line_length = 8, animation_speed=1.0, },
				west  = { filename = "__RExtended__/graphics/entity/Machinery/Bulk/enrichment-chamber-r1.png", width = 256, height = 256, shift = {0.3, 0}, scale = 0.5, frame_count = 16, line_length = 8, animation_speed=1.0, },
				north = { filename = "__RExtended__/graphics/entity/Machinery/Bulk/enrichment-chamber-r1.png", width = 256, height = 256, shift = {0.3, 0}, scale = 0.5, frame_count = 16, line_length = 8, animation_speed=1.0, },
				east  = { filename = "__RExtended__/graphics/entity/Machinery/Bulk/enrichment-chamber-r1.png", width = 256, height = 256, shift = {0.3, 0}, scale = 0.5, frame_count = 16, line_length = 8, animation_speed=1.0, }
			}
		}
	},
	{-- Beacon
		type = "beacon",
		name = "beacon-r1",
		icon = "__RExtended__/graphics/icons/Machinery/Bulk/beacon-r1.png",
		icon_size = 64,
		flags = {"placeable-player", "player-creation"},
		minable = {mining_time = 1, result = "beacon-r1"},
		max_health = 400,
		corpse = "big-remnants",
		dying_explosion = "medium-explosion",
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},	
		supply_area_distance = 6,
		energy_source = {
			type = "electric",
			usage_priority = "secondary-input"
		},
		vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		energy_usage = "1MW",
		distribution_effectivity = 0.90,
		module_slots = 5,
		module_specification = {
			module_info_icon_shift = {0, 0.2},
			module_info_multi_row_initial_height_modifier = -0.3
		},
		allowed_effects = {"consumption", "speed", "pollution"},		
		base_picture = {
			filename = "__RExtended__/graphics/entity/Machinery/Bulk/beacon-r1-stop.png",
			width = 288,
			height = 288,
			shift = { 0.4375, -1},
			scale = 0.5,
		},
		animation = {
			filename = "__RExtended__/graphics/entity/Machinery/Bulk/beacon-r1.png",
			width = 288,
			height = 288,
			line_length = 6,
			frame_count = 30,
			shift = { 0.4375, -1},
			scale = 0.5,
			animation_speed = 0.25
		},
		animation_shadow = {		
			filename = "__RExtended__/graphics/entity/Pipes/clear.png",
			width = 3,
			height = 3,
			line_length = 6,
			frame_count = 30,
			shift = { 0, 0},	
		},		
		radius_visualisation_picture = {
			filename = "__base__/graphics/entity/beacon/beacon-radius-visualization.png",
			priority = "extra-high-no-scale",
			width = 10,
			height = 10
		}
	}
})

local recipe_CastChamberR2 = table.deepcopy(data.raw.recipe['cast-chamber-r1'])
recipe_CastChamberR2.name = "cast-chamber-r2"
recipe_CastChamberR2.energy_required = 5
recipe_CastChamberR2.results = {{type="item", name="cast-chamber-r2", amount=1}}
recipe_CastChamberR2.ingredients = {
	{type = "item", name = "steel-plate", amount = 10},
	{type = "item", name = "cast-chamber-r1", amount = 2}
}
recipe_CastChamberR2.enabled = false

local item_CastChamberR2 = table.deepcopy(data.raw.item['cast-chamber-r1'])
item_CastChamberR2.name = "cast-chamber-r2"
item_CastChamberR2.icon = "__RExtended__/graphics/icons/Machinery/Bulk/cast-chamber-r2.png"
item_CastChamberR2.icon_size = 32
item_CastChamberR2.place_result = "cast-chamber-r2"
item_CastChamberR2.order = "a-d-b"

local CastChamberR2 = table.deepcopy(data.raw['assembling-machine']['cast-chamber-r1'])
CastChamberR2.name = "cast-chamber-r2"
CastChamberR2.icon = "__RExtended__/graphics/icons/Machinery/Bulk/cast-chamber-r2.png"
CastChamberR2.icon_size = 32
CastChamberR2.minable.result = "cast-chamber-r2"
CastChamberR2.energy_usage = "750kW"
CastChamberR2.crafting_speed = 4
CastChamberR2.module_slots = 3
CastChamberR2.module_specification = {
    module_info_icon_shift = {0, 0.2},
    module_info_multi_row_initial_height_modifier = -0.3
}
CastChamberR2.graphics_set.animation.south.filename = "__RExtended__/graphics/entity/Machinery/Bulk/cast-chamber-r2.png"
CastChamberR2.graphics_set.animation.west.filename = "__RExtended__/graphics/entity/Machinery/Bulk/cast-chamber-r2.png"
CastChamberR2.graphics_set.animation.north.filename = "__RExtended__/graphics/entity/Machinery/Bulk/cast-chamber-r2.png"
CastChamberR2.graphics_set.animation.east.filename = "__RExtended__/graphics/entity/Machinery/Bulk/cast-chamber-r2.png"

data:extend({recipe_CastChamberR2, item_CastChamberR2, CastChamberR2})

local recipe_WasherChamberR2 = table.deepcopy(data.raw.recipe['washer-chamber-r1'])
recipe_WasherChamberR2.name = "washer-chamber-r2"
recipe_WasherChamberR2.energy_required = 5
recipe_WasherChamberR2.results = {{type="item", name="washer-chamber-r2", amount=1}}
recipe_WasherChamberR2.ingredients = {
	{type = "item", name = "steel-plate", amount = 10},
	{type = "item", name = "washer-chamber-r1", amount = 2}
}
recipe_WasherChamberR2.enabled = false

local item_WasherChamberR2 = table.deepcopy(data.raw.item['washer-chamber-r1'])
item_WasherChamberR2.name = "washer-chamber-r2"
item_WasherChamberR2.icon = "__RExtended__/graphics/icons/Machinery/Bulk/washer-chamber-r2.png"
item_WasherChamberR2.icon_size = 32
item_WasherChamberR2.place_result = "washer-chamber-r2"
item_WasherChamberR2.order = "a-b-b"

local WasherChamberR2 = table.deepcopy(data.raw['assembling-machine']['washer-chamber-r1'])
WasherChamberR2.name = "washer-chamber-r2"
WasherChamberR2.icon = "__RExtended__/graphics/icons/Machinery/Bulk/washer-chamber-r2.png"
WasherChamberR2.icon_size = 32
WasherChamberR2.minable.result = "washer-chamber-r2"
WasherChamberR2.energy_usage = "750kW"
WasherChamberR2.crafting_speed = 4
WasherChamberR2.module_slots = 3
WasherChamberR2.module_specification = {
    module_info_icon_shift = {0, 0.2},
    module_info_multi_row_initial_height_modifier = -0.3
}
WasherChamberR2.graphics_set.animation.south.filename = "__RExtended__/graphics/entity/Machinery/Bulk/washer-chamber-r2.png"
WasherChamberR2.graphics_set.animation.west.filename = "__RExtended__/graphics/entity/Machinery/Bulk/washer-chamber-r2.png"
WasherChamberR2.graphics_set.animation.north.filename = "__RExtended__/graphics/entity/Machinery/Bulk/washer-chamber-r2.png"
WasherChamberR2.graphics_set.animation.east.filename = "__RExtended__/graphics/entity/Machinery/Bulk/washer-chamber-r2.png"

data:extend({recipe_WasherChamberR2, item_WasherChamberR2, WasherChamberR2})

local recipe_HeatForgeChamberR2 = table.deepcopy(data.raw.recipe['heat-forge-chamber-r1'])
recipe_HeatForgeChamberR2.name = "heat-forge-chamber-r2"
recipe_HeatForgeChamberR2.energy_required = 5
recipe_HeatForgeChamberR2.results = {{type="item", name="heat-forge-chamber-r2", amount=1}}
recipe_HeatForgeChamberR2.ingredients = {
	{type = "item", name = "steel-plate", amount = 10},
	{type = "item", name = "heat-forge-chamber-r1", amount = 2}
}
recipe_HeatForgeChamberR2.enabled = false

local item_HeatForgeChamberR2 = table.deepcopy(data.raw.item['heat-forge-chamber-r1'])
item_HeatForgeChamberR2.name = "heat-forge-chamber-r2"
item_HeatForgeChamberR2.icon = "__RExtended__/graphics/icons/Machinery/Bulk/heat-forge-chamber-r2.png"
item_HeatForgeChamberR2.icon_size = 32
item_HeatForgeChamberR2.place_result = "heat-forge-chamber-r2"
item_HeatForgeChamberR2.order = "a-c-b"

local HeatForgeChamberR2 = table.deepcopy(data.raw['assembling-machine']['heat-forge-chamber-r1'])
HeatForgeChamberR2.name = "heat-forge-chamber-r2"
HeatForgeChamberR2.icon = "__RExtended__/graphics/icons/Machinery/Bulk/heat-forge-chamber-r2.png"
HeatForgeChamberR2.icon_size = 32
HeatForgeChamberR2.minable.result = "heat-forge-chamber-r2"
HeatForgeChamberR2.energy_usage = "750kW"
HeatForgeChamberR2.crafting_speed = 4
HeatForgeChamberR2.module_slots = 3
HeatForgeChamberR2.module_specification = {
    module_info_icon_shift = {0, 0.2},
    module_info_multi_row_initial_height_modifier = -0.3
}
HeatForgeChamberR2.graphics_set.animation.south.filename = "__RExtended__/graphics/entity/Machinery/Bulk/heat-forge-chamber-r2.png"
HeatForgeChamberR2.graphics_set.animation.west.filename = "__RExtended__/graphics/entity/Machinery/Bulk/heat-forge-chamber-r2.png"
HeatForgeChamberR2.graphics_set.animation.north.filename = "__RExtended__/graphics/entity/Machinery/Bulk/heat-forge-chamber-r2.png"
HeatForgeChamberR2.graphics_set.animation.east.filename = "__RExtended__/graphics/entity/Machinery/Bulk/heat-forge-chamber-r2.png"

data:extend({recipe_HeatForgeChamberR2, item_HeatForgeChamberR2, HeatForgeChamberR2})

local recipe_WaterCondenserR2 = table.deepcopy(data.raw.recipe['water-condenser-electric-r1'])
recipe_WaterCondenserR2.name = "water-condenser-electric-r2"
recipe_WaterCondenserR2.energy_required = 5
recipe_WaterCondenserR2.results = {{type="item", name="water-condenser-electric-r2", amount=1}}
recipe_WaterCondenserR2.ingredients = {
	{type = "item", name = "steel-plate", amount = 10},
	{type = "item", name = "water-condenser-electric-r1", amount = 2}
}
recipe_WaterCondenserR2.enabled = false

local item_WaterCondenserR2 = table.deepcopy(data.raw.item['water-condenser-electric-r1'])
item_WaterCondenserR2.name = "water-condenser-electric-r2"
item_WaterCondenserR2.icon = "__RExtended__/graphics/icons/Machinery/Bulk/water-condenser-electric-r2.png"
item_WaterCondenserR2.icon_size = 32
item_WaterCondenserR2.place_result = "water-condenser-electric-r2"
item_WaterCondenserR2.order = "c-a-b"

local WaterCondenserR2 = table.deepcopy(data.raw['assembling-machine']['water-condenser-electric-r1'])
WaterCondenserR2.name = "water-condenser-electric-r2"
WaterCondenserR2.icon = "__RExtended__/graphics/icons/Machinery/Bulk/water-condenser-electric-r2.png"
WaterCondenserR2.icon_size = 32
WaterCondenserR2.minable.result = "water-condenser-electric-r2"
WaterCondenserR2.energy_usage = "750kW"
WaterCondenserR2.crafting_speed = 4
WaterCondenserR2.module_slots = 3
WaterCondenserR2.module_specification = {
    module_info_icon_shift = {0, 0.2},
    module_info_multi_row_initial_height_modifier = -0.3
}
WaterCondenserR2.graphics_set.animation.filename = "__RExtended__/graphics/entity/Machinery/Bulk/water-condenser-electric-r2.png"

data:extend({recipe_WaterCondenserR2, item_WaterCondenserR2, WaterCondenserR2})
