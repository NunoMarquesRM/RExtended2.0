data:extend({
    create_tech("red-robots", "Robots/Red-Robots", 128, "n",
        {"construction-robotics", "logistic-robotics"},
        {
            count = 500,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"production-science-pack", 1},
                {"utility-science-pack", 1}
            },
            time = 60
        },
        {
            create_unlock_recipe("red-robot-l"),
            create_unlock_recipe("red-robot-c"),
            create_unlock_recipe("red-roboport"),
            create_unlock_recipe("red-chest-storage"),
            create_unlock_recipe("red-chest-passive-provider"),
            create_unlock_recipe("red-chest-requester"),
            create_unlock_recipe("red-chest-buffer"),
            create_unlock_recipe("red-chest-active-provider")
        }
    ),
    -- Worker Robot Battery 1
    create_tech("worker-robot-battery-1", "Robots/worker-robot-battery", 128, "c-k-h-e",
        {"robotics"},
        {
            count_formula = "100*L",
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1}
            },
            time = 30
        },
        {{type = "worker-robot-battery", modifier = 0.2}},
        true,
        3
    ),
    -- Worker Robot Battery 2
    create_tech("worker-robot-battery-4", "Robots/worker-robot-battery", 128, "c-k-h-f",
        {"worker-robot-battery-1"},
        {
            count_formula = "100*L",
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"production-science-pack", 1}
            },
            time = 45
        },
        {{type = "worker-robot-battery", modifier = 0.2}},
        true,
        7
    ),
    -- Worker Robot Battery 3
    create_tech("worker-robot-battery-8", "Robots/worker-robot-battery", 128, "c-k-h-g",
        {"worker-robot-battery-4"},
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
        {{type = "worker-robot-battery", modifier = 0.2}},
        true,
        11
    ),
    -- Worker Robot Battery 4
    create_tech("worker-robot-battery-12", "Robots/worker-robot-battery", 128, "c-k-h-h",
        {"worker-robot-battery-8"},
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
        {{type = "worker-robot-battery", modifier = 0.2}},
        true,
        "infinite"
    )
})
