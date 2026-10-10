local function create_storage_tank_item(name, icon_name, order, stack_size)
    return {
        type = "item",
        name = name,
        icon = "__RExtended__/graphics/icons/Storage/BigStorageTank/" .. icon_name .. ".png",
        icon_size = 32,
        subgroup = "machinery-storage",
        order = order,
        place_result = name,
        stack_size = stack_size
    }
end

local function create_storage_tank_recipe(name, ingredients)
    return {
        type = "recipe",
        name = name,
        energy_required = 4,
        enabled = false,
        ingredients = ingredients,
        results = {
            {type = "item", name = name, amount = 1}
        }
    }
end

local function setup_big_storage_tank(entity, name, tier, volume, max_health)
    entity.name = name
    entity.icon = "__RExtended__/graphics/icons/Storage/BigStorageTank/big-storage-tank-" .. tier .. ".png"
    entity.icon_size = 32
    entity.flags = {"placeable-player", "player-creation"}
    entity.minable = {
        mining_time = 1,
        result = name
    }
    entity.max_health = max_health
    entity.corpse = "medium-remnants"
    entity.collision_box = {{-1.2, -1.2}, {1.2, 1.2}}
    entity.selection_box = {{-1.5, -1.5}, {1.5, 1.5}}
    entity.fluid_box = {
        volume = volume,
        pipe_covers = npipecovers(),
        pipe_connections = {
            {direction = defines.direction.north, position = {0, -1.2}},
            {direction = defines.direction.east, position = {1.2, 0}},
            {direction = defines.direction.south, position = {0, 1.2}},
            {direction = defines.direction.west, position = {-1.2, 0}}
        }
    }
    entity.window_bounding_box = {{-0.125, 0.6875}, {0.1875, 1.1875}}
    entity.pictures = {
        picture = {
            sheets = {{
                filename = "__RExtended__/graphics/entity/Storage/BigStorageTank/big-storage-tank-" .. tier .. ".png",
                priority = "extra-high",
                frames = 1,
                width = 256,
                height = 256,
                scale = 0.5,
                shift = {0.4375, -0.375}
            }}
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
            height = 32
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
            animation_speed = 0.25
        }
    }
    entity.flow_length_in_ticks = 360
    entity.vehicle_impact_sound = {
        filename = "__base__/sound/car-metal-impact.ogg",
        volume = 0.65
    }
    entity.working_sound = {
        sound = {
            filename = "__base__/sound/storage-tank.ogg",
            volume = 0.8
        },
        match_volume_to_activity = true,
        apparent_volume = 1.5,
        max_sounds_per_type = 3
    }
    entity.circuit_wire_connection_points = circuit_connector_definitions["storage-tank"].points
    entity.circuit_connector_sprites = circuit_connector_definitions["storage-tank"].sprites
    entity.circuit_wire_max_distance = default_circuit_wire_max_distance
    return entity
end

data:extend({
    create_storage_tank_item("big-storage-tank-r1", "big-storage-tank-r1", "e-a-a", 25),
    create_storage_tank_item("big-storage-tank-r2", "big-storage-tank-r2", "e-a-b", 20),
    create_storage_tank_item("elite-storage-tank-r3", "Elite-storage-tank-r3", "e-a-c", 10),
    
    create_storage_tank_recipe("big-storage-tank-r1",
        {
            {type = "item", name = "storage-tank", amount = 5},
            {type = "item", name = "pipe", amount = 5},
            {type = "item", name = "steel-plate", amount = 5},
            {type = "item", name = "glue-r1", amount = 10}
        }
    ),
    create_storage_tank_recipe("big-storage-tank-r2",
        {
            {type = "item", name = "big-storage-tank-r1", amount = 5},
            {type = "item", name = "pipe", amount = 15},
            {type = "item", name = "reinforced-copper-plate-r1", amount = 20},
            {type = "item", name = "reinforced-coal-plate-r1", amount = 20},
            {type = "item", name = "glue-r1", amount = 15}
        }
    ),
    create_storage_tank_recipe("elite-storage-tank-r3",
        {
            {type = "item", name = "big-storage-tank-r2", amount = 3},
            {type = "item", name = "pipe", amount = 50},
            {type = "item", name = "reinforced-copper-plate-r1", amount = 30},
            {type = "item", name = "reinforced-coal-plate-r1", amount = 30},
            {type = "item", name = "glue-r1", amount = 20}
        }
    ),
    setup_big_storage_tank(table.deepcopy(data.raw["storage-tank"]["storage-tank"]),
        "big-storage-tank-r1", "r1", 100000, 900),
    setup_big_storage_tank(table.deepcopy(data.raw["storage-tank"]["storage-tank"]),
        "big-storage-tank-r2", "r2", 500000, 1000),
    
    {-- New Elite Storage Tank 5M
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
                    height = 426
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
        circuit_wire_max_distance = 20
    }
})
