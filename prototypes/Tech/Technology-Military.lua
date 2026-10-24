data:extend({
    create_tech("laser-turret-r2", "Military/Laser-Turret", 256, "a-j-b-1",
        {"laser-turret", "military-3", "power-armor-mk2"},
        {
            count = 2000,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"military-science-pack", 1},
                {"chemical-science-pack", 1},
                {"production-science-pack", 1},
                {"utility-science-pack", 1},
                {"space-science-pack", 1}
            },
            time = 60,
        },
        {{type = "unlock-recipe", recipe = "laser-turret-r2"}}
    ),
    create_tech("exoskeleton-tech-r2", "Military/Exoskeleton-Tech-r2", 256, "a-j-b",
        {"exoskeleton-equipment", "power-armor-mk2"},
        {
            count = 1500,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"military-science-pack", 1},
                {"chemical-science-pack", 1},
                {"production-science-pack", 1},
                {"utility-science-pack", 1},
                {"space-science-pack", 1}
            },
            time = 30,
        },
        {{type = "unlock-recipe", recipe = "exoskeleton-equipment-r2"}}
    )
})
