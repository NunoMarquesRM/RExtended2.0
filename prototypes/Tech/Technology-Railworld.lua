data:extend({
    -- Electric Train R1
    create_tech("electric-railway-r1", "Railworld/eletric-train-r1", 128, "c-k-a",
        {"railway", "electric-engine", "electric-energy-accumulators"},
        {
            count = 250,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1}
            },
            time = 30
        },
        {
            create_unlock_recipe("workshop-loco-r1"),
            create_unlock_recipe("et-control-station-1"),
            create_unlock_recipe("et-electric-locomotive-1")
        }
    ),
    -- Electric Train R2
    create_tech("electric-railway-r2", "Railworld/eletric-train-r2", 128, "c-k-b",
        {"sonic-tech-r2"},
        {
            count = 500,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"production-science-pack", 1}
            },
            time = 30
        },
        {create_unlock_recipe("et-electric-locomotive-2")}
    ),
    -- Electric Train R3
    create_tech("electric-railway-r3", "Railworld/eletric-train-r3", 128, "c-k-f",
        {"sonic-tech-r3"},
        {
            count = 500,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"military-science-pack", 1},
                {"production-science-pack", 1},
                {"utility-science-pack", 1},
                {"space-science-pack", 1}
            },
            time = 30
        },
        {create_unlock_recipe("et-electric-locomotive-3")}
    ),
    -- Sonic Train R1
    create_tech("sonic-tech-r1", "Railworld/sonic-r1", 128, "c-k-c",
        {"electric-railway-r1"},
        {
            count = 450,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"military-science-pack", 1}
            },
            time = 30
        },
        {
            create_unlock_recipe("sonic-train-r1"),
            create_unlock_recipe("workshop-giga-r1"),
            create_unlock_recipe("giga-fuel"),
            create_unlock_recipe("giga-fuel2"),
            create_unlock_recipe("giga-fuel3")
        }
    ),
    -- Sonic Train R2
    create_tech("sonic-tech-r2", "Railworld/sonic-r2", 128, "c-k-d",
        {"sonic-tech-r1"},
        {
            count = 500,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"military-science-pack", 1}
            },
            time = 30
        },
        {
            create_unlock_recipe("sonic-train-r2"),
            create_unlock_recipe("giga-fuel-r2")
        }
    ),
    -- Sonic Train R3
    create_tech("sonic-tech-r3", "Railworld/sonic-r3", 128, "c-k-e",
        {"electric-railway-r2"},
        {
            count = 500,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"military-science-pack", 1},
                {"utility-science-pack", 1}
            },
            time = 30
        },
        {
            create_unlock_recipe("sonic-train-r3"),
            create_unlock_recipe("giga-fuel-r3")
        }
    ),
    -- Wagons R1
    create_tech("railway-r1", "Railworld/railway-r1", 128, "c-l-a",
        {"electric-railway-r1", "fluid-wagon"},
        {
            count = 350,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1}
            },
            time = 30
        },
        {
            create_unlock_recipe("workshop-wagon-r1"),
            create_unlock_recipe("cargo-wagon-r1"),
            create_unlock_recipe("fluid-wagon-r1")
        }
    ),
    -- Wagons R2
    create_tech("railway-r2", "Railworld/railway-r2", 128, "c-l-b",
        {"railway-r1"},
        {
            count = 500,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"utility-science-pack", 1}
            },
            time = 30
        },
        {
            create_unlock_recipe("cargo-wagon-r2"),
            create_unlock_recipe("fluid-wagon-r2")
        }
    ),
    -- Wagons R3
    create_tech("railway-r3", "Railworld/railway-r3", 128, "c-l-c",
        {"railway-r2"},
        {
            count = 450,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"utility-science-pack", 1}
            },
            time = 30
        },
        {
            create_unlock_recipe("cargo-wagon-copper-r1"),
            create_unlock_recipe("cargo-wagon-iron-r1"),
            create_unlock_recipe("cargo-wagon-stone-r1"),
            create_unlock_recipe("cargo-wagon-stone-r2"),
            create_unlock_recipe("cargo-wagon-coal-r1"),
            create_unlock_recipe("cargo-wagon-uranium-r1"),
            create_unlock_recipe("cargo-wagon-uranium-r2")
        }
    )
})
