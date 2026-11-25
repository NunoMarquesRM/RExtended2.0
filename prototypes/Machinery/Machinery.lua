-- Enrichment Chamber's short front adapter seats inside its built-in south mouth.
local function enrichment_chamber_r1_pipe_pictures()
    local pictures = compressor_pipepictures()
    pictures.south = {
        filename = "__RExtended__/graphics/entity/Pipes/Enrichment-Chamber-R1-Connector-South.png",
        priority = "extra-high", width = 256, height = 256,
        scale = 0.5, shift = {0.28125, -1.875}
    }
    return pictures
end

-- Mixer-specific front and rear sleeves; retain the existing east/west connectors.
local function mixer_r1_pipe_pictures()
    local pictures = compressor_pipepictures()
    pictures.north.filename = "__RExtended__/graphics/entity/Pipes/Mixer-R1-Connector-North.png"
    pictures.south.filename = "__RExtended__/graphics/entity/Pipes/Mixer-R1-Connector-South.png"
    pictures.south.shift = {0.28125, -1.875}
    return pictures
end

-- The flat south face follows fluidbox recipe visibility, including connected ports.
local water_condenser_r1_pipe_pictures = washerpipepictures()
water_condenser_r1_pipe_pictures.south = {
    filename = "__RExtended__/graphics/entity/Pipes/Water-Condenser-Cap-South-R1.png",
    width = 256, height = 256, shift = {0, -0.5}, scale = 0.25
}
local water_condenser_r1_pipe_covers = pipe_r2_covers()
water_condenser_r1_pipe_covers.south = util.empty_sprite()
data:extend({
    create_machinery_item("water-condenser-electric-r1",
        "__RExtended__/graphics/icons/Machinery/Bulk/Water-Condenser-R1.png",
        256, "machinery-condenser", "h-a", 50),
    create_machinery_item("water-condenser-electric-r2",
        "__RExtended__/graphics/icons/Machinery/Bulk/water-condenser-electric-r2.png",
        32, "machinery-condenser", "h-b", 50),
    create_machinery_item("mixer-r1",
        "__RExtended__/graphics/icons/Machinery/Bulk/Mixer-R1.png",
        256, "machinery-mix", "c-a", 50),
    create_machinery_item("enrichment-chamber-r1",
        "__RExtended__/graphics/icons/Machinery/Bulk/Enrichment-Chamber-R1.png",
        256, "machinery-mix", "c-b", 50),
    create_machinery_item("formation-furnace-r1",
        "__RExtended__/graphics/icons/Machinery/Furnaces/formation-furnace-r1.png",
        256, "machinery-formation", "d-a-a", 50),
    create_machinery_item("formation-furnace-electric-r1",
        "__RExtended__/graphics/icons/Machinery/Bulk/electric-formation-furnace-r1.png",
        32, "machinery-formation", "d-b-a", 50),
    create_machinery_item("beacon-r1", "__RExtended__/graphics/icons/Machinery/Bulk/Beacon-Elite-R1.png",
        256, "machinery-lab", "g-c-a", 25),
    create_machinery_item("centrifuge-r2", "__RExtended__/graphics/icons/Machinery/Bulk/Centrifuge-R2.png",
        64, "machinery-mix", "c-c", 50),

    create_machinery_recipe("water-condenser-electric-r1", 5, false,
        {
            {type = "item", name = "steel-plate", amount = 5},
            {type = "item", name = "reinforced-iron-plate-r1", amount = 10},
            {type = "item", name = "reinforced-copper-plate-r1", amount = 5},
            {type = "item", name = "cable-r1", amount = 10},
            {type = "item", name = "electric-component-r1", amount = 3}
        },
        {{type = "item", name = "water-condenser-electric-r1", amount = 1}}
    ),
    create_machinery_recipe("water-condenser-electric-r2", 5, false,
        {
            {type = "item", name = "water-condenser-electric-r1", amount = 1},
            {type = "item", name = "machine-case-r2", amount = 1},
            {type = "item", name = "fuse-r2", amount = 2},
            {type = "item", name = "steel-plate", amount = 5},
            {type = "item", name = "pipe", amount = 10}
        },
        {{type = "item", name = "water-condenser-electric-r2", amount = 1}}
    ),
    create_machinery_recipe("mixer-r1", 7, false,
        {
            {type = "item", name = "steel-plate", amount = 10},
            {type = "item", name = "reinforced-coal-plate-r1", amount = 10},
            {type = "item", name = "iron-plate", amount = 8},
            {type = "item", name = "reinforced-component-r1", amount = 10}
        },
        {{type = "item", name = "mixer-r1", amount = 1}}
    ),
    create_machinery_recipe("formation-furnace-r1", 2, false,
        {
            {type = "item", name = "reinforced-component-r1", amount = 4},
            {type = "item", name = "reinforced-iron-plate-r1", amount = 4},
            {type = "item", name = "reinforced-copper-plate-r1", amount = 4}
        },
        {{type = "item", name = "formation-furnace-r1", amount = 1}}
    ),
    create_machinery_recipe("formation-furnace-electric-r1", 6, false,
        {
            {type = "item", name = "reinforced-coal-plate-r1", amount = 10},
            {type = "item", name = "reinforced-iron-plate-r1", amount = 10},
            {type = "item", name = "reinforced-copper-plate-r1", amount = 10},
            {type = "item", name = "reinforced-component-r1", amount = 10},
            {type = "item", name = "cable-r1", amount = 10}
        },
        {{type = "item", name = "formation-furnace-electric-r1", amount = 1}}
    ),
    create_machinery_recipe("enrichment-chamber-r1", 4, false,
        {
            {type = "item", name = "machine-case-r1", amount = 2},
            {type = "item", name = "electric-component-r1", amount = 8},
            {type = "item", name = "fuse-r1", amount = 4},
            {type = "item", name = "pipe", amount = 10}
        },
        {{type = "item", name = "enrichment-chamber-r1", amount = 1}}
    ),
    create_machinery_recipe("beacon-r1", 4, false,
        {
            {type = "item", name = "machine-case-r2", amount = 1},
            {type = "item", name = "electric-component-r2", amount = 2},
            {type = "item", name = "fuse-r2", amount = 4},
            {type = "item", name = "cable-r1", amount = 5}
        },
        {{type = "item", name = "beacon-r1", amount = 1}}
    ),
    create_machinery_recipe("centrifuge-r2", 4, false,
        {
            {type = "item", name = "centrifuge", amount = 2},
            {type = "item", name = "machine-case-r3", amount = 1},
            {type = "item", name = "fuse-r3", amount = 2}
        },
        {{type = "item", name = "centrifuge-r2", amount = 1}}
    ),
--ENTITY
    {-- Water Condenser
        type = "assembling-machine",
        name = "water-condenser-electric-r1",
        icon = "__RExtended__/graphics/icons/Machinery/Bulk/Water-Condenser-R1.png",
        icon_size = 256,
        flags = {"placeable-neutral","placeable-player", "player-creation"},
        minable = {hardness = 0.2, mining_time = 0.5, result = "water-condenser-electric-r1"},
        max_health = 240,
        corpse = "big-remnants",
        resistances = {{type = "fire",percent = 80}},
        fluid_boxes = {{
            production_type = "output",
            pipe_picture = water_condenser_r1_pipe_pictures,
            pipe_covers = water_condenser_r1_pipe_covers,
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
        next_upgrade = "water-condenser-electric-r2",
        energy_source = {type = "electric", input_priority = "secondary", usage_priority = "secondary-input", emissions_per_minute = { pollution = 2.8 }},
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
            sound = {{ filename = "__base__/sound/chemical-plant.ogg" }},
            idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
            apparent_volume = 0.8
        },
        graphics_set = {
            animation = {
                layers = {
                    {
                        filename = "__RExtended__/graphics/entity/Machinery/Water-Condensers/Water-Condenser-R1-Idle.png",
                        width = 384, height = 456, shift = {0, -0.5},
                        frame_count = 1, line_length = 1, scale = 0.35
                    }
                }
            },
            working_visualisations = {
                {
                    always_draw = false,
                    animation = {
                        filename = "__RExtended__/graphics/entity/Machinery/Water-Condensers/Water-Condenser-R1-Working.png",
                        width = 384, height = 456, shift = {0, -0.5}, scale = 0.35,
                        frame_count = 60, line_length = 8, animation_speed = 0.5
                    }
                }
            }
        }
    },
    {-- Mixer
        type = "assembling-machine",
        name = "mixer-r1",
        icon = "__RExtended__/graphics/icons/Machinery/Bulk/Mixer-R1.png",
        icon_size = 256,
        flags = {"placeable-neutral","placeable-player", "player-creation"},
        minable = {hardness = 0.2, mining_time = 0.5, result = "mixer-r1"},
        max_health = 300,
        corpse = "big-remnants",
        resistances = {{type = "fire",percent = 70}},
        fluid_boxes = {
            {
                production_type = "input",
                pipe_picture = mixer_r1_pipe_pictures(),
                pipe_covers = pipe_r2_covers(),
                base_area = 10,
                base_level = -1,
                volume = 1000,
                pipe_connections = {{ flow_direction="input", direction = defines.direction.north, position = {0, -1} }},
                secondary_draw_orders = { north = -1 }
            },
            {
                production_type = "output",
                pipe_picture = mixer_r1_pipe_pictures(),
                pipe_covers = pipe_r2_covers(),
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
        energy_source = {type = "electric", input_priority = "secondary", usage_priority = "secondary-input", emissions_per_minute = { pollution = 1 }},
        fast_replaceable_group = "assembling-machine",
        module_slots = 2,
        module_specification = {
            module_info_icon_shift = {0, 0.2},
            module_info_multi_row_initial_height_modifier = -0.3
        },
        allowed_effects = add_quality_effect_if_available(
            {"consumption", "speed", "productivity", "pollution"}
        ),
        working_sound = {
            sound = {{filename = "__base__/sound/chemical-plant.ogg",volume = 0.8},},
            idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
            apparent_volume = 1.5
        },
        graphics_set = {
            animation = {
                filename = "__RExtended__/graphics/entity/Machinery/Mixers/Mixer-R1.png",
                priority = "high",
                width = 384,
                height = 384,
                frame_count = 60,
                line_length = 8,
                animation_speed = 0.5,
                scale = 0.3
            }
        }
    },
    {-- Formation Furnace
        type = "assembling-machine",
        name = "formation-furnace-r1",
        icon = "__RExtended__/graphics/icons/Machinery/Furnaces/formation-furnace-r1.png",
        icon_size = 256,
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
        module_slots = 2,
        module_specification = {
            module_info_icon_shift = {0, 0.2},
            module_info_multi_row_initial_height_modifier = -0.3
        },
        allowed_effects = add_quality_effect_if_available(
            {"consumption", "speed", "productivity", "pollution"}
        ),
        energy_source = {
            type = "burner",
            effectivity = 1,
            fuel_inventory_size = 1,
            emissions_per_minute = { pollution = 2.38 },
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
                filename = "__RExtended__/graphics/entity/Machinery/Furnaces/formation-furnace-r1.png",
                priority = "extra-high",
                width = 384,
                height = 256,
                scale = 0.25,
                frame_count = 1,
                shift = {0.3, 0}
            },
            working_visualisations = {{
                north_position = { 0.078125, 0.5234375},
                west_position = { 0.078125, 0.5234375},
                south_position = { 0.078125, 0.5234375},
                east_position = { 0.078125, 0.5234375},
                animation = {
                    filename = "__RExtended__/graphics/entity/Machinery/Furnaces/formation-furnace-r1-fire.png",
                    width = 92,
                    height = 152,
                    scale = 0.25,
                    frame_count = 12,
                    animation_speed = 0.4,
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
        allowed_effects = add_quality_effect_if_available(
            {"consumption", "speed", "productivity", "pollution"}
        ),
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
            emissions_per_minute = { pollution = 1.75 }
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
    {-- Enrichement Chamber
        type = "assembling-machine",
        name = "enrichment-chamber-r1",
        icon = "__RExtended__/graphics/icons/Machinery/Bulk/Enrichment-Chamber-R1.png",
        icon_size = 256,
        flags = {"placeable-neutral","placeable-player", "player-creation"},
        minable = {hardness = 0.2, mining_time = 0.5, result = "enrichment-chamber-r1"},
        max_health = 300,
        corpse = "big-remnants",
        resistances = {{type = "fire",percent = 70}},
        fluid_boxes = {
            {
                production_type = "input",
                pipe_picture = enrichment_chamber_r1_pipe_pictures(),
                pipe_covers = pipe_r2_covers(),
                base_area = 10,
                base_level = -1,
                volume = 1000,
                pipe_connections = {{ flow_direction="input", direction = defines.direction.north, position = {0, -1} }},
                secondary_draw_orders = { north = -1 },
            },
            {
                production_type = "output",
                pipe_picture = enrichment_chamber_r1_pipe_pictures(),
                pipe_covers = pipe_r2_covers(),
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
        energy_source = {type = "electric", input_priority = "secondary", usage_priority = "secondary-input", emissions_per_minute = { pollution = 50 }},
        module_slots = 5,
        module_specification = {
            module_info_icon_shift = {0, 0.2},
            module_info_multi_row_initial_height_modifier = -0.3
        },
        allowed_effects = add_quality_effect_if_available(
            {"consumption", "speed", "productivity", "pollution"}
        ),
        working_sound = {
            sound = { { filename = "__base__/sound/chemical-plant.ogg", volume = 0.8 }, },
            idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
            apparent_volume = 1.5,
        },
        graphics_set = {
            animation = {
                filename = "__RExtended__/graphics/entity/Machinery/Enrichment-Chambers/Enrichment-Chamber-R1-Working.png",
                width = 256,
                height = 256,
                shift = {0, 0},
                scale = 0.45,
                frame_count = 24,
                line_length = 6,
                animation_speed = 0.333333
            }
        }
    },
    {-- Beacon
        type = "beacon",
        name = "beacon-r1",
        icon = "__RExtended__/graphics/icons/Machinery/Bulk/Beacon-Elite-R1.png",
        icon_size = 256,
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
        allowed_effects = add_quality_effect_if_available(
            {"consumption", "speed", "pollution"}
        ),
        base_picture = {
            layers = {
                {
                    filename = "__RExtended__/graphics/entity/Machinery/Beacons/Beacon-R1-Idle.png",
                    width = 432,
                    height = 432,
                    shift = {0.4375, -1},
                    scale = 0.35
                },
                {
                    filename = "__RExtended__/graphics/entity/Machinery/Beacons/Beacon-R1-Shadow.png",
                    width = 432,
                    height = 432,
                    frame_count = 1,
                    line_length = 6,
                    shift = {0.4375, -1},
                    scale = 0.35,
                    draw_as_shadow = true
                }
            }
        },
        animation = {
            layers = {
                {
                    filename = "__RExtended__/graphics/entity/Machinery/Beacons/Beacon-R1-Animated.png",
                    width = 432,
                    height = 432,
                    line_length = 6,
                    frame_count = 30,
                    shift = {0.4375, -1},
                    scale = 0.35,
                    animation_speed = 0.25
                },
                {
                    filename = "__RExtended__/graphics/entity/Machinery/Beacons/Beacon-R1-Shadow.png",
                    width = 432,
                    height = 432,
                    line_length = 6,
                    frame_count = 30,
                    shift = {0.4375, -1},
                    scale = 0.35,
                    animation_speed = 0.25,
                    draw_as_shadow = true
                }
            }
        },
        radius_visualisation_picture = {
            filename = "__base__/graphics/entity/beacon/beacon-radius-visualization.png",
            priority = "extra-high-no-scale",
            width = 10,
            height = 10
        }
    },
    {-- Centrifuge R2
        type = "assembling-machine",
        name = "centrifuge-r2",
        icon = "__RExtended__/graphics/icons/Machinery/Bulk/Centrifuge-R2.png",
        icon_size = 64,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {mining_time = 0.1, result = "centrifuge-r2"},
        fast_replaceable_group = "centrifuge",
        max_health = 500,
        corpse = "medium-remnants",
        impact_category = "metal-large",
        icon_draw_specification = {shift = {0, -0.3}},
        circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
        circuit_connector = circuit_connector_definitions["centrifuge"],
        resistances = {{ type = "fire", percent = 80}},
        collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
        selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
        crafting_categories = {"centrifuging"},
        crafting_speed = 4,
        energy_usage = "1.2MW",
        energy_source = {type = "electric", usage_priority = "secondary-input", emissions_per_minute = { pollution = 15 }},
        graphics_set = {
            animation = {
                south = { filename = "__RExtended__/graphics/entity/Machinery/Bulk/Centrifuge-R2.png", width = 256, height = 256, shift = {0.34375, -0.5}, scale = 0.5, frame_count = 32, line_length = 8, animation_speed=0.1 },
                west  = { filename = "__RExtended__/graphics/entity/Machinery/Bulk/Centrifuge-R2.png", width = 256, height = 256, shift = {0.34375, -0.5}, scale = 0.5, frame_count = 32, line_length = 8, animation_speed=0.1 },
                north = { filename = "__RExtended__/graphics/entity/Machinery/Bulk/Centrifuge-R2.png", width = 256, height = 256, shift = {0.34375, -0.5}, scale = 0.5, frame_count = 32, line_length = 8, animation_speed=0.1 },
                east  = { filename = "__RExtended__/graphics/entity/Machinery/Bulk/Centrifuge-R2.png", width = 256, height = 256, shift = {0.34375, -0.5}, scale = 0.5, frame_count = 32, line_length = 8, animation_speed=0.1 }
            }
        },
        open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
        close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
        working_sound = {
            sound = {
                { filename = "__base__/sound/assembling-machine-t1-1.ogg", volume = 0.8 },
                { filename = "__base__/sound/assembling-machine-t1-2.ogg", volume = 0.8 },
            },
            idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
            apparent_volume = 1.5,
        },
        module_slots = 2,
        allowed_effects = add_quality_effect_if_available(
            {"consumption", "speed", "productivity", "pollution"}
        )
    }
})

local WaterCondenserR2 = table.deepcopy(data.raw['assembling-machine']['water-condenser-electric-r1'])
WaterCondenserR2.fluid_boxes[1].pipe_picture = washerpipepictures()
WaterCondenserR2.fluid_boxes[1].pipe_covers = pipe_r2_covers()
WaterCondenserR2.name = "water-condenser-electric-r2"
WaterCondenserR2.icon = "__RExtended__/graphics/icons/Machinery/Bulk/water-condenser-electric-r2.png"
WaterCondenserR2.icon_size = 32
WaterCondenserR2.minable.result = "water-condenser-electric-r2"
WaterCondenserR2.energy_usage = "2MW"
WaterCondenserR2.next_upgrade = nil
WaterCondenserR2.energy_source.emissions_per_minute = { pollution = 16 }
WaterCondenserR2.crafting_speed = 4
WaterCondenserR2.module_slots = 3
WaterCondenserR2.module_specification = {
    module_info_icon_shift = {0, 0.2},
    module_info_multi_row_initial_height_modifier = -0.3
}
-- R2 keeps its original animated sheet independently of the R1 graphics.
WaterCondenserR2.graphics_set.working_visualisations = nil
WaterCondenserR2.graphics_set.animation = {
    filename = "__RExtended__/graphics/entity/Machinery/Water-Condensers/water-condenser-electric-r2.png",
    width = 256, height = 304, shift = {0.375, -0.71875}, scale = 0.5,
    frame_count = 24, line_length = 8, animation_speed = 0.4
}

data:extend({WaterCondenserR2})
