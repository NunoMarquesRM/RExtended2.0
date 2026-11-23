local function elite_tank_pipe_pictures()
    local pictures = table.deepcopy(castpipepictures())
    pictures.north.filename =
        "__RExtended__/graphics/entity/Pipes/Elite/Elite-Tank-Connector-North.png"
    pictures.north.shift = {0.28125, 2.015625}
    pictures.south.filename =
        "__RExtended__/graphics/entity/Pipes/Elite/Elite-Tank-Connector-South.png"
    return pictures
end

local function elite_tank_pipe_covers()
    local function cover(direction, shift)
        return {
            filename = "__RExtended__/graphics/entity/Pipes/Elite/Elite-Tank-Cap-" .. direction .. ".png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.25,
            shift = shift
        }
    end
    return {
        north = util.empty_sprite(),
        east = util.empty_sprite(),
        south = cover("South", {0, -0.609375}),
        west = util.empty_sprite()
    }
end

local function create_storage_tank_item(name, icon_name, order, stack_size, icon_size)
    return {
        type = "item",
        name = name,
        icon = "__RExtended__/graphics/icons/Storage/" .. icon_name .. ".png",
        icon_size = icon_size or 32,
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
    local picture_name = tier == "r2" and "big-storage-tank-r2-advanced-hd" or "big-storage-tank-" .. tier
    local icon_name = tier == "r2" and "big-storage-tank-r2-advanced" or "big-storage-tank-" .. tier
    entity.name = name
    entity.icon = "__RExtended__/graphics/icons/Storage/" .. icon_name .. ".png"
    entity.icon_size = (tier == "r1" or tier == "r2") and 256 or 32
    entity.flags = {"placeable-player", "player-creation"}
    entity.minable = {mining_time = 0.5, result = name}
    entity.max_health = max_health
    entity.corpse = "medium-remnants"
    entity.collision_box = {{-1.2, -1.2}, {1.2, 1.2}}
    entity.selection_box = {{-1.5, -1.5}, {1.5, 1.5}}
    entity.fluid_box = {
        volume = volume,
        pipe_covers = pipe_r2_covers(),
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
                filename = "__RExtended__/graphics/entity/Storage/BigStorageTank/" .. picture_name .. ".png",
                priority = "extra-high",
                frames = 1,
                width = (tier == "r1" or tier == "r2") and 512 or 256,
                height = (tier == "r1" or tier == "r2") and 512 or 256,
                scale = (tier == "r1" or tier == "r2") and 0.25 or 0.5,
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
    create_storage_tank_item("big-storage-tank-r1", "big-storage-tank-r1", "e-a", 25, 256),
    create_storage_tank_item("big-storage-tank-r2", "big-storage-tank-r2-advanced", "e-b", 20, 256),
    create_storage_tank_item("elite-storage-tank-r3", "Elite-storage-tank-r3", "e-c", 10, 256),
    
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
            {type = "item", name = "machine-case-r2", amount = 1},
            {type = "item", name = "fuse-r2", amount = 2}
        }
    ),
    create_storage_tank_recipe("elite-storage-tank-r3",
        {
            {type = "item", name = "big-storage-tank-r2", amount = 3},
            {type = "item", name = "pipe", amount = 50},
            {type = "item", name = "machine-case-r3", amount = 1},
            {type = "item", name = "fuse-r3", amount = 2}
        }
    ),
    setup_big_storage_tank(table.deepcopy(data.raw["storage-tank"]["storage-tank"]),
        "big-storage-tank-r1", "r1", 100000, 900),
    setup_big_storage_tank(table.deepcopy(data.raw["storage-tank"]["storage-tank"]),
        "big-storage-tank-r2", "r2", 500000, 1000),
    
    {-- New Elite Storage Tank 5M
        type = "storage-tank",
        name = "elite-storage-tank-r3",
        icon = "__RExtended__/graphics/icons/Storage/Elite-storage-tank-r3.png",
        icon_size = 256,
        icon_draw_specification = {scale = 2},
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
            pipe_picture = elite_tank_pipe_pictures(),
            draw_only_when_connected = true,
            secondary_draw_orders = {north = -1, east = -1, south = 1, west = -1},
            pipe_covers = elite_tank_pipe_covers(),
            always_draw_covers = true,
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
                sheets = {
                    {
                        filename = "__RExtended__/graphics/entity/Storage/BigStorageTank/Elite-storage-tank-r3-shadow.png",
                        priority = "extra-high",
                        frames = 1,
                        scale = 0.25,
                        width = 1152,
                        height = 852,
                        shift = {1.171875, 0},
                        draw_as_shadow = true
                    },
                    {
                        filename = "__RExtended__/graphics/entity/Storage/BigStorageTank/Elite-storage-tank-r3.png",
                        priority = "extra-high",
                        frames = 1,
                        scale = 0.25,
                        width = 852,
                        height = 852
                    }
                }
            },
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
