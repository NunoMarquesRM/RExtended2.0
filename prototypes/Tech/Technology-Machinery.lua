data:extend({
    {--Warehouse R1
        type = "technology",
        name = "warehouse-tech",
        icon = "__RExtended__/graphics/Tech/Tree/Storage/warehouse-tech.png",
        icon_size = 128,
        effects = {{
            type = "unlock-recipe",
            recipe = "warehouse-r1",
        }},
        prerequisites = {"steel-processing"},
        unit = {
            count = 750,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack",   1},
                {"chemical-science-pack",   1}
            },
            time = 20
        },
        order = "c-e-a"
    }
})

-- Big Storage Tank R1 - 100K
local sto_tank_tech_r1 = table.deepcopy(data.raw.technology['fluid-handling'])
sto_tank_tech_r1.name = "big-storage-tank-r1"
sto_tank_tech_r1.icon = "__RExtended__/graphics/Tech/Tree/Storage/big-storage-tank-r1.png"
sto_tank_tech_r1.icon_size = 128
sto_tank_tech_r1.prerequisites = {"fluid-handling"}
sto_tank_tech_r1.effects = {{
	type = "unlock-recipe",
	recipe = "big-storage-tank-r1"
}}
sto_tank_tech_r1.unit = {
	count = 250,
	ingredients = {
		{"automation-science-pack", 1},
		{"logistic-science-pack",   1},
        {"chemical-science-pack",   1}
	},
	time = 30
}
sto_tank_tech_r1.order = "c-e-f"

-- Big Storage Tank R2 - 500K
local sto_tank_tech_r2 = table.deepcopy(data.raw.technology['fluid-handling'])
sto_tank_tech_r2.name = "big-storage-tank-r2"
sto_tank_tech_r2.icon = "__RExtended__/graphics/Tech/Tree/Storage/big-storage-tank-r2.png"
sto_tank_tech_r2.icon_size = 128
sto_tank_tech_r2.prerequisites = {"big-storage-tank-r1"}
sto_tank_tech_r2.effects = {{
	type = "unlock-recipe",
	recipe = "big-storage-tank-r2"
}}
sto_tank_tech_r2.unit = {
	count = 350,
	ingredients = {
		{"automation-science-pack", 1},
		{"logistic-science-pack",   1},
		{"military-science-pack",   1},
		{"chemical-science-pack",   1},
		{"production-science-pack", 1}
	},
	time = 30
}
sto_tank_tech_r2.order = "c-e-g"

-- Big Storage Tank R3 - 5M
local sto_tank_tech_r3 = table.deepcopy(data.raw.technology['fluid-handling'])
sto_tank_tech_r3.name = "elite-storage-tank-r3"
sto_tank_tech_r3.icon = "__RExtended__/graphics/Tech/Tree/Storage/Elite-storage-tank-r3.png"
sto_tank_tech_r3.icon_size = 128
sto_tank_tech_r3.prerequisites = {"big-storage-tank-r2"}
sto_tank_tech_r3.effects = {{
	type = "unlock-recipe",
	recipe = "elite-storage-tank-r3"
}}
sto_tank_tech_r3.unit = {
	count = 500,
	ingredients = {
		{"automation-science-pack", 1},
		{"logistic-science-pack",   1},
		{"military-science-pack",   1},
		{"chemical-science-pack",   1},
		{"production-science-pack", 1},
		{"utility-science-pack",    1},
		{"space-science-pack",      1}
	},
	time = 30
}
sto_tank_tech_r3.order = "c-e-h"

data:extend({sto_tank_tech_r1, sto_tank_tech_r2, sto_tank_tech_r3})