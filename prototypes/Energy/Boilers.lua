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

local function create_boiler_recipe(base_name, name, energy_required, enabled, ingredients, results)
    local recipe = table.deepcopy(data.raw.recipe[base_name])
    recipe.name = name
    recipe.energy_required = energy_required
    recipe.enabled = enabled
    recipe.ingredients = ingredients
    recipe.results = results
    return recipe
end

local function create_boiler_item(name, icon_name, icon_size, order)
    local item = table.deepcopy(data.raw.item["boiler"])
    item.name = name
    item.icon = "__RExtended__/graphics/icons/Energy/Boiler/" .. icon_name .. ".png"
    item.icon_size = icon_size
    item.subgroup = "power-boilers"
    item.order = order
    item.place_result = name
    return item
end

local function setup_boiler_entity(entity, name, icon_name, icon_size, max_health, energy_consumption)
    entity.name = name
    entity.icon = "__RExtended__/graphics/icons/Energy/Boiler/" .. icon_name .. ".png"
    entity.icon_size = icon_size
    entity.minable = {
        mining_time = 0.3,
        result = name
    }
    entity.max_health = max_health
    entity.collision_box = {{-1.2, -1.2}, {1.2, 1.2}}
    entity.selection_box = {{-1.5, -1.5}, {1.5, 1.5}}
    entity.mode = "output-to-separate-pipe"
    entity.target_temperature = 200
    entity.burning_cooldown = 20
    entity.energy_consumption = energy_consumption
    return entity
end

-- Recipes
data:extend({
    -- base_name, name, energy_required, enabled, ingredients, results
    create_boiler_recipe("boiler", "boiler-r2", 1, false,
        {
            {type = "item", name = "boiler", amount = 2},
            {type = "item", name = "pipe", amount = 2},
            {type = "item", name = "copper-plate", amount = 5}
        },
        {{type = "item", name = "boiler-r2", amount = 1}}
    ),
    create_boiler_recipe("boiler", "boiler-r3", 1, false,
        {
            {type = "item", name = "boiler-r2", amount = 2},
            {type = "item", name = "pipe", amount = 3},
            {type = "item", name = "steel-plate", amount = 3}
        },
        {{type = "item", name = "boiler-r3", amount = 1}}
    )
})
-- Items
data:extend({
    create_boiler_item("boiler-r2", "R2", 32, "b-a")
    create_boiler_item("boiler-r3", "R3", 64, "b-b")
})

--- Boiler R2
local br2 = setup_boiler_entity(table.deepcopy(data.raw["boiler"]["boiler"]),
    "boiler-r2", "R2", 32, 350, "15MW")

br2.collision_box = {{-1.2, -1.2}, {1.2, 1.2}}
br2.selection_box = {{-1.5, -1.5}, {1.5, 1.5}}
br2.fluid_box = {
    volume = 1000,
    base_level = -1,
    pipe_covers = npipecovers(),
    pipe_connections = {
        {flow_direction = "input-output", direction = defines.direction.west,  position = {-1.2, 0}},
        {flow_direction = "input-output", direction = defines.direction.south, position = {0, 1.2} },
        {flow_direction = "input-output", direction = defines.direction.east,  position = {1.2, 0} }
    },
    production_type = "input-output",
    filter = "water"
}
br2.output_fluid_box = {
    volume = 1000,
    pipe_covers = npipecovers(),
    pipe_connections = {{flow_direction = "output", direction = defines.direction.north, position = {0, -1.2}}},
    production_type = "output",
    filter = "steam"
}
br2.energy_source = {
    type = "burner",
    fuel_categories = {"chemical"},
    effectivity = 1,
    fuel_inventory_size = 1,
    emissions = 0.011,
    smoke = {{
        name = "smoke",
        north_position={-0.125, -1}, south_position={-0.125, -1},
        east_position={-0.125, -1}, west_position={-0.125, -1},
        height=1, deviation={0.1, 0.1},    frequency=25
    }}
}
br2.pictures = {
    north = {
        structure = {
            layers = {{
                filename = "__RExtended__/graphics/entity/Energy/Boiler/r2.png",
                priority = "extra-high",
                width = 256,
                height = 256,
                shift = {0.25, -0.1},
                scale = 0.5
            }}
        },
        fire = {
            filename = "__base__/graphics/entity/boiler/boiler-N-idle.png",
            priority = "extra-high",
            width = 269,
            height = 221,
            shift = util.by_pixel(-1.25, 5.25),
            scale = 0
        },
        fire_glow = {
            filename = "__base__/graphics/entity/boiler/boiler-N-shadow.png",
            priority = "extra-high",
            width = 274,
            height = 164,
            scale = 0,
            shift = util.by_pixel(20.5, 9),
            draw_as_shadow = false
        }
    },
    east = {
        structure = {
            layers = {{
                filename = "__RExtended__/graphics/entity/Energy/Boiler/r2.png",
                priority = "extra-high",
                width = 256,
                height = 256,
                shift = {0.25, -0.1},
                scale = 0.5
            }}
        },
        fire = {
            filename = "__base__/graphics/entity/boiler/boiler-N-idle.png",
            priority = "extra-high",
            width = 269,
            height = 221,
            shift = util.by_pixel(-1.25, 5.25),
            scale = 0
        },
        fire_glow = {
            filename = "__base__/graphics/entity/boiler/boiler-N-shadow.png",
            priority = "extra-high",
            width = 274,
            height = 164,
            scale = 0,
            shift = util.by_pixel(20.5, 9),
            draw_as_shadow = false
        }
    },
    south = {
        structure = {
            layers = {{
                filename = "__RExtended__/graphics/entity/Energy/Boiler/r2.png",
                priority = "extra-high",
                width = 256,
                height = 256,
                shift = {0.25, -0.1},
                scale = 0.5
            }}
        },
        fire = {
            filename = "__base__/graphics/entity/boiler/boiler-N-idle.png",
            priority = "extra-high",
            width = 269,
            height = 221,
            shift = util.by_pixel(-1.25, 5.25),
            scale = 0
        },
        fire_glow = {
            filename = "__base__/graphics/entity/boiler/boiler-N-shadow.png",
            priority = "extra-high",
            width = 274,
            height = 164,
            scale = 0,
            shift = util.by_pixel(20.5, 9),
            draw_as_shadow = false
        }
    },
    west = {
        structure = {
            layers = {{
                filename = "__RExtended__/graphics/entity/Energy/Boiler/r2.png",
                priority = "extra-high",
                width = 256,
                height = 256,
                shift = {0.25, -0.1},
                scale = 0.5
            }}
        },
        fire = {
            filename = "__base__/graphics/entity/boiler/boiler-N-idle.png",
            priority = "extra-high",
            width = 269,
            height = 221,
            shift = util.by_pixel(-1.25, 5.25),
            scale = 0
        },
        fire_glow = {
            filename = "__base__/graphics/entity/boiler/boiler-N-shadow.png",
            priority = "extra-high",
            width = 274,
            height = 164,
            scale = 0,
            shift = util.by_pixel(20.5, 9),
            draw_as_shadow = false
        }
    }
}

--- Boiler R3
local br3 = setup_boiler_entity(table.deepcopy(data.raw["boiler"]["boiler"]),
    "boiler-r3", "R3", 64, 350, "60MW")

br3.collision_box = {{-1.2, -1.2}, {1.2, 1.2}}
br3.selection_box = {{-1.5, -1.5}, {1.5, 1.5}}
br3.fluid_box = {
    volume = 1000,
    base_area = 7.55,
    height = 2,
    base_level = -2,
    pipe_connections = {
        {flow_direction = "input-output", direction = defines.direction.west,  position = {-1.2, 0}},
        {flow_direction = "input-output", direction = defines.direction.south, position = {0, 1.2} },
        {flow_direction = "input-output", direction = defines.direction.east,  position = {1.2, 0} }
    },
    production_type = "input-output",
    filter = "water"
}
br3.output_fluid_box = {
    volume = 1000,
    base_area = 3,
    height = 2,
    pipe_connections = {{flow_direction = "output", direction = defines.direction.north, position = {0, -1.2}}},
    production_type = "output",
    filter = "steam"
}
br3.energy_source = {
    type = "burner",
    fuel_categories = {"chemical"},
    effectivity = 1,
    fuel_inventory_size = 1,
    emissions = 0.011,
    smoke = {{
        name = "smoke",
        north_position = {-0.75, -2.25},
        deviation = {0.1, 0.1},
        frequency = 20.0
    }}
}
br3.pictures = {
    north = {
        structure = {
            layers ={{
                filename = "__RExtended__/graphics/entity/Energy/Boiler/r3.png",
                priority = "extra-high", width = 256, height = 256, scale=0.5,
                shift = {0.375, -0.25}
            }}
        },
        fire = {
            filename = "__base__/graphics/entity/boiler/boiler-N-idle.png",
            priority = "extra-high",
            width = 269,
            height = 221,
            shift = util.by_pixel(-1.25, 5.25),
            scale = 0
        },
        fire_glow = {
            filename = "__base__/graphics/entity/boiler/boiler-N-shadow.png",
            priority = "extra-high",
            width = 274,
            height = 164,
            scale = 0,
            shift = util.by_pixel(20.5, 9),
            draw_as_shadow = false
        }
    },
    east = {
        structure = {
            layers = {{
                filename = "__RExtended__/graphics/entity/Energy/Boiler/r3.png",
                priority = "extra-high", width = 256, height = 256, scale=0.5,
                shift = {0.375, -0.25}
            }}
        },
        fire = {
            filename = "__base__/graphics/entity/boiler/boiler-N-idle.png",
            priority = "extra-high",
            width = 269,
            height = 221,
            shift = util.by_pixel(-1.25, 5.25),
            scale = 0
        },
        fire_glow = {
            filename = "__base__/graphics/entity/boiler/boiler-N-shadow.png",
            priority = "extra-high",
            width = 274,
            height = 164,
            scale = 0,
            shift = util.by_pixel(20.5, 9),
            draw_as_shadow = false
        }
    },
    south = {
        structure = {
            layers = {{
                filename = "__RExtended__/graphics/entity/Energy/Boiler/r3.png",
                priority = "extra-high", width = 256, height = 256, scale=0.5,
                shift = {0.375, -0.25}
            }}
        },
        fire = {
            filename = "__base__/graphics/entity/boiler/boiler-N-idle.png",
            priority = "extra-high",
            width = 269,
            height = 221,
            shift = util.by_pixel(-1.25, 5.25),
            scale = 0
        },
        fire_glow = {
            filename = "__base__/graphics/entity/boiler/boiler-N-shadow.png",
            priority = "extra-high",
            width = 274,
            height = 164,
            scale = 0,
            shift = util.by_pixel(20.5, 9),
            draw_as_shadow = false
        }
    },
    west = {
        structure = {
            layers = {{
                filename = "__RExtended__/graphics/entity/Energy/Boiler/r3.png",
                priority = "extra-high", width = 256, height = 256, scale=0.5,
                shift = {0.375, -0.25}
            }}
        },
        fire = {
            filename = "__base__/graphics/entity/boiler/boiler-N-idle.png",
            priority = "extra-high",
            width = 269,
            height = 221,
            shift = util.by_pixel(-1.25, 5.25),
            scale = 0
        },
        fire_glow = {
            filename = "__base__/graphics/entity/boiler/boiler-N-shadow.png",
            priority = "extra-high",
            width = 274,
            height = 164,
            scale = 0,
            shift = util.by_pixel(20.5, 9),
            draw_as_shadow = false
        }
    }
}

data:extend({br2, br3})
