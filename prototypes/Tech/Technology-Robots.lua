
data:extend({
    {
        type = "technology",
        name = "red-robots",
        icon = "__RExtended__/graphics/Tech/Tree/Robots/Red-Robots.png",
        icon_size = 128,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "red-robot-l"
            },
            {
                type = "unlock-recipe",
                recipe = "red-robot-c"
            },
            {
                type = "unlock-recipe",
                recipe = "red-roboport"
            },
            {
                type = "unlock-recipe",
                recipe = "red-chest-storage"
            },
            {
                type = "unlock-recipe",
                recipe = "red-chest-passive-provider"
            },
            {
                type = "unlock-recipe",
                recipe = "red-chest-requester"
            },
            {
                type = "unlock-recipe",
                recipe = "red-chest-buffer"
            },
            {
                type = "unlock-recipe",
                recipe = "red-chest-active-provider"
            },
        },
        prerequisites = {"construction-robotics","logistic-robotics"},
        unit = {
            count = 10,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1}
            },
            time = 30
        },
        order = "n"
    },
    {-- Worker Robot Battery 1
        type = "technology",
        name = "worker-robot-battery-1",
        icon = "__RExtended__/graphics/Tech/Tree/Robots/worker-robot-battery.png",
        icon_size = 128,
        effects = {
            {
                type = "worker-robot-battery",
                modifier = 0.2
            }
        },
        prerequisites = {"robotics"},
        unit = {
            count_formula = "100*L",
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1}
            },
            time = 30
        },
        upgrade = true,
        max_level = 3,
        order = "c-k-h-e"
    },
    {-- Worker Robot Battery 2
        type = "technology",
        name = "worker-robot-battery-4",
        icon = "__RExtended__/graphics/Tech/Tree/Robots/worker-robot-battery.png",
        icon_size = 128,
        effects = {
            {
                type = "worker-robot-battery",
                modifier = 0.2
            }
        },
        prerequisites = {"worker-robot-battery-1"},
        unit = {
            count_formula = "100*L",
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"production-science-pack", 1}
            },
            time = 45
        },
        upgrade = true,
        max_level = 7,
        order = "c-k-h-f"
    },
    {--Worker Robot Battery 3--
        type = "technology",
        name = "worker-robot-battery-8",
        icon = "__RExtended__/graphics/Tech/Tree/Robots/worker-robot-battery.png",
        icon_size = 128,
        effects = {
            {
                type = "worker-robot-battery",
                modifier = 0.2
            }
        },
        prerequisites = {"worker-robot-battery-4"},
        unit =
        {
            count_formula = "100*L",
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"production-science-pack", 1},
                {"utility-science-pack", 1}
            },
            time = 60
        },
        upgrade = true,
        max_level = 11,
        order = "c-k-h-g"
    },
    {-- Worker Robot Battery 4
        type = "technology",
        name = "worker-robot-battery-12",
        icon = "__RExtended__/graphics/Tech/Tree/Robots/worker-robot-battery.png",
        icon_size = 128,
        effects = {
            {
                type = "worker-robot-battery",
                modifier = 0.2
            }
        },
        prerequisites = {"worker-robot-battery-8"},
        unit =
        {
            count_formula = "100*L",
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"production-science-pack", 1},
                {"utility-science-pack", 1},
                {"space-science-pack", 1}
            },
            time = 60
        },
        upgrade = true,
        max_level = "infinite",
        order = "c-k-h-h"
    }
})