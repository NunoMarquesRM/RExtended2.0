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
    {--Storage Tank 100K
        type = "item",
        name = "big-storage-tank-r1",
        icon = "__RExtended__/graphics/icons/Storage/BigStorageTank/big-storage-tank-r1.png",
        icon_size = 32,
        subgroup = "machinery-storage",
        order = "e-a-a",
        place_result = "big-storage-tank-r1",
        stack_size = 25
    },
    {--Storage Tank 500K
        type = "item",
        name = "big-storage-tank-r2",
        icon = "__RExtended__/graphics/icons/Storage/BigStorageTank/big-storage-tank-r2.png",
        icon_size = 32,
        subgroup = "machinery-storage",
        order = "e-a-b",
        place_result = "big-storage-tank-r2",
        stack_size = 25
    },
    --RECIPE
    {--Storage Tank 100K-
        type = "recipe",
        name = "big-storage-tank-r1",
        energy_required = 4,
        enabled = false,
        ingredients = {
            {type = "item", name = "storage-tank", amount = 5},
            {type = "item", name = "pipe", amount = 5},
            {type = "item", name = "steel-plate", amount = 5}
            --{type = "item", name = "glue-r1", amount = 10}
        },
        results = {{type="item", name="big-storage-tank-r1", amount=1}}
    },
    {--Storage Tank 500K-
        type = "recipe",
        name = "big-storage-tank-r2",
        energy_required = 4,
        enabled = false,
        ingredients = {
            {type = "item", name = "big-storage-tank-r1", amount = 5},
            {type = "item", name = "pipe", amount = 15},
            {type = "item", name = "reinforced-copper-plate-r1", amount = 20},
            {type = "item", name = "reinforced-coal-plate-r1", amount = 20},
            {type = "item", name = "glue-r1", amount = 15}
        },
        results = {{type="item", name="big-storage-tank-r2", amount=1}}
    },
    --ENTITY
    {--Storage Tank 100K
        type = "storage-tank",
        name = "big-storage-tank-r1",
        icon = "__RExtended__/graphics/icons/Storage/BigStorageTank/big-storage-tank-r1.png",
        icon_size = 32,
        flags = {"placeable-player", "player-creation"},
        minable = {mining_time = 1, result = "big-storage-tank-r1"},
        max_health = 900,
        corpse = "medium-remnants",
        collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
        selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
        fluid_box = {
            volume = 100000,
            pipe_covers = npipecovers(),
            pipe_connections = {
                { direction = defines.direction.north, position = {0, -1.2} },
                { direction = defines.direction.east,  position = {1.2, 0}  },
                { direction = defines.direction.south, position = {0, 1.2}  },
                { direction = defines.direction.west,  position = {-1.2, 0} }
            }
        },
        window_bounding_box = {{-0.125, 0.6875}, {0.1875, 1.1875}},
        pictures = {
            picture = {
                sheets = {{
                    filename = "__RExtended__/graphics/entity/Storage/BigStorageTank/big-storage-tank-r1.png",
                    priority = "extra-high",
                    frames = 1,
                    width = 256,
                    height = 256,
                    scale = 0.5,
                    shift = {0.4375, -0.375},
                },}
            },
            fluid_background = {
                filename = "__RExtended__/graphics/entity/Storage/BigStorageTank/empty.png",
                priority = "extra-high",
                width = 32,
                height = 32
            },
            window_background = {
                filename = "__RExtended__/graphics/entity/Storage/BigStorageTank/empty.png",
                priority = "extra-high",
                width = 32,
                height = 32,
            },
            flow_sprite = {
                filename = "__RExtended__/graphics/entity/Storage/BigStorageTank/empty.png",
                priority = "extra-high",
                width = 32,
                height = 32
            },
            gas_flow = {
                filename = "__RExtended__/graphics/entity/Storage/BigStorageTank/empty.png",
                priority = "extra-high",
                line_length = 1,
                width = 32,
                height = 32,
                frame_count = 1,
                axially_symmetrical = false,
                direction_count = 1,
                animation_speed = 0.25,
            }
        },
        flow_length_in_ticks = 360,
        vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
        working_sound = { 
            sound = { filename = "__base__/sound/storage-tank.ogg", volume = 0.8 },
            match_volume_to_activity = true,
            apparent_volume = 1.5,
            max_sounds_per_type = 3
        },
        circuit_wire_connection_points = circuit_connector_definitions["storage-tank"].points,
        circuit_connector_sprites = circuit_connector_definitions["storage-tank"].sprites,
        circuit_wire_max_distance = default_circuit_wire_max_distance
    },
    {--Storage Tank 500K
        type = "storage-tank",
        name = "big-storage-tank-r2",
        icon = "__RExtended__/graphics/icons/Storage/BigStorageTank/big-storage-tank-r2.png",
        icon_size = 32,
        flags = {"placeable-player", "player-creation"},
        minable = {mining_time = 1, result = "big-storage-tank-r2"},
        max_health = 1000,
        corpse = "medium-remnants",
        collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
        selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
        fluid_box = {
            volume = 500000,
            pipe_covers = npipecovers(),
            pipe_connections = {
                { direction = defines.direction.north, position = {0, -1.2} },
                { direction = defines.direction.east,  position = {1.2, 0}  },
                { direction = defines.direction.south, position = {0, 1.2}  },
                { direction = defines.direction.west,  position = {-1.2, 0} }
            }
        },
        window_bounding_box = {{-0.125, 0.6875}, {0.1875, 1.1875}},
        pictures = {
            picture = {
                sheets = {{
                    filename = "__RExtended__/graphics/entity/Storage/BigStorageTank/big-storage-tank-r2.png",
                    priority = "extra-high",
                    frames = 1,
                    width = 256,
                    height = 256,
                    scale = 0.5,
                    shift = {0.4375, -0.375},
                },}
            },
            fluid_background = {
                filename = "__RExtended__/graphics/entity/Storage/BigStorageTank/empty.png",
                priority = "extra-high",
                width = 32,
                height = 32
            },
            window_background = {
                filename = "__RExtended__/graphics/entity/Storage/BigStorageTank/empty.png",
                priority = "extra-high",
                width = 32,
                height = 32,
            },
            flow_sprite = {
                filename = "__RExtended__/graphics/entity/Storage/BigStorageTank/empty.png",
                priority = "extra-high",
                width = 32,
                height = 32
            },
            gas_flow = {
                filename = "__RExtended__/graphics/entity/Storage/BigStorageTank/empty.png",
                priority = "extra-high",
                line_length = 1,
                width = 32,
                height = 32,
                frame_count = 1,
                axially_symmetrical = false,
                direction_count = 1,
                animation_speed = 0.25,
            }
        },
        flow_length_in_ticks = 360,
        vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
        working_sound = { 
            sound = { filename = "__base__/sound/storage-tank.ogg", volume = 0.8 },
            match_volume_to_activity = true,
            apparent_volume = 1.5,
            max_sounds_per_type = 3
        },
        circuit_wire_connection_points = circuit_connector_definitions["storage-tank"].points,
        circuit_connector_sprites = circuit_connector_definitions["storage-tank"].sprites,
        circuit_wire_max_distance = default_circuit_wire_max_distance
    }
})

----- New Elite Storage Tank 5M
data:extend({
    {-- Item
        type = "item",
        name = "elite-storage-tank-r3",
        icon = "__RExtended__/graphics/icons/Storage/BigStorageTank/Elite-storage-tank-r3.png",
        icon_size = 32,
        subgroup = "machinery-storage",
        order = "e-a-c",
        place_result = "elite-storage-tank-r3",
        stack_size = 10
    },
    {-- Recipe
        type = "recipe",
        name = "elite-storage-tank-r3",
        energy_required = 4,
        enabled = false,
        ingredients = {
            {type = "item", name = "big-storage-tank-r2", amount = 3},
            {type = "item", name = "pipe", amount = 50},
            {type = "item", name = "reinforced-copper-plate-r1", amount = 20},
            {type = "item", name = "reinforced-coal-plate-r1", amount = 20},
            {type = "item", name = "glue-r1", amount = 15}
        },
        results = {{type="item", name="elite-storage-tank-r3", amount=1}}
    },
    {
        type = "storage-tank",
        name = "elite-storage-tank-r3",
        icon = "__RExtended__/graphics/icons/Storage/BigStorageTank/Elite-storage-tank-r3.png",
        icon_size = 32,
        flags = {"placeable-player", "player-creation"},
        minable = {mining_time = 1, result = "elite-storage-tank-r3"},
        max_health = 2000,
        corpse = "big-remnants",
        resistances = {
            {type = "physical",percent = 50},
            {type = "fire",percent = 80},
            {type = "impact",percent = 80}
        },
        collision_box = {{-2.45, -2.45}, {2.45, 2.45}},
        selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
        fluid_box = {
            volume = 5000000,
            pipe_covers = pipecoverspictures(),
            pipe_connections = {             
                { direction = defines.direction.north, position = {-1, -2}},
                { direction = defines.direction.north, position = {0, -2} },
                { direction = defines.direction.north, position = {1, -2} },
                { direction = defines.direction.east,  position = {2, -1} },
                { direction = defines.direction.east,  position = {2, 0}  },
                { direction = defines.direction.east,  position = {2, 1}  },
                { direction = defines.direction.south, position = {-1, 2} },
                { direction = defines.direction.south, position = {0, 2}  },
                { direction = defines.direction.south, position = {1, 2}  },
                { direction = defines.direction.west,  position = {-2, -1}},
                { direction = defines.direction.west,  position = {-2, 0} },
                { direction = defines.direction.west,  position = {-2, 1} }
            }
        },
        window_bounding_box = {{-0.125, 0.6875}, {0.1875, 1.1875}},
        pictures = {
            picture = {
                sheet = {
                    filename = "__RExtended__/graphics/entity/Storage/BigStorageTank/Elite-storage-tank-r3.png",
                    priority = "extra-high",
                    frames = 1,
                    scale = 0.5,
                    width = 426,
                    height = 426,
                }
            },
            fluid_background = {
                filename = "__base__/graphics/entity/storage-tank/fluid-background.png",
                priority = "extra-high",
                width = 32,
                height = 15
            },
            window_background = {
                filename = "__base__/graphics/entity/storage-tank/window-background.png",
                priority = "extra-high",
                width = 17,
                height = 24
            },
            flow_sprite = {
                filename = "__base__/graphics/entity/pipe/fluid-flow-low-temperature.png",
                priority = "extra-high",
                width = 160,
                height = 20
            },
            gas_flow = {
                filename = "__base__/graphics/entity/pipe/steam.png",
                priority = "extra-high",
                line_length = 10,
                width = 24,
                height = 15,
                frame_count = 60,
                axially_symmetrical = false,
                direction_count = 1,
                animation_speed = 0.25,
                hr_version = {
                    filename = "__base__/graphics/entity/pipe/hr-steam.png",
                    priority = "extra-high",
                    line_length = 10,
                    width = 48,
                        height = 30,
                    frame_count = 60,
                    axially_symmetrical = false,
                    animation_speed = 0.25,
                    direction_count = 1
                }
            }
        },
        flow_length_in_ticks = 360,
        vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
        working_sound = {
            sound = {
                filename = "__base__/sound/storage-tank.ogg",
                volume = 0.5
            },
            apparent_volume = 1.5,
            max_sounds_per_type = 3
        },
        circuit_wire_connection_points = circuit_connector_definitions["storage-tank"].points,
        circuit_connector_sprites = circuit_connector_definitions["storage-tank"].sprites,
        circuit_wire_max_distance = 20,
    }
})
