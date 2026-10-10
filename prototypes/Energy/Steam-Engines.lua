function npipecovers()
    return {
        north = {
            filename = "__RExtended__/graphics/entity/Pipes/pipe-cover-north.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
        },
        east = {
            filename = "__RExtended__/graphics/entity/Pipes/clear.png",
            priority = "extra-high",
            width = 32,
            height = 32
        },
        south = {
            filename = "__RExtended__/graphics/entity/Pipes/pipe-cover-south.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
        },
        west = {
            filename = "__RExtended__/graphics/entity/Pipes/clear.png",
            priority = "extra-high",
            width = 32,
            height = 32
        }
    }
end

local function create_steam_engine_recipe(name, ingredients)
    local recipe = table.deepcopy(data.raw.recipe["steam-engine"])
    recipe.name = name
    recipe.enabled = false
    recipe.ingredients = ingredients
    recipe.results = {
        {type = "item", name = name, amount = 1}
    }
    return recipe
end

local function create_steam_engine_item(name, icon_name, order)
    local item = table.deepcopy(data.raw.item["steam-engine"])
    item.name = name
    item.icon = "__RExtended__/graphics/icons/Energy/Steam-engines/" .. icon_name .. ".png"
    item.icon_size = 32
    item.subgroup = "power-steam"
    item.order = order
    item.place_result = name
    return item
end

data:extend({
    create_steam_engine_recipe("steam-engine-r2",
        {
            {type = "item", name = "steam-engine", amount = 3},
            {type = "item", name = "copper-gear-wheel-r1", amount = 15},
            {type = "item", name = "copper-plate", amount = 8}
        }
    ),
    create_steam_engine_recipe("steam-engine-r3",
        {
            {type = "item", name = "steam-engine-r2", amount = 2},
            {type = "item", name = "iron-gear-wheel", amount = 5},
            {type = "item", name = "iron-plate", amount = 5},
            {type = "item", name = "steel-plate", amount = 2}
        }
    ),
    create_steam_engine_item("steam-engine-r2", "R2", "c-a"),
    create_steam_engine_item("steam-engine-r3", "R3", "c-b")
})

local function setup_steam_engine_entity(entity, name, tier, max_health, effectivity, base_area, mining_time)
    entity.name = name
    entity.icon = "__RExtended__/graphics/icons/Energy/Steam-engines/" .. tier .. ".png"
    entity.icon_size = 32
    entity.flags = {"placeable-neutral", "player-creation"}
    entity.minable = {
        mining_time = mining_time,
        result = name
    }
    entity.max_health = max_health
    entity.corpse = "big-remnants"
    entity.effectivity = effectivity
    entity.fluid_usage_per_tick = 30 / 60
    entity.maximum_temperature = 200
    entity.resistances = {
        {type = "fire", percent = 70}
    }
    entity.collision_box = {{-1.3, -1.7}, {1.3, 1.7}}
    entity.selection_box = {{-1.5, -2.0}, {1.5, 2.0}}
    entity.fluid_box = {
        volume = 1000,
        base_area = base_area,
        pipe_covers = npipecovers(),
        pipe_connections = {
            {
                flow_direction = "input-output",
                direction = defines.direction.north,
                position = {0, -1.7}
            },
            {
                flow_direction = "input-output",
                direction = defines.direction.south,
                position = {0, 1.7}
            }
        },
        production_type = "input-output",
        filter = "steam"
    }
    entity.fluid_input = {
        name = "steam",
        amount = 0.0,
        minimum_temperature = 100.0
    }
    entity.energy_source = {
        type = "electric",
        usage_priority = "secondary-output"
    }
    entity.two_direction_only = true
    return entity
end

local sr2 = setup_steam_engine_entity(table.deepcopy(data.raw["generator"]["steam-engine"]),
    "steam-engine-r2", "R2", 650, 4.5, 2, 0.3)
    sr2.pictures = {
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
                    shift = {0.5625, -0.28125},
                    scale = 0.5
                }}
            }
        }
    }

local sr3 = setup_steam_engine_entity(table.deepcopy(data.raw["generator"]["steam-engine"]),
    "steam-engine-r3", "R3", 950, 18, 3, 1)
    sr3.pictures = {
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

data:extend({sr2, sr3})
