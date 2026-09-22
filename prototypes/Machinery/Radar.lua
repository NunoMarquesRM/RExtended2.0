data:extend({
	{
		type = "item",
		name = "red-radar",
		icon = "__RExtended__/graphics/icons/Machinery/Radar.png",
		icon_size = 64,
		subgroup = "machinery-lab",
		order = "g-d-a",
		place_result = "red-radar",
		stack_size = 20
	},
	{
		type = "recipe",
		name = "red-radar",
		energy_required = 5,
		enabled = true,
		ingredients = {
			{type = "item", name = "radar", amount = 2},
			{type = "item", name = "advanced-circuit", amount = 2}
			--{type = "item", name = "copper-gear-wheel-r1", amount = 4}
		},
		results = {{type="item", name="red-radar", amount=1}}
	},
	{
		type = "radar",
		name = "red-radar",
		icon = "__RExtended__/graphics/icons/Machinery/Radar.png",
		icon_size = 64,
		flags = {"placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "red-radar"},
		max_health = 1000,
		corpse = "big-remnants",
		resistances = {
			{
				type = "fire",
				percent = 80
			},
			{
				type = "impact",
				percent = 50
			}
		},
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		energy_per_sector = "12MJ",
		max_distance_of_sector_revealed = 75,
		max_distance_of_nearby_sector_revealed = 25,
		energy_per_nearby_scan = "600kJ",
		energy_source = {
			type = "electric",
			usage_priority = "secondary-input"
		},
		energy_usage = "1MW",
		pictures = {
			layers = {{
				filename = "__RExtended__/graphics/entity/Machinery/Radar.png",
				priority = "low",
				width = 256,
				height = 256,
				apply_projection = false,
				direction_count = 4,
				line_length = 4,
				shift = {0.5, -0.5},
				scale = 0.5,
				animation_speed = 0.25
			}}
		},
		vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		working_sound = {
			sound = { { filename = "__base__/sound/radar.ogg" } },
			apparent_volume = 2
		},
		radius_minimap_visualisation_color = { r = 0.059, g = 0.092, b = 0.235, a = 0.275 }
	}
})


