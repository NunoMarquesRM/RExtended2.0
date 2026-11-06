data:extend({
    -- Steam Energy 1 (Boiler && Steam Engine R2)
    create_tech("steam-energy-r1", "Energy/Steam-Energy-R2", 256, "c-b-a",
        {"engine"},
        {
            count = 200,
            ingredients = {
                {science_packs.red, 1},
                {science_packs.green, 1}
            },
            time = 30
        },
        {
            create_unlock_recipe("boiler-r2"),
            create_unlock_recipe("steam-engine-r2")
        }
    ),
    -- Steam Energy 2 (Steam Engine && Boiler R3)
    create_tech("steam-energy-r2", "Energy/Steam-Energy-R3", 256, "c-b-b",
        {"steam-energy-r1"},
        {
            count = 800,
            ingredients = {
                {science_packs.red, 1},
                {science_packs.green, 1},
                {science_packs.blue, 1},
                {science_packs.purple, 1}
            },
            time = 30
        },
        {
            create_unlock_recipe("boiler-r3"),
            create_unlock_recipe("steam-engine-r3")
        }
    ),
    -- Big Pole R2
    create_tech("electric-energy-poles-r1", "Poles/electric-energy-distribution-1", 128, "c-f-a",
        {"electric-energy-distribution-1"},
        {
            count = 300,
            ingredients = {
                {science_packs.red, 1},
                {science_packs.green, 1}
            },
            time = 30
        },
        {
            create_unlock_recipe("light-pole-r1"),
            create_unlock_recipe("medium-pole-r1"),
            create_unlock_recipe("long-pole-r1")
        }
    ),
    -- Substation R2
    create_tech("electric-energy-poles-r2", "Poles/electric-energy-distribution-2", 128, "c-f-b",
        {"electric-energy-distribution-2", "electric-energy-poles-r1"},
        {
            count = 300,
            ingredients = {
                {science_packs.red, 1},
                {science_packs.green, 1},
                {science_packs.blue, 1}
            },
            time = 30
        },
        {create_unlock_recipe("substation-pole-r1")}
    ),
    -- Solar Panel Equipment R2
    create_tech("solar-panel-equipment-tech-r2", "Energy/Solar-Panel-Equipment-R2", 256, "d-a-a",
        {"solar-panel-equipment", "solar-energy-r2"},
        {
            count = 500,
            ingredients = {
                {science_packs.red, 1},
                {science_packs.green, 1},
                {science_packs.blue, 1},
                {science_packs.purple, 1}
            },
            time = 30
        },
        {create_unlock_recipe("solar-panel-equipment-r2")}
    ),
    -- Solar Panel R2
    create_tech("solar-energy-r2", "Energy/Solar-Energy-R2", 256, "c-n-c",
        {"solar-energy", "silicon-processing"},
        {
            count = 1000,
            ingredients = {
                {science_packs.red, 1},
                {science_packs.green, 1},
                {science_packs.blue, 1}
            },
            time = 30
        },
        {
            create_unlock_recipe("solar-cell-r1"),
            create_unlock_recipe("solar-panel-r2")
        }
    ),
    -- Solar Panel R3
    create_tech("solar-energy-r3", "Energy/Solar-Energy-R3", 256, "c-n-e",
        {"solar-energy-r2"},
        {
            count = 1500,
            ingredients = {
                {science_packs.red, 1},
                {science_packs.green, 1},
                {science_packs.black, 1},
                {science_packs.blue, 1}
            },
            time = 30
        },
        {create_unlock_recipe("solar-panel-r3")}
    ),
    -- Solar Panel R4
    create_tech("solar-energy-r4", "Energy/Solar-Energy-R4", 256, "c-n-e",
        {"solar-energy-r3", "electric-energy-distribution-2"},
        {
            count = 1500,
            ingredients = {
                {science_packs.red, 1},
                {science_packs.green, 1},
                {science_packs.blue, 1},
                {science_packs.purple, 1}
            },
            time = 30
        },
        {create_unlock_recipe("solar-panel-r4")}
    ),
    -- Solar Panel R5
    create_tech("solar-energy-r5", "Energy/Solar-Energy-R5", 256, "c-n-f",
        {"solar-energy-r4"},
        {
            count = 3000,
            ingredients = {
                {science_packs.red, 1},
                {science_packs.green, 1},
                {science_packs.blue, 1},
                {science_packs.purple, 1},
                {science_packs.yellow, 1}
            },
            time = 30
        },
        {create_unlock_recipe("solar-panel-r5")}
    ),
    -- Energy Accumulator R1
    create_tech("energy-accumulator-r1", "Energy/Electric-Energy-Acumulators-R1", 256, "c-h-a",
        {"electric-energy-accumulators", "lithium-r1"},
        {
            count = 500,
            ingredients = {
                {science_packs.red, 1},
                {science_packs.green, 1},
                {science_packs.blue, 1}
            },
            time = 30
        },
        {
            create_unlock_recipe("accumulator-r2"),
            create_unlock_recipe("battery-r1")
        }
    ),
    -- Energy Accumulator R2
    create_tech("energy-accumulator-r2", "Energy/Electric-Energy-Acumulators-R3", 256, "c-h-b",
        {"energy-accumulator-r1"},
        {
            count = 1000,
            ingredients = {
                {science_packs.red, 1},
                {science_packs.green, 1},
                {science_packs.blue, 1},
                {science_packs.purple, 1},
                {science_packs.yellow, 1}
            },
            time = 30
        },
        {create_unlock_recipe("accumulator-r3")}
    )
})
