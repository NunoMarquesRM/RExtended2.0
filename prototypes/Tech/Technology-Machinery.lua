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

-- Eletric Mining Drill R2
local mining_tech_r1 = table.deepcopy(data.raw.technology['steel-processing'])
mining_tech_r1.name = "electric-mining-r2"
mining_tech_r1.icon = "__RExtended__/graphics/Tech/Tree/Machinery/r-08.png"
mining_tech_r1.icon_size = 128
mining_tech_r1.effects = {{
	type = "unlock-recipe",
	recipe = "mining-drill-r2"
}}
mining_tech_r1.unit = {
	count = 400,
	ingredients = {
		{"automation-science-pack", 1},
		{"logistic-science-pack", 1}
	},
	time = 30
}
mining_tech_r1.prerequisites = {"automation-2"}
mining_tech_r1.order = "c-i-a"

-- Eletric Mining Drill R3
local mining_tech_r2 = table.deepcopy(data.raw.technology['steel-processing'])
mining_tech_r2.name = "electric-mining-r3"
mining_tech_r2.icon = "__RExtended__/graphics/Tech/Tree/Machinery/r-09.png"
mining_tech_r2.icon_size = 128
mining_tech_r2.effects = {{
	type = "unlock-recipe",
	recipe = "mining-drill-r3"
}}
mining_tech_r2.unit = {
	count = 600,
	ingredients = {
		{"automation-science-pack", 1},
		{"logistic-science-pack",   1},
		{"chemical-science-pack",   1},
		{"production-science-pack", 1},
		{"military-science-pack",   1}
	},
	time = 25
}
mining_tech_r2.prerequisites = {"electric-mining-r2"}
mining_tech_r2.order = "c-i-b"

data:extend({mining_tech_r1, mining_tech_r2})

--Eletric Furnace R1--
local furnace_tech_r1 = table.deepcopy(data.raw.technology['advanced-material-processing'])
furnace_tech_r1.name = "electric-furnace-r1"
furnace_tech_r1.effects = {
	{
		type = "unlock-recipe",
		recipe = "electric-stone-furnace"
	},
	{
		type = "unlock-recipe",
		recipe = "clean-steel-r1-v1"
	},
	{
		type = "unlock-recipe",
		recipe = "formation-furnace-r1"
	},
	{
		type = "unlock-recipe",
		recipe = "steel-plate-r1-v1"
	}
}
furnace_tech_r1.prerequisites = {"electronics"}
furnace_tech_r1.unit = {
	count = 60,
	ingredients = {
		{"automation-science-pack", 1}
	},
	time = 15
}
furnace_tech_r1.order = "a-d-b"

--Eletric Furnace R2--
local furnace_tech_r2 = table.deepcopy(data.raw.technology['advanced-material-processing'])
furnace_tech_r2.name = "electric-furnace-r2"
furnace_tech_r2.effects = {{
	type = "unlock-recipe",
	recipe = "electric-steel-furnace"
}}
furnace_tech_r2.prerequisites = {"advanced-material-processing"}
furnace_tech_r2.unit = {
	count = 100,
	ingredients = {
		{"automation-science-pack", 1},
		{"logistic-science-pack", 1}
	},
	time = 20
}
furnace_tech_r2.order = "c-j-b"

data:extend({furnace_tech_r1,furnace_tech_r2})

--Silicon Processing--
local tech_r1 = table.deepcopy(data.raw.technology['solar-energy'])
tech_r1.name = "silicon-processing"
tech_r1.icon = "__RExtended__/graphics/Tech/Tree/C&R/silicon-processing.png"
tech_r1.icon_size = 128
tech_r1.effects = {
	{
		type = "unlock-recipe",
		recipe = "blue-quartz-r1"
	},
	{
		type = "unlock-recipe",
		recipe = "crystalline-silicon-r1"
	},
}
tech_r1.prerequisites = {"solar-energy"}
tech_r1.unit = {
	count = 175,
	ingredients = {
		{"automation-science-pack", 1},
		{"logistic-science-pack", 1}
	},
	time = 20
}
tech_r1.order = "c-n-a"

data:extend({tech_r1})


data:extend({
	{--Machinery R1--
		type = "technology",
		name = "machinery-r1",
		icon_size = 128,
		icon = "__RExtended__/graphics/Tech/Tree/Assemblers/machinery-r1.png",
		effects = {{
			type = "unlock-recipe",
			recipe = "half-assembler-r1"
		}},
		prerequisites = {"electric-furnace-r1"},
		unit = {
			count = 100,
			ingredients = {
				{"automation-science-pack",1},
			},
			time = 25
		},
		order = "a-d-c"
	},
{--Machinery R2--
	type = "technology",
	name = "machinery-r2",
	icon_size = 128,
	icon = "__RExtended__/graphics/Tech/Tree/Assemblers/machinery-r2.png",
	effects = {{
		type = "unlock-recipe",
		recipe = "assembler-r1"
	}},
	prerequisites = {"automation-2","electric-furnace-r2"},
	unit = {
		count = 200,
		ingredients = {
			{"automation-science-pack",1},
			{"logistic-science-pack",1},
		},
		time = 25
	},
	order = "c-j-c"
},
{--Machinery R3--
	type = "technology",
	name = "machinery-r3",
	icon_size = 128,
	icon = "__RExtended__/graphics/Tech/Tree/Assemblers/machinery-r3.png",
	effects = {{
		type = "unlock-recipe",
		recipe = "assembler-r2"
	}},
	prerequisites = {"automation-3","machinery-r2"},
	unit = {
		count = 500,
		ingredients = {
			{"automation-science-pack",1},
			{"logistic-science-pack",1},
			{"chemical-science-pack", 1},
		},
		time = 25
	},
	order = "c-j-d"
},
{--Charcoal (wood to coal)--
	type = "technology",
	name = "charcoal-r1",
	icon_size = 128,
	icon = "__RExtended__/graphics/Tech/Tree/C&R/charcoal-r1.png",
	effects = {{
		type = "unlock-recipe",
		recipe = "coal-r1"
	}},
	prerequisites = {"logistics"},
	unit = {
		count = 100,
		ingredients = {
			{"automation-science-pack",1},
		},
		time = 30
	},
	order = "a-f-c"
},
{--Water--
	type = "technology",
	name = "water-r1",
	icon = "__RExtended__/graphics/Tech/Tree/C&R/water-r1.png",
	icon_size = 128,
	effects = {{
		type = "unlock-recipe",
		recipe = "water-r1"
	}},
	prerequisites = {"landfill"},
	unit = {
		count = 50,
		ingredients = {
			{"automation-science-pack", 1},
			{"logistic-science-pack", 1},
		},
		time = 25
	},
	order = "c-m-a"
},
{--Enriched Coal--
	type = "technology",
	name = "diesel-energy-r1",
	icon_size = 128,
	icon = "__RExtended__/graphics/Tech/Tree/C&R/enrichedCoal-r1.png",
	effects = {
		{
			type = "unlock-recipe",
			recipe = "enriched-coal-r1"
		},
		{
			type = "unlock-recipe",
			recipe = "enrichment-chamber-r1"
		}
	},
	prerequisites = {"steam-energy-r2"},
	unit = {
		count = 750,
		ingredients = {
			{"automation-science-pack",1},
			{"logistic-science-pack",1},
			{"chemical-science-pack", 1}
		},
		time = 30
	},
	order = "c-b-d"
},
{--Refined Coal--
	type = "technology",
	name = "refined-coal-r1",
	icon_size = 32,
	icon = "__RExtended__/graphics/Tech/Tree/C&R/clean-coal-r1.png",
	effects = {
		{
			type = "unlock-recipe",
			recipe = "clean-coal-r1"
		},
		{
			type = "unlock-recipe",
			recipe = "glue-r1-v2"
		}
	},
	prerequisites = {"charcoal-r1","clean-products-r1"},
	unit = {
		count = 100,
		ingredients = {
			{"automation-science-pack",1},
			{"logistic-science-pack", 1}
		},
		time = 30
	},
	order = "a-f-d"
},
{--Water Condenser--
    type = "technology",
    name = "water-product-r1",
    icon_size = 128,
    icon = "__RExtended__/graphics/Tech/Tree/Machinery/r-04.png",
    effects ={
		{
			type = "unlock-recipe",
			recipe = "water-condenser-electric-r1"
		},
		{
			type = "unlock-recipe",
			recipe = "water-r1"
		},
		--{
		--	type = "unlock-recipe",
		--	recipe = "incinerator-r1"
		--},
		--{
		--	type = "unlock-recipe",
		--	recipe = "incinerator-liquid-r1"
		--}
    },
	--prerequisites = {"machinery-r1"},
	prerequisites = {"automation-2"},
    unit = {
		count = 150,
		ingredients = {{"automation-science-pack", 1}},
		time = 25
    },
    order = "a-d-d"
},
{--Initial Products--
    type = "technology",
    name = "initial-products-r1",
    icon_size = 128,
    icon = "__RExtended__/graphics/Tech/Tree/C&R/r-1.png",
    effects ={
		{
			type = "unlock-recipe",
			recipe = "reinforced-component-r1"
		},
		{
			type = "unlock-recipe",
			recipe = "reinforced-coal-plate-r1"
		},
		{
			type = "unlock-recipe",
			recipe = "reinforced-gear-iron-r1"
		},
		{
			type = "unlock-recipe",
			recipe = "reinforced-gear-copper-r1"
		}
    },
    unit = {
		count = 50,
		ingredients = {{"automation-science-pack", 1}},
		time = 25
    },
    order = "a-a-a"
},
{--Mixer Products--
    type = "technology",
    name = "mixer-products-r1",
    icon_size = 128,
    icon = "__RExtended__/graphics/Tech/Tree/C&R/r-2.png",
    effects ={
		{
			type = "unlock-recipe",
			recipe = "mixer-r1"
		},
		{
			type = "unlock-recipe",
			recipe = "glue-r1-v1"
		},
		{
			type = "unlock-recipe",
			recipe = "reinforced-iron-plate-r1"
		},
		{
			type = "unlock-recipe",
			recipe = "reinforced-copper-plate-r1"
		}
    },
	prerequisites = {"initial-products-r1"},
    unit = {
		count = 50,
		ingredients = {{"automation-science-pack", 1}},
		time = 25
    },
    order = "a-b-a"
},
{--Advanced Products--
    type = "technology",
    name = "adv-products-r1",
    icon_size = 128,
    icon = "__RExtended__/graphics/Tech/Tree/C&R/r-3.png",
    effects ={
		{
			type = "unlock-recipe",
			recipe = "electric-component-r1"
		},
		{
			type = "unlock-recipe",
			recipe = "cable-r1"
		}
    },
	prerequisites = {"mixer-products-r1"},
    unit = {
		count = 70,
		ingredients = {{"automation-science-pack", 1}},
		time = 25
    },
    order = "a-c-a"
},
{--Clean Products--
    type = "technology",
    name = "clean-products-r1",
    icon_size = 128,
    icon = "__RExtended__/graphics/Tech/Tree/Machinery/r-01.png",
    effects ={
		{
			type = "unlock-recipe",
			recipe = "compressor-r1"
		},
		{
			type = "unlock-recipe",
			recipe = "washer-chamber-r1"
		},
		{
			type = "unlock-recipe",
			recipe = "pressurized-water-r1"
		},
		{
			type = "unlock-recipe",
			recipe = "clean-iron-r1"
		},
		{
			type = "unlock-recipe",
			recipe = "clean-copper-r1"
		},
		{
			type = "unlock-recipe",
			recipe = "iron-plate-r1-v1"
		},
		{
			type = "unlock-recipe",
			recipe = "copper-plate-r1-v1"
		}
    },
	prerequisites = {"automation-2","adv-products-r1"},
    unit = {
		count = 150,
		ingredients = {
			{"automation-science-pack", 1},
			{"logistic-science-pack", 1}
		},
		time = 25
    },
    order = "a-c-d"
},
{--Advanced Formation Furnace--
    type = "technology",
    name = "adv-formation-furnace-r1",
    icon_size = 128,
    icon = "__RExtended__/graphics/Tech/Tree/Machinery/r-06.png",
    effects ={
		{
			type = "unlock-recipe",
			recipe = "formation-furnace-electric-r1"
		},
		{
			type = "unlock-recipe",
			recipe = "clean-steel-r1-v2"
		}
    },
	prerequisites = {"electric-furnace-r1","refined-coal-r1"},
    unit = {
		count = 200,
		ingredients = {
			{"automation-science-pack", 1},
			{"logistic-science-pack", 1},
			{"chemical-science-pack", 1}
		},
		time = 25
    },
    order = "a-f-e"
},
{--Advanced Ore Processing R1--
    type = "technology",
    name = "adv-ore-processing-r1",
    icon_size = 128,
    icon = "__RExtended__/graphics/Tech/Tree/Machinery/r-05.png",
    effects ={
		{
			type = "unlock-recipe",
			recipe = "heat-forge-chamber-r1"
		},
		{
			type = "unlock-recipe",
			recipe = "cast-chamber-r1"
		},
		{
			type = "unlock-recipe",
			recipe = "molten-iron-r1"
		},
		{
			type = "unlock-recipe",
			recipe = "molten-copper-r1"
		},
		{
			type = "unlock-recipe",
			recipe = "molten-steel-r1"
		},
		{
			type = "unlock-recipe",
			recipe = "iron-plate-r1-v2"
		},
		{
			type = "unlock-recipe",
			recipe = "copper-plate-r1-v2"
		},
		{
			type = "unlock-recipe",
			recipe = "steel-plate-r1-v2"
		},
    },
	prerequisites = {"clean-products-r1"},
    unit = {
		count = 400,
		ingredients = {
			{"automation-science-pack", 1},
			{"logistic-science-pack", 1},
			{"chemical-science-pack", 1}
		},
		time = 25
    },
    order = "a-c-e"
},
{--Advanced Chemical Machine R1--
    type = "technology",
    name = "adv-chemical-machine-r1",
    icon_size = 128,
    icon = "__RExtended__/graphics/Tech/Tree/Machinery/r-07.png",
    effects ={
		{
			type = "unlock-recipe",
			recipe = "chemical-machine-r1"
		}
    },
	prerequisites = {"chemical-science-pack"},
    unit = {
		count = 300,
		ingredients = {
			{"automation-science-pack", 1},
			{"logistic-science-pack", 1},
			{"chemical-science-pack", 1}
		},
		time = 25
    },
    order = "a-f-e"
},
{--Refinery R1--
    type = "technology",
    name = "refinery-machine-r1",
    icon_size = 128,
    icon = "__RExtended__/graphics/Tech/Tree/Machinery/r-03.png",
    effects = {
		{
			type = "unlock-recipe",
			recipe = "refinery-r1"
		},
		{
			type = "unlock-recipe",
			recipe = "oil-basic-heavy-r1"
		},
		{
			type = "unlock-recipe",
			recipe = "oil-basic-light-r1"
		}
    },
	prerequisites = {"lubricant"},
    unit = {
		count = 400,
		ingredients = {
			{"automation-science-pack", 1},
			{"logistic-science-pack", 1},
			{"chemical-science-pack", 1}
		},
		time = 25
    },
    order = "b-b-a"
},
{--Oil Advanced Processing--
    type = "technology",
    name = "oil-advanced-processing-r1",
    icon_size = 128,
    icon = "__RExtended__/graphics/Tech/Tree/C&R/r-031.png",
    effects = {
		{
			type = "unlock-recipe",
			recipe = "oil-advanced-heavy-r1"
		},
		{
			type = "unlock-recipe",
			recipe = "oil-advanced-light-r1"
		},
		{
			type = "unlock-recipe",
			recipe = "oil-advanced-petroleum-r1"
		}
    },
	prerequisites = {"refinery-machine-r1"},
    unit = {
		count = 500,
		ingredients = {
			{"automation-science-pack", 1},
			{"logistic-science-pack", 1},
			{"chemical-science-pack", 1}
		},
		time = 25
    },
    order = "b-b-b"
},
{--Oil Special Processing--
    type = "technology",
    name = "oil-special-processing-r1",
    icon_size = 128,
    icon = "__RExtended__/graphics/Tech/Tree/C&R/r-032.png",
    effects = {
		{
			type = "unlock-recipe",
			recipe = "oil-special-heavy-r1"
		},
		{
			type = "unlock-recipe",
			recipe = "oil-special-light-r1"
		},
		{
			type = "unlock-recipe",
			recipe = "oil-special-petroleum-r1"
		},
		{
			type = "unlock-recipe",
			recipe = "oil-special-process-r1"
		}
    },
	prerequisites = {"oil-advanced-processing-r1"},
    unit = {
		count = 700,
		ingredients = {
			{"automation-science-pack", 1},
			{"logistic-science-pack", 1},
			{"chemical-science-pack", 1}
		},
		time = 25
    },
    order = "b-b-c"
},
{--Advanced Products (Lithium)--
type = "technology",
name = "lithium-r1",
icon_size = 128,
icon = "__RExtended__/graphics/Tech/Tree/C&R/lithium-r1.png",
effects = {
	{
		type = "unlock-recipe",
		recipe = "molten-coal-r1"
	},
	{
		type = "unlock-recipe",
		recipe = "enriched-petro-r1"
	},
	{
		type = "unlock-recipe",
		recipe = "lithium-r1"
	}
},
prerequisites = {"silicon-processing","oil-processing"},
unit = {
	count = 200,
	ingredients = {
		{"automation-science-pack", 1},
		{"logistic-science-pack", 1}
	},
	time = 30
},
order = "c-n-b"
},
{--Beacon--
type = "technology",
name = "beacon-r1",
icon_size = 128,
icon = "__RExtended__/graphics/Tech/Tree/Machinery/beacon-r1.png",
effects = {
	{
		type = "unlock-recipe",
		recipe = "beacon-r1"
	}
},
prerequisites = {"effect-transmission"},
unit = {
	count = 200,
	ingredients = {
		{"automation-science-pack", 1},
		{"logistic-science-pack", 1},
		{"chemical-science-pack", 1},
		{"production-science-pack", 1}
	},
	time = 30
},
order = "a-c-d"
},
{--Plastics R1--
type = "technology",
name = "plastics-r1",
icon_size = 256, icon_mipmaps = 4,
icon = "__base__/graphics/technology/plastics.png",
prerequisites = {"plastics","refined-coal-r1"},
effects =
{
	{
	type = "unlock-recipe",
	recipe = "plastic-bar-r1"
	}
},
unit =
{
	count = 220,
	ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}},
	time = 30
},
order = "d-f"
},
{--Advanced Chemical Machine R2--
type = "technology",
name = "adv-chemical-machine-r2",
icon_size = 128,
icon = "__RExtended__/graphics/Tech/Tree/Machinery/r-07-1.png",
effects ={
	{
		type = "unlock-recipe",
		recipe = "chemical-machine-r2"
	}
},
prerequisites = {"adv-chemical-machine-r1"},
unit = {
	count = 500,
	ingredients = {
		{"automation-science-pack", 1},
		{"logistic-science-pack", 1},
		{"chemical-science-pack", 1},
		{"production-science-pack", 1},
		{"utility-science-pack", 1}
	},
	time = 40
},
order = "a-f-f"
},
{--Advanced Clean Products R2--
type = "technology",
name = "adv-clean-products-r2",
icon_size = 128,
icon = "__RExtended__/graphics/Tech/Tree/Machinery/r-01-1.png",
effects ={
	{
		type = "unlock-recipe",
		recipe = "compressor-r2"
	},
	{
		type = "unlock-recipe",
		recipe = "washer-chamber-r2"
	}
},
prerequisites = {"clean-products-r1"},
unit = {
	count = 500,
	ingredients = {
		{"automation-science-pack", 1},
		{"logistic-science-pack", 1},
		{"chemical-science-pack", 1},
		{"production-science-pack", 1},
		{"utility-science-pack", 1}
	},
	time = 40
},
order = "a-f-g"
},
{--Advanced Ore Processing R2--
type = "technology",
name = "adv-ore-processing-r2",
icon_size = 128,
icon = "__RExtended__/graphics/Tech/Tree/Machinery/r-05-1.png",
effects ={
	{
		type = "unlock-recipe",
		recipe = "cast-chamber-r2"
	},
	{
		type = "unlock-recipe",
		recipe = "heat-forge-chamber-r2"
	}
},
prerequisites = {"adv-ore-processing-r1"},
unit = {
	count = 500,
	ingredients = {
		{"automation-science-pack", 1},
		{"logistic-science-pack", 1},
		{"chemical-science-pack", 1},
		{"production-science-pack", 1},
		{"utility-science-pack", 1}
	},
	time = 40
},
order = "a-f-h"
},
{--Advanced Water Condenser--
type = "technology",
name = "adv-water-r2",
icon_size = 128,
icon = "__RExtended__/graphics/Tech/Tree/Machinery/r-04-1.png",
effects ={
	{
		type = "unlock-recipe",
		recipe = "water-condenser-electric-r2"
	}
},
prerequisites = {"water-product-r1"},
unit = {
	count = 500,
	ingredients = {
		{"automation-science-pack", 1},
		{"logistic-science-pack", 1},
		{"chemical-science-pack", 1},
		{"production-science-pack", 1},
		{"utility-science-pack", 1}
	},
	time = 40
},
order = "a-f-h"
},
{--Advanced Half Assembler--
	type = "technology",
	name = "adv-machinery-r2",
	icon_size = 128,
	icon = "__RExtended__/graphics/Tech/Tree/Assemblers/machinery-r1-1.png",
	effects ={
		{
			type = "unlock-recipe",
			recipe = "half-assembler-r2"
		}
	},
	prerequisites = {"machinery-r1"},
	unit = {
		count = 500,
		ingredients = {
			{"automation-science-pack", 1},
			{"logistic-science-pack", 1},
			{"chemical-science-pack", 1},
			{"production-science-pack", 1},
			{"utility-science-pack", 1}
		},
		time = 40
	},
	order = "a-f-i"
},
{--Refinery R2--
type = "technology",
name = "refinery-machine-r2",
icon_size = 128,
icon = "__RExtended__/graphics/Tech/Tree/Machinery/r-03-1.png",
effects ={
	{
		type = "unlock-recipe",
		recipe = "refinery-r2"
	}
},
prerequisites = {"refinery-machine-r1"},
unit = {
	count = 500,
	ingredients = {
		{"automation-science-pack", 1},
		{"logistic-science-pack", 1},
		{"chemical-science-pack", 1},
		{"production-science-pack", 1},
		{"utility-science-pack", 1}
	},
	time = 40
},
order = "a-f-j"
}
})
