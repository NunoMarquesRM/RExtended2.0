data:extend({
	--ITEM
	{--Half Assembler Machine
		type = "item",
		name = "half-assembler-r1",
		icon = "__RExtended__/graphics/icons/Machinery/Assemblers/half-assembler-r1.png",
		icon_size = 32,
		subgroup = "machinery-assemblers",
		order = "a-a-a",
		place_result = "half-assembler-r1",
		stack_size = 50
	},
	{--Assembler Machine R1
		type = "item",
		name = "assembler-r1",
		icon = "__RExtended__/graphics/icons/Machinery/Assemblers/assembler-r1.png",
		icon_size = 32,
		subgroup = "machinery-assemblers",
		order = "a-b-a",
		place_result = "assembler-r1",
		stack_size = 50
	},
	{--Assembler Machine R2
		type = "item",
		name = "assembler-r2",
		icon = "__RExtended__/graphics/icons/Machinery/Assemblers/assembler-r2.png",
		icon_size = 32,
		subgroup = "machinery-assemblers",
		order = "a-b-b",
		place_result = "assembler-r2",
		stack_size = 50
	},
	--RECIPE
	{--Half Assembler Machine
		type = "recipe",
		name = "half-assembler-r1",
		energy_required = 5,
		enabled = false,
		ingredients = {
			{type = "item", name = "reinforced-gear-iron-r1", amount = 5},
			{type = "item", name = "reinforced-gear-copper-r1", amount = 5},
			{type = "item", name = "electronic-circuit", amount = 5}
		},
		results = {{type="item", name="half-assembler-r1", amount=1}}
	},
	{--Assembler Machine R1
		type = "recipe",
		name = "assembler-r1",
		energy_required = 5,
		enabled = false,
		ingredients = {
			{type = "item", name = "reinforced-gear-iron-r1", amount = 5},
			{type = "item", name = "reinforced-gear-copper-r1", amount = 5},
			{type = "item", name = "copper-gear-wheel-r1", amount = 5},
			{type = "item", name = "half-assembler-r1", amount = 5},
			{type = "item", name = "reinforced-iron-plate-r1", amount = 15}
		},
		results = {{type="item", name="assembler-r1", amount=1}}
	},
	{--Assembler Machine R2
		type = "recipe",
		name = "assembler-r2",
		energy_required = 5,
		enabled = false,
		ingredients = {
			{type = "item", name = "reinforced-gear-iron-r1", amount = 5},
			{type = "item", name = "reinforced-gear-copper-r1", amount = 5},
			{type = "item", name = "electric-engine-unit", amount = 5},
			{type = "item", name = "assembler-r1", amount = 5},
			{type = "item", name = "processing-unit", amount = 5}
		},
		results = {{type="item", name="assembler-r2", amount=1}}
	},
	--ENTITY
	{--Half Assembler Machine
		type = "assembling-machine",
		name = "half-assembler-r1",
		icon = "__RExtended__/graphics/icons/Machinery/Assemblers/half-assembler-r1.png",
		icon_size = 32,
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		minable = {mining_time = 1, result = "half-assembler-r1"},
		max_health = 200,
		corpse = "medium-remnants",
		resistances = {{type = "fire",percent = 80}},
		collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
		selection_box = {{-1, -1}, {1, 1}},
		crafting_categories = {"crafting"},
		energy_usage = "150kW",
		ingredient_count = 1,
		crafting_speed = 2,
		energy_source = {type = "electric", input_priority = "secondary", usage_priority = "secondary-input", emissions = 0.025, },
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
			sound = {
				{ filename = "__base__/sound/assembling-machine-t1-1.ogg", volume = 0.8 },
				{ filename = "__base__/sound/assembling-machine-t1-2.ogg", volume = 0.8 },
			},
			idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
			apparent_volume = 1.5,
		},
		graphics_set = {
			animation = {
				south = { filename = "__RExtended__/graphics/entity/Machinery/Assemblers/half-assembler-r1.png", width = 192, height = 128, shift = {0.46875, -0.125}, scale = 0.5, frame_count = 16, line_length = 8, animation_speed=0.5, }	,							
				west  = { filename = "__RExtended__/graphics/entity/Machinery/Assemblers/half-assembler-r1.png", width = 192, height = 128, shift = {0.46875, -0.125}, scale = 0.5, frame_count = 16, line_length = 8, animation_speed=0.5, }	,						
				north = { filename = "__RExtended__/graphics/entity/Machinery/Assemblers/half-assembler-r1.png", width = 192, height = 128, shift = {0.46875, -0.125}, scale = 0.5, frame_count = 16, line_length = 8, animation_speed=0.5, }	,								
				east  = { filename = "__RExtended__/graphics/entity/Machinery/Assemblers/half-assembler-r1.png", width = 192, height = 128, shift = {0.46875, -0.125}, scale = 0.5, frame_count = 16, line_length = 8, animation_speed=0.5, }	,								
			}
		}
	},
	{--Assembler Machine R1
		type = "assembling-machine",
		name = "assembler-r1",
		icon = "__RExtended__/graphics/icons/Machinery/Assemblers/assembler-r1.png",
		icon_size = 32,
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		minable = {mining_time = 0.4, result = "assembler-r1"},
		max_health = 400,
		corpse = "medium-remnants",
		resistances = {{type = "fire",percent = 80}},
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		crafting_categories = {"crafting", "advanced-crafting", "crafting-with-fluid"},
		energy_usage = "350kW",
		ingredient_count = 6,
		crafting_speed = 1.5,
		fast_replaceable_group = "assembling-machine",
		energy_source = {type = "electric", input_priority = "secondary", usage_priority = "secondary-input", emissions = 0.01, },
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
			sound = {
				{ filename = "__base__/sound/assembling-machine-t1-1.ogg", volume = 0.8 },
				{ filename = "__base__/sound/assembling-machine-t1-2.ogg", volume = 0.8 },
			},
			idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
			apparent_volume = 1.5,
		},
		fluid_boxes = {
			{
				production_type = "input",
				pipe_picture = {
					north = {
						filename = "__RExtended__/graphics/entity/Machinery/Assemblers/assembler-r1-n.png",
						priority = "extra-high",
						width = 256,
						height = 256,
						shift = {0.40625, 2.25},
						scale = 0.5,
					},
					south = {
						filename = "__RExtended__/graphics/entity/Machinery/Assemblers/assembler-r1-s.png",
						priority = "extra-high",
						width = 256,
						height = 256,
						shift = {0.40625, -1.75},
						scale = 0.5,
					},
					east = {
						filename = "__RExtended__/graphics/entity/Machinery/Assemblers/assembler-r1-e.png",
						priority = "extra-high",
						width = 256,
						height = 256,
						shift = {-1.59375, 0.25},
						scale = 0.5,
					},
					west = {
						filename = "__RExtended__/graphics/entity/Machinery/Assemblers/assembler-r1-w.png",
						priority = "extra-high",
						width = 256,
						height = 256,
						shift = {2.40625, 0.25},
						scale = 0.5,
					}
				},
				pipe_covers = npipecovers(),
				volume = 1000,
				pipe_connections = {{flow_direction = "input", direction = defines.direction.north, position = {0, -1} }},
				secondary_draw_orders = { north = -1 }
			},
			{
				production_type = "output",
				pipe_picture = {
					north = {
						filename = "__RExtended__/graphics/entity/Machinery/Assemblers/assembler-r1-n.png",
						priority = "extra-high",
						width = 256,
						height = 256,
						shift = {0.40625, 2.25},
						scale = 0.5,
					},
					south = {
						filename = "__RExtended__/graphics/entity/Machinery/Assemblers/assembler-r1-s.png",
						priority = "extra-high",
						width = 256,
						height = 256,
						shift = {0.40625, -1.75},
						scale = 0.5,
					},
					east = {
						filename = "__RExtended__/graphics/entity/Machinery/Assemblers/assembler-r1-e.png",
						priority = "extra-high",
						width = 256,
						height = 256,
						shift = {-1.59375, 0.25},
						scale = 0.5,
					},
					west = {
						filename = "__RExtended__/graphics/entity/Machinery/Assemblers/assembler-r1-w.png",
						priority = "extra-high",
						width = 256,
						height = 256,
						shift = {2.40625, 0.25},
						scale = 0.5,
					}
				},
				pipe_covers = npipecovers(),
				volume = 1000,
				pipe_connections = {{flow_direction = "output", direction = defines.direction.south, position = {0, 1} }},
				secondary_draw_orders = { north = -1 }
			}
		},
		effect_receiver = { uses_module_effects = true, uses_beacon_effects = true, uses_surface_effects = true },
		fluid_boxes_off_when_no_fluid_recipe = true,
		graphics_set = {
			animation = {
				layers = {{
					filename = "__RExtended__/graphics/entity/Machinery/Assemblers/assembler-r1.png",
					priority = "high",
					width = 256,
					height = 256,
					frame_count = 16,
					line_length = 8,
					shift = {0.40625, 0.25},
					scale = 0.5,
				}}
			}
		}
	},
	{--Assembler Machine R2
		type = "assembling-machine",
		name = "assembler-r2",
		icon = "__RExtended__/graphics/icons/Machinery/Assemblers/assembler-r2.png",
		icon_size = 32,
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		minable = {mining_time = 1, result = "assembler-r2"},
		max_health = 500,
		corpse = "medium-remnants",
		resistances = {{type = "fire",percent = 90}},
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		crafting_categories = {"crafting", "advanced-crafting", "crafting-with-fluid"},
		energy_usage = "750kW",
		ingredient_count = 6,
		crafting_speed = 4,
		fast_replaceable_group = "assembling-machine",
		energy_source = {type = "electric", input_priority = "secondary", usage_priority = "secondary-input", emissions = 0.018, },
		fast_replaceable_group = "assembling-machine",
		open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
		close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
		module_slots = 4,
		module_specification = {
			module_info_icon_shift = {0, 0.2},
			module_info_multi_row_initial_height_modifier = -0.3
		},
		allowed_effects = {"consumption", "speed", "productivity", "pollution"},
		working_sound = {
			sound = {
				{ filename = "__base__/sound/assembling-machine-t1-1.ogg", volume = 0.8 },
				{ filename = "__base__/sound/assembling-machine-t1-2.ogg", volume = 0.8 },
			},
			idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
			apparent_volume = 1.5,
		},
		fluid_boxes = {
			{
				production_type = "input",
				pipe_picture = {
					north = {
						filename = "__RExtended__/graphics/entity/Machinery/Assemblers/assembler-r2-n.png",
						priority = "extra-high",
						width = 256,
						height = 256,
						shift = {0.40625, 2.25},
						scale = 0.5,
					},
					east = {
						filename = "__RExtended__/graphics/entity/Machinery/Assemblers/assembler-r2-e.png",
						priority = "extra-high",
						width = 256,
						height = 256,
						shift = {-1.59375, 0.25},
						scale = 0.5,
					},
					south = {
						filename = "__RExtended__/graphics/entity/Machinery/Assemblers/assembler-r2-s.png",
						priority = "extra-high",
						width = 256,
						height = 256,
						shift = {0.40625, -1.75},
						scale = 0.5,
					},
					west = {
						filename = "__RExtended__/graphics/entity/Machinery/Assemblers/assembler-r2-w.png",
						priority = "extra-high",
						width = 256,
						height = 256,
						shift = {2.40625, 0.25},
						scale = 0.5,
					}
				},
				pipe_covers = npipecovers(),
				volume = 1000,
				pipe_connections = {{flow_direction = "input", direction = defines.direction.north, position = {0, -1}}},
				secondary_draw_orders = { north = -1 }
			},
			{
				production_type = "output",
				pipe_picture = {
					north = {
						filename = "__RExtended__/graphics/entity/Machinery/Assemblers/assembler-r2-n.png",
						priority = "extra-high",
						width = 256,
						height = 256,
						shift = {0.40625, 2.25},
						scale = 0.5,
					},
					east = {
						filename = "__RExtended__/graphics/entity/Machinery/Assemblers/assembler-r2-e.png",
						priority = "extra-high",
						width = 256,
						height = 256,
						shift = {-1.59375, 0.25},
						scale = 0.5,
					},
					south = {
						filename = "__RExtended__/graphics/entity/Machinery/Assemblers/assembler-r2-s.png",
						priority = "extra-high",
						width = 256,
						height = 256,
						shift = {0.40625, -1.75},
						scale = 0.5,
					},
					west = {
						filename = "__RExtended__/graphics/entity/Machinery/Assemblers/assembler-r2-w.png",
						priority = "extra-high",
						width = 256,
						height = 256,
						shift = {2.40625, 0.25},
						scale = 0.5,
					}
				},
				pipe_covers = npipecovers(),
				volume = 1000,
				pipe_connections = {{flow_direction = "output", direction = defines.direction.south, position = {0, 1} }},
				secondary_draw_orders = { north = -1 }
			}
		},
		fluid_boxes_off_when_no_fluid_recipe = true,
		effect_receiver = { uses_module_effects = true, uses_beacon_effects = true, uses_surface_effects = true },
		graphics_set = {
			animation = {
				layers = {{
					filename = "__RExtended__/graphics/entity/Machinery/Assemblers/assembler-r2.png",
					priority = "high",
					width = 256,
					height = 256,
					frame_count = 16,
					line_length = 8,
					shift = {0.40625, 0.25},
					scale = 0.5,
				}}
			}
		}
	}
})

local recipe_HalfAssemblerMachineR2 = table.deepcopy(data.raw.recipe['half-assembler-r1'])
recipe_HalfAssemblerMachineR2.name = "half-assembler-r2"
recipe_HalfAssemblerMachineR2.results = {{type="item", name="half-assembler-r2", amount=1}}
recipe_HalfAssemblerMachineR2.ingredients = {
	{type = "item", name = "steel-plate", amount = 10},
	{type = "item", name = "reinforced-iron-plate-r1", amount = 1},
	{type = "item", name = "reinforced-copper-plate-r1", amount = 1},
	{type = "item", name = "half-assembler-r1", amount = 2}

}
recipe_HalfAssemblerMachineR2.enabled = false

local item_HalfAssemblerMachineR2 = table.deepcopy(data.raw.item['half-assembler-r1'])
item_HalfAssemblerMachineR2.name = "half-assembler-r2"
item_HalfAssemblerMachineR2.icon = "__RExtended__/graphics/icons/Machinery/Assemblers/half-assembler-r2.png"
item_HalfAssemblerMachineR2.place_result = "half-assembler-r2"
item_HalfAssemblerMachineR2.order = "a-a-b"

local HalfAssemblerMachineR2 = table.deepcopy(data.raw['assembling-machine']['half-assembler-r1'])
HalfAssemblerMachineR2.name = "half-assembler-r2"
HalfAssemblerMachineR2.icon = "__RExtended__/graphics/icons/Machinery/Assemblers/half-assembler-r2.png"
HalfAssemblerMachineR2.icon_size = 32
HalfAssemblerMachineR2.minable.result = "half-assembler-r2"
HalfAssemblerMachineR2.energy_usage = "750kW"
HalfAssemblerMachineR2.crafting_speed = 4
HalfAssemblerMachineR2.module_slots = 3
HalfAssemblerMachineR2.module_specification = {
	module_info_icon_shift = {0, 0.2},
	module_info_multi_row_initial_height_modifier = -0.3
}
HalfAssemblerMachineR2.graphics_set.animation.south.filename = "__RExtended__/graphics/entity/Machinery/Assemblers/half-assembler-r2.png"
HalfAssemblerMachineR2.graphics_set.animation.west.filename = "__RExtended__/graphics/entity/Machinery/Assemblers/half-assembler-r2.png"
HalfAssemblerMachineR2.graphics_set.animation.north.filename = "__RExtended__/graphics/entity/Machinery/Assemblers/half-assembler-r2.png"
HalfAssemblerMachineR2.graphics_set.animation.east.filename = "__RExtended__/graphics/entity/Machinery/Assemblers/half-assembler-r2.png"

data:extend({recipe_HalfAssemblerMachineR2, item_HalfAssemblerMachineR2, HalfAssemblerMachineR2})