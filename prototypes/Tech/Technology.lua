data:extend({
--    {--Steam Energy 1 (Boiler && Steam Engine R2)
--       type = "technology",
--       name = "steam-energy-r1",
--       icon_size = 128,
--       icon = "__RExtended__/graphics/Tech/Tree/Energy/steam-energy-r2.png",
--       effects = {
--           {
--               type = "unlock-recipe",
--               recipe = "boiler-r2"
--           },
--           {
--               type = "unlock-recipe",
--               recipe = "steam-engine-r2"
--           }
--       },
--       prerequisites = {"steel-processing"},
--       unit = {
--           count = 100,
--           ingredients = {
--               {"automation-science-pack",1},
--           },
--           time = 25
--       },
--       order = "c-b-a"
---    },
---    {--Steam Energy 2 (Steam Engine && Boiler R3)
--       type = "technology",
--       name = "steam-energy-r2",
--       icon_size = 128,
--       icon = "__RExtended__/graphics/Tech/Tree/Energy/steam-energy-r3.png",
--       effects = {
--           {
--               type = "unlock-recipe",
--               recipe = "boiler-r3"
--           },
--           {
--               type = "unlock-recipe",
--               recipe = "steam-engine-r3"
--           }
--       },
--       prerequisites = {"steam-energy-r1"},
--       unit = {
--           count = 500,
--           ingredients = {
--               {"automation-science-pack",1},
--               {"logistic-science-pack",1},
--               {"chemical-science-pack", 1}
--           },
--           time = 30
--       },
--       order = "c-b-b"
---    },
---    {--Big Pole R2--
--       type = "technology",
--       name = "electric-energy-poles-r1",
--       icon_size = 128,
--       icon = "__RExtended__/graphics/Tech/Tree/Poles/electric-energy-distribution-1.png",
--       effects = {
--           {
--               type = "unlock-recipe",
--               recipe = "light-pole-r1"
--           },
--           {
--               type = "unlock-recipe",
--               recipe = "medium-pole-r1"
--           },
--           {
--               type = "unlock-recipe",
--               recipe = "long-pole-r1"
--           }
--       },
--       prerequisites = {"electric-energy-distribution-1"},
--       unit = {
--           count = 150,
--           ingredients = {
--               {"automation-science-pack", 1},
--               {"logistic-science-pack", 1}
--           },
--           time = 30
--       },
--       order = "c-f-a"
---    },
---    {--Substation R2--
--       type = "technology",
--       name = "electric-energy-poles-r2",
--       icon_size = 128,
--       icon = "__RExtended__/graphics/Tech/Tree/Poles/electric-energy-distribution-2.png",
--       effects = {
--           {
--               type = "unlock-recipe",
--               recipe = "substation-pole-r1"
--           }
--       },
--       prerequisites = {"electric-energy-distribution-2"},
--       unit = {
--           count = 110,
--           ingredients = {
--               {"automation-science-pack", 1},
--               {"logistic-science-pack", 1},
--               {"chemical-science-pack", 1}
--           },
--           time = 30
--       },
--       order = "c-f-b"
---    },
    {--Solar Panel Equipment R2
       type = "technology",
       name = "solar-panel-equipment-tech-r2",
       icon_size = 128,
       icon = "__RExtended__/graphics/Tech/Tree/Energy/solar-panel-equipment-r2.png",
       prerequisites = {"solar-panel-equipment"},
       effects = {
           {
               type = "unlock-recipe",
               recipe = "solar-panel-equipment-r2"
           }
       },
       unit = {
           count = 120,
           ingredients = {
               {"automation-science-pack",1},
               {"logistic-science-pack",1},
               {"chemical-science-pack",1},
               {"production-science-pack", 1}
           },
           time = 15
       },
       order = "d-a-a"
    },
    {--Solar Panel R2
       type = "technology",
       name = "solar-energy-r2",
       icon_size = 256,
       icon = "__RExtended__/graphics/Tech/Tree/Energy/solar-energy-r2.png",
       effects = {
           --{
           --    type = "unlock-recipe",
           --    recipe = "solar-cell"
           --},
           {
               type = "unlock-recipe",
               recipe = "solar-panel-r2"
           }
       },
       prerequisites = {"solar-energy"},
       unit = {
           count = 1000,
           ingredients = {
               {"automation-science-pack",1},
               {"logistic-science-pack",1}
           },
           time = 30
       },
       order = "c-n-c"
    },
    {--Solar Panel R3
       type = "technology",
       name = "solar-energy-r3",
       icon_size = 256,
       icon = "__RExtended__/graphics/Tech/Tree/Energy/solar-energy-r3.png",
       effects = {
           {
               type = "unlock-recipe",
               recipe = "solar-panel-r3"
           }
       },
       prerequisites = {"solar-energy-r2"},
       unit = {
           count = 1500,
           ingredients = {
               {"automation-science-pack",1},
               {"logistic-science-pack",1},
               {"chemical-science-pack",1}
           },
           time = 30
       },
       order = "c-n-e"
    },
    {--Solar Panel R4
       type = "technology",
       name = "solar-energy-r4",
       icon_size = 1024,
       icon = "__RExtended__/graphics/Tech/Tree/Energy/solar-energy-r4.png",
       effects = {
           {
               type = "unlock-recipe",
               recipe = "solar-panel-r4"
           }
       },
       prerequisites = {"solar-energy-r3","electric-energy-distribution-2"},
       unit = {
           count = 1500,
           ingredients = {
               {"automation-science-pack",1},
               {"logistic-science-pack",1},
               {"chemical-science-pack",1},
               {"military-science-pack", 1},
               {"production-science-pack", 1}
           },
           time = 30
       },
       order = "c-n-e"
    },
    {--Solar Panel R5
       type = "technology",
       name = "solar-energy-r5",
       icon_size = 1024,
       icon = "__RExtended__/graphics/Tech/Tree/Energy/solar-energy-r5.png",
       effects = {
           {
               type = "unlock-recipe",
               recipe = "solar-panel-r5"
           }
       },
       prerequisites = {"solar-energy-r4"},
       unit = {
           count = 2000,
           ingredients = {
               {"automation-science-pack",1},
               {"logistic-science-pack",1},
               {"chemical-science-pack",1},
               {"production-science-pack", 1},
               {"utility-science-pack", 1}
           },
           time = 30
       },
       order = "c-n-f"
    }
})


--Energy Accumulator R1--
local acc_tech_r2 = table.deepcopy(data.raw.technology['electric-energy-accumulators'])
acc_tech_r2.name = "energy-accumulator-r1"
acc_tech_r2.icon = "__RExtended__/graphics/Tech/Tree/Energy/electric-energy-acumulators-r1.png"
acc_tech_r2.icon_size = 128
acc_tech_r2.effects = {
    {
        type = "unlock-recipe",
        recipe = "accumulator-r2"
    }
--{
--    type = "unlock-recipe",
--    recipe = "battery-r1"
--}
}
acc_tech_r2.prerequisites = {"electric-energy-accumulators"}
acc_tech_r2.unit = {
    count = 500,
    ingredients = {
        {"automation-science-pack",1},
        {"logistic-science-pack",1},
        {"chemical-science-pack",1}
    },
    time = 30
}
acc_tech_r2.order = "c-h-a"

--Energy Accumulator R2--
local acc_tech_r3 = table.deepcopy(data.raw.technology['electric-energy-accumulators'])
acc_tech_r3.name = "energy-accumulator-r2"
acc_tech_r3.icon = "__RExtended__/graphics/Tech/Tree/Energy/electric-energy-acumulators-r3.png"
acc_tech_r3.icon_size = 128
acc_tech_r3.effects = {{
    type = "unlock-recipe",
    recipe = "accumulator-r3"
}}
acc_tech_r3.prerequisites = {"energy-accumulator-r1"}
acc_tech_r3.unit = {
    count = 500,
    ingredients = {
        {"automation-science-pack",1},
        {"logistic-science-pack",1},
        {"chemical-science-pack",1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1}
    },
    time = 30
}
acc_tech_r3.order = "c-h-b"

data:extend({acc_tech_r2,acc_tech_r3})