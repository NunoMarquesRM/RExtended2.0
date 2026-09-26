data:extend({
    {--Eletric Train R1--
        type = "technology",
        name = "electric-railway-r1",
        icon = "__RExtended__/graphics/Tech/Tree/Railworld/eletric-train-r1.png",
        icon_size = 128,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "workshop-loco-r1"
            },
            {
                type = "unlock-recipe",
                recipe = "et-control-station-1"
            },
            {
                type = "unlock-recipe",
                recipe = "et-electric-locomotive-1"
            }
        },
        prerequisites = {"railway", "electric-engine", "electric-energy-accumulators" },
        unit = {
            count = 250,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1}
            },
            time = 30
        },
        order = "c-k-a",
    },
    {--Eletric Train R2--
        type = "technology",
        name = "electric-railway-r2",
        icon = "__RExtended__/graphics/Tech/Tree/Railworld/eletric-train-r2.png",
        icon_size = 128,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "et-electric-locomotive-2"
            }
        },
        prerequisites = {"electric-railway-r1"},
        unit = {
            count = 500,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1}
            },
            time = 30
        },
        order = "c-k-b",
    },
    {--Eletric Train R3--
        type = "technology",
        name = "electric-railway-r3",
        icon = "__RExtended__/graphics/Tech/Tree/Railworld/eletric-train-r3.png",
        icon_size = 128,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "et-electric-locomotive-3"
            }
        },
        prerequisites = {"sonic-tech-r3"},
        unit = {
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
        order = "c-k-f",
    },
    {--Sonic Train R1--
        type = "technology",
        name = "sonic-tech-r1",
        icon = "__RExtended__/graphics/Tech/Tree/Railworld/sonic-r1.png",
        icon_size = 128,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "sonic-train-r1"
            },
            {
                type = "unlock-recipe",
                recipe = "workshop-giga-r1"
            },
            {
                type = "unlock-recipe",
                recipe = "giga-fuel"
            },
            {
                type = "unlock-recipe",
                recipe = "giga-fuel2"
            },
            {
                type = "unlock-recipe",
                recipe = "giga-fuel3"
            }
        },
        prerequisites = {"electric-railway-r2"},
        unit = {
            count = 450,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"military-science-pack", 1}
            },
            time = 30
        },
        order = "c-k-c",
    },
    {--Sonic Train R2--
        type = "technology",
        name = "sonic-tech-r2",
        icon = "__RExtended__/graphics/Tech/Tree/Railworld/sonic-r2.png",
        icon_size = 128,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "sonic-train-r2"
            },
            {
                type = "unlock-recipe",
                recipe = "giga-fuel-r2"
            }
        },
        prerequisites = {"sonic-tech-r1"},
        unit = {
            count = 475,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"military-science-pack", 1}
            },
            time = 30
        },
        order = "c-k-d",
    },
    {--Sonic Train R3--
        type = "technology",
        name = "sonic-tech-r3",
        icon = "__RExtended__/graphics/Tech/Tree/Railworld/sonic-r3.png",
        icon_size = 128,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "sonic-train-r3"
            },
            {
                type = "unlock-recipe",
                recipe = "giga-fuel-r3"
            }
        },
        prerequisites = {"sonic-tech-r2"},
        unit = {
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
        order = "c-k-e",
    },
    {--Wagons R1--
        type = "technology",
        name = "railway-r1",
        icon = "__RExtended__/graphics/Tech/Tree/Railworld/railway-r1.png",
        icon_size = 128,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "workshop-wagon-r1"
            },
            {
                type = "unlock-recipe",
                recipe = "cargo-wagon-r1"
            },
            {
                type = "unlock-recipe",
                recipe = "fluid-wagon-r1"
            }
        },
        prerequisites = {"electric-railway-r1","fluid-wagon"},
        unit = {
            count = 350,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
            },
            time = 30
        },
        order = "c-l-a",
    },
    {--Wagons R2--
        type = "technology",
        name = "railway-r2",
        icon = "__RExtended__/graphics/Tech/Tree/Railworld/railway-r2.png",
        icon_size = 128,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "cargo-wagon-r2"
            },
            {
                type = "unlock-recipe",
                recipe = "fluid-wagon-r2"
            }
        },
        prerequisites = {"railway-r1"},
        unit = {
            count = 375,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
            },
            time = 30
        },
        order = "c-l-b",
    },
    {--Wagons R3--
        type = "technology",
        name = "railway-r3",
        icon = "__RExtended__/graphics/Tech/Tree/Railworld/railway-r3.png",
        icon_size = 128,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "cargo-wagon-copper-r1"
            },
            {
                type = "unlock-recipe",
                recipe = "cargo-wagon-iron-r1"
            },
            {
                type = "unlock-recipe",
                recipe = "cargo-wagon-stone-r1"
            },
            {
                type = "unlock-recipe",
                recipe = "cargo-wagon-stone-r2"
            },
            {
                type = "unlock-recipe",
                recipe = "cargo-wagon-coal-r1"
            },
            {
                type = "unlock-recipe",
                recipe = "cargo-wagon-uranium-r1"
            },
            {
                type = "unlock-recipe",
                recipe = "cargo-wagon-uranium-r2"
            }
        },
        prerequisites = {"railway-r2"},
        unit = {
            count = 400,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
            },
            time = 30
        },
        order = "c-l-c",
    }
})