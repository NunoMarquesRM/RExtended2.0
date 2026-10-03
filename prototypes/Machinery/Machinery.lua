function compressor_pipepictures()
	return {
		north = {
			filename = "__RExtended__/graphics/entity/Machinery/Bulk/compressor-pipe-n.png",
			priority = "extra-high",
			width = 256,
			height = 256,
			shift = {0.28125, 1.875},
			scale = 0.5
		},
		south = {
			filename = "__RExtended__/graphics/entity/Machinery/Bulk/compressor-pipe-s.png",
			priority = "extra-high",
			width = 256,
			height = 256,
			shift = {0.28125, -2},
			scale = 0.5
		},
		east = {
			filename = "__RExtended__/graphics/entity/Machinery/Bulk/compressor-pipe-e.png",
			priority = "extra-high",
			width = 256,
			height = 256,
			shift = {-1.71875, 0},
			scale = 0.5
		},
		west = {
			filename = "__RExtended__/graphics/entity/Machinery/Bulk/compressor-pipe-w.png",
			priority = "extra-high",
			width = 256,
			height = 256,
			shift = {2.28125, 0},
			scale = 0.5
		}
	}
end
function washerpipepictures()
	return {
		north = {
			filename = "__RExtended__/graphics/entity/Machinery/Bulk/washer-pipe-n.png",
			priority = "extra-high",
			width = 256,
			height = 256,
			shift = {0.28125, 2},
			scale = 0.5
		},
		east = {
			filename = "__RExtended__/graphics/entity/Machinery/Bulk/washer-pipe-e.png",
			priority = "extra-high",
			width = 256,
			height = 256,
			shift = {-1.71875, 0},
			scale = 0.5
		},
		south = {
			filename = "__RExtended__/graphics/entity/Machinery/Bulk/washer-pipe-s.png",
			priority = "extra-high",
			width = 256,
			height = 256,
			shift = {0.28125, -2},
			scale = 0.5
		},
		west = {
			filename = "__RExtended__/graphics/entity/Machinery/Bulk/washer-pipe-w.png",
			priority = "extra-high",
			width = 256,
			height = 256,
			shift = {2.28125, 0},
			scale = 0.5
		}
	}
end
function castpipepictures()
	return {
		north = {
			filename = "__RExtended__/graphics/entity/Machinery/Bulk/cast-chamber-pipe-n.png",
			priority = "extra-high",
			width = 256,
			height = 256,
			shift = {0.28125, 2},
			scale = 0.5
		},
		east = {
			filename = "__RExtended__/graphics/entity/Machinery/Bulk/cast-chamber-pipe-e.png",
			priority = "extra-high",
			width = 256,
			height = 256,
			shift = {-1.71875, 0},
			scale = 0.5
		},
		south = {
			filename = "__RExtended__/graphics/entity/Machinery/Bulk/cast-chamber-pipe-s.png",
			priority = "extra-high",
			width = 256,
			height = 256,
			shift = {0.28125, -2},
			scale = 0.5
		},
		west = {
			filename = "__RExtended__/graphics/entity/Machinery/Bulk/cast-chamber-pipe-w.png",
			priority = "extra-high",
			width = 256,
			height = 256,
			shift = {2.28125, 0},
			scale = 0.5
		}
	}
end
function forgepipepictures()
	return {
		north = {
			filename = "__RExtended__/graphics/entity/Machinery/Bulk/heat-forge-n.png",
			priority = "extra-high",
			width = 256,
			height = 256,
			shift = {0.28125, 1.875},
			scale = 0.5
		},
		south = {
			filename = "__RExtended__/graphics/entity/Machinery/Bulk/heat-forge-s.png",
			priority = "extra-high",
			width = 256,
			height = 256,
			shift = {0.28125, -2},
			scale = 0.5
		},
		east = {
			filename = "__RExtended__/graphics/entity/Machinery/Bulk/heat-forge-e.png",
			priority = "extra-high",
			width = 256,
			height = 256,
			shift = {-1.71875, 0},
			scale = 0.5
		},
		west = {
			filename = "__RExtended__/graphics/entity/Machinery/Bulk/heat-forge-w.png",
			priority = "extra-high",
			width = 256,
			height = 256,
			shift = {2.28125, 0},
			scale = 0.5
		}
	}
end
function chemicalpipepictures()
	return {
		north = {
			filename = "__RExtended__/graphics/entity/Machinery/Bulk/chemical-pipe-n.png",
			priority = "extra-high",
			width = 256,
			height = 256,
			shift = {0.28125, 2},
			scale = 0.5
		},
		east = {
			filename = "__RExtended__/graphics/entity/Machinery/Bulk/chemical-pipe-e.png",
			priority = "extra-high",
			width = 256,
			height = 256,
			shift = {-1.71875, 0},
			scale = 0.5
		},
		south = {
			filename = "__RExtended__/graphics/entity/Machinery/Bulk/chemical-pipe-s.png",
			priority = "extra-high",
			width = 256,
			height = 256,
			shift = {0.28125, -2},
			scale = 0.5
		},
		west = {
			filename = "__RExtended__/graphics/entity/Machinery/Bulk/chemical-pipe-w.png",
			priority = "extra-high",
			width = 256,
			height = 256,
			shift = {2.28125, 0},
			scale = 0.5
		}
	}
end
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
--ITEM
	{-- Compressor
		type = "item",
		name = "compressor-r1",
		icon = "__RExtended__/graphics/icons/Machinery/Bulk/compressor-r1.png",
		icon_size = 32,
		subgroup = "machinery-ore",
		order = "a-a-a",
		place_result = "compressor-r1",
		stack_size = 50
	},
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
	{-- Chemical Machine
		type = "item",
		name = "chemical-machine-r1",
		icon = "__RExtended__/graphics/icons/Machinery/Bulk/chemical-machine-r1.png",
		icon_size = 32,
		subgroup = "machinery-condenser",
		order = "c-c-a",
		place_result = "chemical-machine-r1",
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
	{-- Refinery
		type = "item",
		name = "refinery-r1",
		icon = "__RExtended__/graphics/icons/Machinery/Bulk/refinery-r1.png",
		icon_size = 32,
		subgroup = "machinery-condenser",
		order = "c-e-a",
		place_result = "refinery-r1",
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
	{-- Compressor
		type = "recipe",
		name = "compressor-r1",
		energy_required = 2,
		enabled = false,
		ingredients = {
			{type = "item", name = "steel-plate", amount = 5},
			{type = "item", name = "reinforced-gear-copper-r1", amount = 3},
			{type = "item", name = "reinforced-copper-plate-r1", amount = 5},
			{type = "item", name = "assembling-machine-2", amount = 1}
		},
		results = {{type="item", name="compressor-r1", amount=1}}
	},
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
	{-- Chemical Machine
		type = "recipe",
		name = "chemical-machine-r1",
		energy_required = 5,
		enabled = false,
		ingredients = {
			{type = "item", name = "steel-plate", amount = 12},
			{type = "item", name = "reinforced-gear-iron-r1", amount = 5},
			{type = "item", name = "reinforced-gear-copper-r1", amount = 3},
			{type = "item", name = "electric-component-r1", amount = 2},
			{type = "item", name = "pipe", amount = 6}
		},
		results = {{type="item", name="chemical-machine-r1", amount=1}}
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
	{-- Refinery
		type = "recipe",
		name = "refinery-r1",
		energy_required = 5,
		enabled = false,
		ingredients = {
			{type = "item", name = "reinforced-iron-plate-r1", amount = 25},
			{type = "item", name = "reinforced-copper-plate-r1", amount = 25},
			{type = "item", name = "reinforced-coal-plate-r1", amount = 25},
			{type = "item", name = "electric-component-r1", amount = 20},
			{type = "item", name = "pipe", amount = 25}
		},
		results = {{type="item", name="refinery-r1", amount=1}}
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
	{-- Compressor
		type = "assembling-machine",
		name = "compressor-r1",
		icon = "__RExtended__/graphics/icons/Machinery/Bulk/compressor-r1.png",
		icon_size = 32,
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "compressor-r1"},
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
				pipe_connections = {{
					flow_direction="input",
					direction = defines.direction.north,
					position = {0, -1}
				}},
				secondary_draw_orders = {north = -1}
			},
			{
				production_type = "output",
				pipe_picture = compressor_pipepictures(),
				pipe_covers = npipecovers(),
				base_area = 10,
				base_level = 1,
				volume = 1000,
				pipe_connections = {{
					flow_direction="output",
					direction = defines.direction.south,
					position = {0, 1}
				}},
				secondary_draw_orders = {north = -1}
			}
		},
		fluid_boxes_off_when_no_fluid_recipe = true,
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},	
		crafting_categories = {"red-compressing"},
		energy_usage = "260kW",
		ingredient_count = 4,
		crafting_speed = 1,
		energy_source = {type = "electric", input_priority = "secondary", usage_priority = "secondary-input", emissions = 0.004, },
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
				south = { filename = "__RExtended__/graphics/entity/Machinery/Bulk/compressor-r1-v.png", width = 256, height = 256, shift = {0.3125, 0.125}, scale = 0.5, frame_count = 16, line_length = 8, animation_speed=1.0, },							
				west  = { filename = "__RExtended__/graphics/entity/Machinery/Bulk/compressor-r1-h.png", width = 256, height = 256, shift = {0.375, 0}, scale = 0.5, frame_count = 16, line_length = 8, animation_speed=1.0, },					
				north = { filename = "__RExtended__/graphics/entity/Machinery/Bulk/compressor-r1-v.png", width = 256, height = 256, shift = {0.3125, 0.125}, scale = 0.5, frame_count = 16, line_length = 8, animation_speed=1.0, },							
				east  = { filename = "__RExtended__/graphics/entity/Machinery/Bulk/compressor-r1-h.png", width = 256, height = 256, shift = {0.375, 0}, scale = 0.5, frame_count = 16, line_length = 8, animation_speed=1.0, },							
			}
		}
	},
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
	{-- Chemical Machine
		type = "assembling-machine",
		name = "chemical-machine-r1",
		icon = "__RExtended__/graphics/icons/Machinery/Bulk/chemical-machine-r1.png",
		icon_size = 32,
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "chemical-machine-r1"},
		max_health = 500,
		corpse = "big-remnants",
		resistances = {{type = "fire",percent = 70}},
		fluid_boxes = {
			{
				production_type = "input",
				pipe_picture = chemicalpipepictures(),
				pipe_covers = npipecovers(),
				base_area = 10,
				base_level = -1,
				volume = 1000,
				pipe_connections = {{ flow_direction="input", direction = defines.direction.north, position = {-1, -1} }},
				secondary_draw_orders = { north = -1 }
			},
			{
				production_type = "input",
				pipe_picture = chemicalpipepictures(),
				pipe_covers = npipecovers(),
				base_area = 10,
				base_level = -1,
				volume = 1000,
				pipe_connections = {{ flow_direction="input", direction = defines.direction.north, position = {1, -1} }},
				secondary_draw_orders = { north = -1 }
			},
			{
				production_type = "output",
				pipe_picture = chemicalpipepictures(),
				pipe_covers = npipecovers(),
				base_level = 1,
				volume = 1000,
				pipe_connections = {{ flow_direction="output", direction = defines.direction.south, position = {-1, 1} }},
				secondary_draw_orders = { north = -1 }
			},
			{
				production_type = "output",
				pipe_picture = chemicalpipepictures(),
				pipe_covers = npipecovers(),
				base_level = 1,
				volume = 1000,
				pipe_connections = {{ flow_direction="output", direction = defines.direction.south, position = {1, 1} }},
				secondary_draw_orders = { north = -1 }
			}
		},
		fluid_boxes_off_when_no_fluid_recipe = true,
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		crafting_categories = {"chemistry"},
		energy_usage = "350kW",
		ingredient_count = 6,
		crafting_speed = 2,
		energy_source = {type = "electric", input_priority = "secondary", usage_priority = "secondary-input", emissions = 0.018, },
		fast_replaceable_group = "assembling-machine",
		module_slots = 3,
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
				filename = "__RExtended__/graphics/entity/Machinery/Bulk/chemical-machine-r1.png",
				width = 320,
				height = 320,
				frame_count = 8,
				line_length = 4,
				animation_speed=0.3,
				shift = {0.875, -0.8125},
				scale  = 0.5,
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
	{--Refinery
		type = "assembling-machine",
		name = "refinery-r1",
		icon = "__RExtended__/graphics/icons/Machinery/Bulk/refinery-r1.png",
		icon_size = 32,
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {mining_time = 1, result = "refinery-r1"},
		max_health = 650,
		corpse = "big-remnants",
		dying_explosion = "medium-explosion",
		collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
		selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
		module_slots = 3,
		module_specification = {
			module_info_icon_shift = {0, 0.2},
			module_info_multi_row_initial_height_modifier = -0.3
		},
		scale_entity_info_icon = true,
		allowed_effects = {"consumption", "speed", "productivity", "pollution"},
		crafting_categories = {"oil-processing","red-oil-process"},
		crafting_speed = 2,
		has_backer_name = false,
		energy_source = {
			type = "electric",
			usage_priority = "secondary-input",
			emissions = 0.05
		},
		energy_usage = "650kW",
		ingredient_count = 4,
		graphics_set = {
			animation = {
				south = { filename = "__RExtended__/graphics/entity/Machinery/Bulk/refinery-r1-s.png", width = 448, height = 448, shift = {1, -0}, frame_count = 1, line_length = 1, scale = 0.5, animation_speed=1.0, }	,							
				west  = { filename = "__RExtended__/graphics/entity/Machinery/Bulk/refinery-r1-w.png", width = 448, height = 448, shift = {0.65625, -0.71875}, frame_count = 1, line_length = 1, scale = 0.5, animation_speed=1.0, }	,					
				north = { filename = "__RExtended__/graphics/entity/Machinery/Bulk/refinery-r1-n.png", width = 448, height = 448, shift = {1, -0}, frame_count = 1, line_length = 1, scale = 0.5, animation_speed=1.0, }	,							
				east  = { filename = "__RExtended__/graphics/entity/Machinery/Bulk/refinery-r1-e.png", width = 448, height = 448, shift = {0.65625, -0.71875}, frame_count = 1, line_length = 1, scale = 0.5, animation_speed=1.0, }	,							
			},
			working_visualisations = {
				{
					north_position = {1.25, -3.3},
					east_position = {-0.125, -2.25},
					south_position = {1.25, -3.125},
					west_position = {0, -2.125},
					animation = {
						filename = "__RExtended__/graphics/entity/Machinery/Bulk/refinery-r1-fire.png",
						line_length = 10,
						width = 40,
						height = 81,
						frame_count = 60,
						animation_speed = 0.75,
						scale = 0.75,
						shift = util.by_pixel(0, -14.25),
					},
					light = {intensity = 0.4, size = 6, color = {r = 1.0, g = 1.0, b = 1.0}}
				},
				{
					north_position = {-1.25, -3.3},
					east_position = {-0.125, -4},
					south_position = {-1.25, -3.125},
					west_position = {0, -3.875},
					animation = {
						filename = "__RExtended__/graphics/entity/Machinery/Bulk/refinery-r1-fire.png",
						line_length = 10,
						width = 40,
						height = 81,
						frame_count = 60,
						animation_speed = 0.75,
						scale = 0.75,
						shift = util.by_pixel(0, -14.25),
					},
					light = {intensity = 0.4, size = 6, color = {r = 1.0, g = 1.0, b = 1.0}}
				}
			}
		},
		vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		working_sound = {
			sound = { filename = "__base__/sound/oil-refinery.ogg" },
			idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
			apparent_volume = 2.5,
		},
		fluid_boxes = {
			{
				production_type = "input",
				pipe_covers = npipecovers(),
				base_area = 10,
				base_level = -1,
				volume = 1000,
				pipe_connections = {{
					flow_direction="input",
					direction = defines.direction.south,
					position = {-1, 2}
				}}
			},
			{
				production_type = "input",
				pipe_covers = npipecovers(),
				base_area = 10,
				base_level = -1,
				volume = 1000,
				pipe_connections = {{
					flow_direction="input",
					direction = defines.direction.south,
					position = {1, 2}
				}}
			},
			{
				production_type = "output",
				pipe_covers = npipecovers(),
				base_level = 1,
				volume = 1000,
				pipe_connections = {{
					flow_direction="output",
					direction = defines.direction.north,
					position = {-2, -2}
				}}
			},
			{
				production_type = "output",
				pipe_covers = npipecovers(),
				base_level = 1,
				volume = 1000,
				pipe_connections = {{
					flow_direction="output",
					direction = defines.direction.north,
					position = {0, -2}
				}}
			},
			{
				production_type = "output",
				pipe_covers = npipecovers(),
				base_level = 1,
				volume = 1000,
				pipe_connections = {{
					flow_direction="output",
					direction = defines.direction.north,
					position = {2, -2}
				}}
			}
		},
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
			filename = "__RExtended__/graphics/entity/Machinery/Bulk/clear.png",
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

local recipe_ChemicalMachineR2 = table.deepcopy(data.raw.recipe['chemical-machine-r1'])
recipe_ChemicalMachineR2.name = "chemical-machine-r2"
recipe_ChemicalMachineR2.energy_required = 5
recipe_ChemicalMachineR2.results = {{type="item", name="chemical-machine-r2", amount=1}}
recipe_ChemicalMachineR2.ingredients = {
	{type = "item", name = "steel-plate", amount = 10},
	{type = "item", name = "pipe", amount = 4},
	{type = "item", name = "chemical-machine-r1", amount = 2}
}
recipe_ChemicalMachineR2.enabled = false

local item_ChemicalMachineR2 = table.deepcopy(data.raw.item['chemical-machine-r1'])
item_ChemicalMachineR2.name = "chemical-machine-r2"
item_ChemicalMachineR2.icon = "__RExtended__/graphics/icons/Machinery/Bulk/chemical-machine-r2.png"
item_ChemicalMachineR2.icon_size = 32
item_ChemicalMachineR2.place_result = "chemical-machine-r2"
item_ChemicalMachineR2.order = "c-c-b"

local ChemicalMachineR2 = table.deepcopy(data.raw['assembling-machine']['chemical-machine-r1'])
ChemicalMachineR2.name = "chemical-machine-r2"
ChemicalMachineR2.icon = "__RExtended__/graphics/icons/Machinery/Bulk/chemical-machine-r2.png"
ChemicalMachineR2.icon_size = 32
ChemicalMachineR2.minable.result = "chemical-machine-r2"
ChemicalMachineR2.energy_usage = "750kW"
ChemicalMachineR2.graphics_set.animation.filename = "__RExtended__/graphics/entity/Machinery/Bulk/chemical-machine-r2.png"
ChemicalMachineR2.crafting_speed = 4

data:extend({recipe_ChemicalMachineR2, item_ChemicalMachineR2, ChemicalMachineR2})

local recipe_CompressorR2 = table.deepcopy(data.raw.recipe['compressor-r1'])
recipe_CompressorR2.name = "compressor-r2"
recipe_CompressorR2.energy_required = 5
recipe_CompressorR2.results = {{type="item", name="compressor-r2", amount=1}}
recipe_CompressorR2.ingredients = {
	{type = "item", name = "steel-plate", amount = 10},
	{type = "item", name = "compressor-r1", amount = 2}
}
recipe_CompressorR2.enabled = false

local item_CompressorR2 = table.deepcopy(data.raw.item['compressor-r1'])
item_CompressorR2.name = "compressor-r2"
item_CompressorR2.icon = "__RExtended__/graphics/icons/Machinery/Bulk/compressor-r2.png"
item_CompressorR2.icon_size = 32
item_CompressorR2.place_result = "compressor-r2"
item_CompressorR2.order = "a-a-b"

local CompressorR2 = table.deepcopy(data.raw['assembling-machine']['compressor-r1'])
CompressorR2.name = "compressor-r2"
CompressorR2.icon = "__RExtended__/graphics/icons/Machinery/Bulk/compressor-r2.png"
CompressorR2.icon_size = 32
CompressorR2.minable.result = "compressor-r2"
CompressorR2.energy_usage = "750kW"
CompressorR2.crafting_speed = 4
CompressorR2.module_slots = 3
CompressorR2.module_specification = {
    module_info_icon_shift = {0, 0.2},
    module_info_multi_row_initial_height_modifier = -0.3
}
CompressorR2.graphics_set.animation.south.filename = "__RExtended__/graphics/entity/Machinery/Bulk/compressor-r2-v.png"
CompressorR2.graphics_set.animation.west.filename = "__RExtended__/graphics/entity/Machinery/Bulk/compressor-r2-h.png"
CompressorR2.graphics_set.animation.north.filename = "__RExtended__/graphics/entity/Machinery/Bulk/compressor-r2-v.png"
CompressorR2.graphics_set.animation.east.filename = "__RExtended__/graphics/entity/Machinery/Bulk/compressor-r2-h.png"

data:extend({recipe_CompressorR2, item_CompressorR2, CompressorR2})

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

local recipe_RefineryR2 = table.deepcopy(data.raw.recipe['refinery-r1'])
recipe_RefineryR2.name = "refinery-r2"
recipe_RefineryR2.energy_required = 5
recipe_RefineryR2.results = {{type="item", name="refinery-r2", amount=1}}
recipe_RefineryR2.ingredients = {
	{type = "item", name = "steel-plate", amount = 10},
	{type = "item", name = "refinery-r1", amount = 2}
}
recipe_RefineryR2.enabled = false

local item_RefineryR2 = table.deepcopy(data.raw.item['refinery-r1'])
item_RefineryR2.name = "refinery-r2"
item_RefineryR2.icon = "__RExtended__/graphics/icons/Machinery/Bulk/refinery-r2.png"
item_RefineryR2.icon_size = 32
item_RefineryR2.place_result = "refinery-r2"
item_RefineryR2.order = "c-e-b"

local RefineryR2 = table.deepcopy(data.raw['assembling-machine']['refinery-r1'])
RefineryR2.name = "refinery-r2"
RefineryR2.icon = "__RExtended__/graphics/icons/Machinery/Bulk/refinery-r2.png"
RefineryR2.icon_size = 32
RefineryR2.minable.result = "refinery-r2"
RefineryR2.energy_usage = "1.5MW"
RefineryR2.crafting_speed = 4
RefineryR2.module_slots = 3
RefineryR2.module_specification = {
    module_info_icon_shift = {0, 0.2},
    module_info_multi_row_initial_height_modifier = -0.3
}
RefineryR2.graphics_set.animation.south.filename = "__RExtended__/graphics/entity/Machinery/Bulk/refinery-r2-s.png"
RefineryR2.graphics_set.animation.west.filename = "__RExtended__/graphics/entity/Machinery/Bulk/refinery-r2-w.png"
RefineryR2.graphics_set.animation.north.filename = "__RExtended__/graphics/entity/Machinery/Bulk/refinery-r2-n.png"
RefineryR2.graphics_set.animation.east.filename = "__RExtended__/graphics/entity/Machinery/Bulk/refinery-r2-e.png"
RefineryR2.working_visualisations = {
	{
		north_position = {1.25, -3.3},
		east_position = {-0.125, -2.25},
		south_position = {1.25, -3.125},
		west_position = {0, -2.125},
		animation = {
			filename = "__RExtended__/graphics/entity/Machinery/Bulk/refinery-r2-fire.png",
			line_length = 10,
			width = 40,
			height = 81,
			frame_count = 60,
			animation_speed = 0.75,
			scale = 0.75,
			shift = util.by_pixel(0, -14.25),
		},
		light = {intensity = 0.4, size = 6, color = {r = 1.0, g = 1.0, b = 1.0}}
	},
	{
		north_position = {-1.25, -3.3},
		east_position = {-0.125, -4},
		south_position = {-1.25, -3.125},
		west_position = {0, -3.875},
		animation = {
			filename = "__RExtended__/graphics/entity/Machinery/Bulk/refinery-r2-fire.png",
			line_length = 10,
			width = 40,
			height = 81,
			frame_count = 60,
			animation_speed = 0.75,
			scale = 0.75,
			shift = util.by_pixel(0, -14.25),
		},
		light = {intensity = 0.4, size = 6, color = {r = 1.0, g = 1.0, b = 1.0}}
	}
}

data:extend({recipe_RefineryR2, item_RefineryR2, RefineryR2})