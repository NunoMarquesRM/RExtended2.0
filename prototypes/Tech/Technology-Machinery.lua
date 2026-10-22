data:extend({
    -- Warehouse R1
    create_tech("warehouse-tech", "Storage/warehouse-tech", 128, "c-e-a",
        {"steel-processing"},
        {
            count = 750,
            ingredients = {
                {science_packs.red, 1},
                {science_packs.green, 1},
                {science_packs.blue, 1}
            },
            time = 20
        },
        {create_unlock_recipe("warehouse-r1")}
    ),
    -- Big Storage Tank R1 - 100K
    create_tech("big-storage-tank-r1", "Storage/big-storage-tank-r1", 128, "c-e-f",
        {"fluid-handling"},
        {
            count = 250,
            ingredients = {
                {science_packs.red, 1},
                {science_packs.green, 1},
                {science_packs.blue, 1}
            },
            time = 30
        },
        {create_unlock_recipe("big-storage-tank-r1")}
    ),
    -- Big Storage Tank R2 - 500K
    create_tech("big-storage-tank-r2", "Storage/big-storage-tank-r2", 128, "c-e-g",
        {"big-storage-tank-r1"},
        {
            count = 350,
            ingredients = {
                {science_packs.red, 1},
                {science_packs.green, 1},
                {science_packs.black, 1},
                {science_packs.blue, 1},
                {science_packs.purple, 1}
            },
            time = 30
        },
        {create_unlock_recipe("big-storage-tank-r2")}
    ),
    -- Big Storage Tank R3 - 5M
    create_tech("elite-storage-tank-r3", "Storage/Elite-storage-tank-r3", 128, "c-e-h",
        {"big-storage-tank-r2"},
        {
            count = 500,
            ingredients = {
                {science_packs.red, 1},
                {science_packs.green, 1},
                {science_packs.black, 1},
                {science_packs.blue, 1},
                {science_packs.purple, 1},
                {science_packs.yellow, 1},
                {science_packs.white, 1}
            },
            time = 30
        },
        {create_unlock_recipe("elite-storage-tank-r3")}
    ),
    -- Electric Mining Drill R2
    create_tech("electric-mining-r2", "Machinery/r-08", 128, "c-i-a",
        {"automation-2"},
        {
            count = 400,
            ingredients = {
                {science_packs.red, 1},
                {science_packs.green, 1}
            },
            time = 30
        },
        {create_unlock_recipe("mining-drill-r2")}
    ),
    -- Electric Mining Drill R3
    create_tech("electric-mining-r3", "Machinery/r-09", 128, "c-i-b",
        {"electric-mining-r2"},
        {
            count = 600,
            ingredients = {
                {science_packs.red, 1},
                {science_packs.green, 1},
                {science_packs.blue, 1},
                {science_packs.purple, 1},
                {science_packs.black, 1}
            },
            time = 25
        },
        {create_unlock_recipe("mining-drill-r3")}
    ),
    -- Electric Furnace R1 (use the vanilla icon)
    (function()
        local tech = create_tech("electric-furnace-r1", "Machinery/r-01", 256, "a-d-b",
            {"electronics"},
            {
                count = 60,
                ingredients = {{science_packs.red, 1}},
                time = 15
            },
            {
                create_unlock_recipe("electric-stone-furnace"),
                create_unlock_recipe("clean-steel-r1-v1"),
                create_unlock_recipe("formation-furnace-r1"),
                create_unlock_recipe("steel-plate-r1-v1")
            }
        )
        tech.icon = "__base__/graphics/technology/advanced-material-processing.png"
        tech.icon_mipmaps = 4
        return tech
    end)(),
    -- Electric Furnace R2 (use the vanilla icon)
    (function()
        local tech = create_tech("electric-furnace-r2", "Machinery/r-01", 256, "c-j-b",
            {"advanced-material-processing"},
            {
                count = 100,
                ingredients = {
                    {science_packs.red, 1},
                    {science_packs.green, 1},
                    {science_packs.blue, 1}
                },
                time = 20
            },
            {create_unlock_recipe("electric-steel-furnace")}
        )
        tech.icon = "__base__/graphics/technology/advanced-material-processing.png"
        tech.icon_mipmaps = 4
        return tech
    end)(),
    -- Silicon Processing
    create_tech("silicon-processing", "C&R/silicon-processing", 128, "c-n-a",
        {"solar-energy"},
        {
            count = 175,
            ingredients = {
                {science_packs.red, 1},
                {science_packs.green, 1}
            },
            time = 20
        },
        {
            create_unlock_recipe("blue-quartz-r1"),
            create_unlock_recipe("crystalline-silicon-r1")
        }
    ),
    -- Machinery R1
    create_tech("machinery-r1", "Assemblers/machinery-r1", 128, "a-d-c",
        {"electric-furnace-r1"},
        {
            count = 100,
            ingredients = {{science_packs.red, 1}},
            time = 25
        },
        {create_unlock_recipe("half-assembler-r1")}
    ),
    -- Machinery R2
    create_tech("machinery-r2", "Assemblers/machinery-r2", 128, "c-j-c",
        {"automation-2", "electric-furnace-r2"},
        {
            count = 200,
            ingredients = {
                {science_packs.red, 1},
                {science_packs.green, 1}
            },
            time = 25
        },
        {create_unlock_recipe("assembler-r1")}
    ),
    -- Machinery R3
    create_tech("machinery-r3", "Assemblers/machinery-r3", 128, "c-j-d",
        {"automation-3", "machinery-r2"},
        {
            count = 500,
            ingredients = {
                {science_packs.red, 1},
                {science_packs.green, 1},
                {science_packs.blue, 1},
                {science_packs.purple, 1},
                {science_packs.yellow, 1}
            },
            time = 30
        },
        {create_unlock_recipe("assembler-r2")}
    ),
    -- Charcoal (wood to coal)
    create_tech("charcoal-r1", "C&R/charcoal-r1", 128, "a-f-c",
        {"logistics"},
        {
            count = 100,
            ingredients = {{science_packs.red, 1}},
            time = 30
        },
        {create_unlock_recipe("coal-r1")}
    ),
    -- Enriched Coal
    create_tech("diesel-energy-r1", "C&R/enrichedCoal-r1", 128, "c-b-d",
        {"steam-energy-r2", "oil-processing"},
        {
            count = 750,
            ingredients = {
                {science_packs.red, 1},
                {science_packs.green, 1},
                {science_packs.blue, 1}
            },
            time = 30
        },
        {
            create_unlock_recipe("enriched-coal-r1"),
            create_unlock_recipe("diesel-fuel"),
            create_unlock_recipe("enrichment-chamber-r1")
        }
    ),
    -- Refined Coal
    create_tech("refined-coal-r1", "C&R/clean-coal-r1", 32, "a-f-d",
        {"charcoal-r1", "clean-products-r1"},
        {
            count = 100,
            ingredients = {
                {science_packs.red, 1},
                {science_packs.green, 1}
            },
            time = 30
        },
        {
            create_unlock_recipe("clean-coal-r1"),
            create_unlock_recipe("glue-r1-v2")
        }
    ),
    -- Water Condenser
    create_tech("water-product-r1", "Machinery/r-04", 128, "a-d-d",
        {"machinery-r1"},
        {
            count = 150,
            ingredients = {{science_packs.red, 1}},
            time = 25
        },
        {
            create_unlock_recipe("water-condenser-electric-r1"),
            create_unlock_recipe("water-r1"),
            create_unlock_recipe("air-purificator-r1"),
            create_unlock_recipe("pure-air-r1"),
            create_unlock_recipe("purificator-tool-r1"),
            create_unlock_recipe("purificator-tool-r1-empty")
        }
    ),
    -- Initial Products
    create_tech("initial-products-r1", "C&R/r-1", 128, "a-a-a", nil,
        {
            count = 50,
            ingredients = {{science_packs.red, 1}},
            time = 25
        },
        {
            create_unlock_recipe("reinforced-component-r1"),
            create_unlock_recipe("reinforced-coal-plate-r1"),
            create_unlock_recipe("reinforced-gear-iron-r1"),
            create_unlock_recipe("reinforced-gear-copper-r1")
        }
    ),
    -- Mixer Products
    create_tech("mixer-products-r1", "C&R/r-2", 128, "a-b-a",
        {"initial-products-r1"},
        {
            count = 50,
            ingredients = {{science_packs.red, 1}},
            time = 25
        },
        {
            create_unlock_recipe("mixer-r1"),
            create_unlock_recipe("glue-r1-v1"),
            create_unlock_recipe("reinforced-iron-plate-r1"),
            create_unlock_recipe("reinforced-copper-plate-r1")
        }
    ),
    -- Advanced Products
    create_tech("adv-products-r1", "C&R/r-3", 128, "a-c-a",
        {"mixer-products-r1"},
        {
            count = 100,
            ingredients = {
                {science_packs.red, 1},
                {science_packs.green, 1}
            },
            time = 25
        },
        {
            create_unlock_recipe("electric-component-r1"),
            create_unlock_recipe("cable-r1")
        }
    ),
    -- Clean Products
    create_tech("clean-products-r1", "Machinery/r-01", 128, "a-c-d",
        {"automation-2", "adv-products-r1"},
        {
            count = 150,
            ingredients = {
                {science_packs.red, 1},
                {science_packs.green, 1}
            },
            time = 25
        },
        {
            create_unlock_recipe("compressor-r1"),
            create_unlock_recipe("washer-chamber-r1"),
            create_unlock_recipe("pressurized-water-r1"),
            create_unlock_recipe("clean-iron-r1"),
            create_unlock_recipe("clean-copper-r1"),
            create_unlock_recipe("iron-plate-r1-v1"),
            create_unlock_recipe("copper-plate-r1-v1")
        }
    ),
    -- Advanced Formation Furnace
    create_tech("adv-formation-furnace-r1", "Machinery/r-06", 128, "a-f-e",
        {"electric-furnace-r1", "refined-coal-r1"},
        {
            count = 200,
            ingredients = {
                {science_packs.red, 1},
                {science_packs.green, 1},
                {science_packs.blue, 1}
            },
            time = 25
        },
        {
            create_unlock_recipe("formation-furnace-electric-r1"),
            create_unlock_recipe("clean-steel-r1-v2")
        }
    ),
    -- Advanced Ore Processing R1
    create_tech("adv-ore-processing-r1", "Machinery/r-05", 128, "a-c-e",
        {"clean-products-r1", "adv-formation-furnace-r1"},
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
        {
            create_unlock_recipe("heat-forge-chamber-r1"),
            create_unlock_recipe("cast-chamber-r1"),
            create_unlock_recipe("molten-iron-r1"),
            create_unlock_recipe("molten-copper-r1"),
            create_unlock_recipe("molten-steel-r1"),
            create_unlock_recipe("iron-plate-r1-v2"),
            create_unlock_recipe("copper-plate-r1-v2"),
            create_unlock_recipe("steel-plate-r1-v2")
        }
    ),
    -- Advanced Chemical Machine R1
    create_tech("adv-chemical-machine-r1", "Machinery/r-07", 128, "a-f-e",
        {"chemical-science-pack"},
        {
            count = 300,
            ingredients = {
                {science_packs.red, 1},
                {science_packs.green, 1},
                {science_packs.blue, 1}
            },
            time = 25
        },
        {create_unlock_recipe("chemical-machine-r1")}
    ),
    -- Refinery R1
    create_tech("refinery-machine-r1", "Machinery/r-03", 128, "b-b-a",
        {"lubricant"},
        {
            count = 400,
            ingredients = {
                {science_packs.red, 1},
                {science_packs.green, 1},
                {science_packs.blue, 1}
            },
            time = 25
        },
        {
            create_unlock_recipe("refinery-r1"),
            create_unlock_recipe("oil-basic-heavy-r1"),
            create_unlock_recipe("oil-basic-light-r1")
        }
    ),
    -- Oil Advanced Processing
    create_tech("oil-advanced-processing-r1", "C&R/r-031", 128, "b-b-b",
        {"refinery-machine-r1"},
        {
            count = 500,
            ingredients = {
                {science_packs.red, 1},
                {science_packs.green, 1},
                {science_packs.blue, 1}
            },
            time = 25
        },
        {
            create_unlock_recipe("oil-advanced-heavy-r1"),
            create_unlock_recipe("oil-advanced-light-r1"),
            create_unlock_recipe("oil-advanced-petroleum-r1")
        }
    ),
    -- Oil Special Processing
    create_tech("oil-special-processing-r1", "C&R/r-032", 128, "b-b-c",
        {"oil-advanced-processing-r1"},
        {
            count = 700,
            ingredients = {
                {science_packs.red, 1},
                {science_packs.green, 1},
                {science_packs.blue, 1}
            },
            time = 25
        },
        {
            create_unlock_recipe("oil-special-heavy-r1"),
            create_unlock_recipe("oil-special-light-r1"),
            create_unlock_recipe("oil-special-petroleum-r1"),
            create_unlock_recipe("oil-special-process-r1")
        }
    ),
    -- Lithium
    create_tech("lithium-r1", "C&R/lithium-r1", 128, "c-n-b",
        {"silicon-processing", "oil-processing"},
        {
            count = 200,
            ingredients = {
                {science_packs.red, 1},
                {science_packs.green, 1}
            },
            time = 30
        },
        {
            create_unlock_recipe("molten-coal-r1"),
            create_unlock_recipe("enriched-petro-r1"),
            create_unlock_recipe("lithium-r1")
        }
    ),
    -- Beacon
    create_tech("beacon-r1", "Machinery/beacon-r1", 128, "a-c-d",
        {"effect-transmission"},
        {
            count = 200,
            ingredients = {
                {science_packs.red, 1},
                {science_packs.green, 1},
                {science_packs.blue, 1},
                {science_packs.purple, 1}
            },
            time = 30
        },
        {create_unlock_recipe("beacon-r1")}
    ),
    -- Plastics R1 (use the vanilla icon)
    (function()
        local tech = create_tech("plastics-r1", "Machinery/plastics", 256, "d-f",
            {"plastics", "refined-coal-r1"},
            {
                count = 220,
                ingredients = {
                    {science_packs.red, 1},
                    {science_packs.green, 1}
                },
                time = 30
            },
            {create_unlock_recipe("plastic-bar-r1")}
        )
        tech.icon = "__base__/graphics/technology/plastics.png"
        tech.icon_mipmaps = 4
        return tech
    end)(),
    -- Advanced Chemical Machine R2
    create_tech("adv-chemical-machine-r2", "Machinery/r-07-1", 128, "a-f-f",
        {"adv-chemical-machine-r1"},
        {
            count = 500,
            ingredients = {
                {science_packs.red, 1},
                {science_packs.green, 1},
                {science_packs.blue, 1},
                {science_packs.purple, 1},
                {science_packs.yellow, 1}
            },
            time = 40
        },
        {create_unlock_recipe("chemical-machine-r2")}
    ),
    -- Advanced Clean Products R2
    create_tech("adv-clean-products-r2", "Machinery/r-01-1", 128, "a-f-g",
        {"clean-products-r1"},
        {
            count = 500,
            ingredients = {
                {science_packs.red, 1},
                {science_packs.green, 1},
                {science_packs.blue, 1},
                {science_packs.purple, 1},
                {science_packs.yellow, 1}
            },
            time = 40
        },
        {
            create_unlock_recipe("compressor-r2"),
            create_unlock_recipe("washer-chamber-r2")
        }
    ),
    -- Advanced Ore Processing R2
    create_tech("adv-ore-processing-r2", "Machinery/r-05-1", 128, "a-f-h",
        {"adv-ore-processing-r1"},
        {
            count = 500,
            ingredients = {
                {science_packs.red, 1},
                {science_packs.green, 1},
                {science_packs.blue, 1},
                {science_packs.purple, 1},
                {science_packs.yellow, 1}
            },
            time = 40
        },
        {
            create_unlock_recipe("cast-chamber-r2"),
            create_unlock_recipe("heat-forge-chamber-r2")
        }
    ),
    -- Advanced Water Condenser
    create_tech("adv-water-r2", "Machinery/r-04-1", 128, "a-f-h",
        {"water-product-r1"},
        {
            count = 500,
            ingredients = {
                {science_packs.red, 1},
                {science_packs.green, 1},
                {science_packs.blue, 1},
                {science_packs.purple, 1},
                {science_packs.yellow, 1}
            },
            time = 40
        },
        {create_unlock_recipe("water-condenser-electric-r2")}
    ),
    -- Advanced Half Assembler
    create_tech("adv-machinery-r2", "Assemblers/machinery-r1-1", 128, "a-f-i",
        {"machinery-r1", "machinery-r2"},
        {
            count = 500,
            ingredients = {
                {science_packs.red, 1},
                {science_packs.green, 1},
                {science_packs.blue, 1},
                {science_packs.purple, 1},
                {science_packs.yellow, 1}
            },
            time = 40
        },
        {create_unlock_recipe("half-assembler-r2")}
    ),
    -- Refinery R2
    create_tech("refinery-machine-r2", "Machinery/r-03-1", 128, "a-f-j",
        {"refinery-machine-r1"},
        {
            count = 500,
            ingredients = {
                {science_packs.red, 1},
                {science_packs.green, 1},
                {science_packs.blue, 1},
                {science_packs.purple, 1},
                {science_packs.yellow, 1}
            },
            time = 40
        },
        {create_unlock_recipe("refinery-r2")}
    )
})
