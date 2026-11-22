# Technology Tree

This guide summarizes the technologies declared in `prototypes/Tech/Technology-*.lua`. Arrows show research prerequisites. Pack names are the science packs required by the listed research; research counts and times are omitted.

## Energy

```text
Steam Energy R1 [Automation + Logistic]
   └── Steam Energy R2 [Automation + Logistic + Chemical + Production]

Electric Energy Poles R1 [Automation + Logistic]
   └── Electric Energy Poles R2 [Automation + Logistic + Chemical]

Solar Energy R2 [Automation + Logistic + Chemical]
   ├── Solar Energy R3 [Automation + Logistic + Military + Chemical]
   │      └── Solar Energy R4 [Automation + Logistic + Chemical + Production]
   │             └── Solar Energy R5 [Automation + Logistic + Chemical + Production + Utility]
   └── Solar Panel Equipment R2 [Automation + Logistic + Chemical + Production]

Electric Energy Accumulator R1 [Automation + Logistic + Chemical]
   └── Electric Energy Accumulator R2 [Automation + Logistic + Chemical + Production + Utility]
```

- Steam Energy R1 requires Engine and Steam Power; unlocks Boiler R2 and Steam Engine R2.
  - Research costs 200 Automation and Logistic science packs at 30 seconds per unit.
  - Boiler R2: 2 boilers, 2 pipes, and 5 copper plates; 1 second.
  - Steam Engine R2: 3 steam engines, 15 copper gear wheels, and 8 copper plates.
  - Copper gear wheels are enabled from the start; Engine supplies the steel-processing and Logistic science prerequisites.
  - Steam Power explicitly supplies the vanilla boilers, pipes, and steam engines used by both upgrades.
- Steam Energy R2 requires Steam Energy R1, Advanced Intermediate Products 2, and Production Science Pack; unlocks Boiler R3 and Steam Engine R3.
  - Research costs 800 Automation, Logistic, Chemical, and Production science packs at 30 seconds per unit.
  - Boiler R3: 1 Boiler R2, 1 Advanced Machine Casing, 10 pipes, and 2 Advanced Fuses; 6 seconds.
  - Steam Engine R3: 1 Steam Engine R2, 1 Advanced Machine Casing, 2 Advanced Electronic Components, and 2 Advanced Fuses; 8 seconds.
  - The Apatitium intermediates are unlocked first. Production Science Pack already covers Chemical Science Pack upstream, so a separate Chemical Science Pack prerequisite is unnecessary.
- Pole R1 requires Electric Energy Distribution 1; unlocks Light Pole R1, Medium Pole R1, and Long Pole R1.
- Pole R2 requires Electric Energy Distribution 2 and Pole R1; unlocks Substation Pole R1.
- Solar R2 requires Solar Energy and Silicon Processing; unlocks Solar Cell and Solar Panel R2.
- Solar R3 follows Solar R2; unlocks Solar Panel R3.
- Solar R4 requires Solar R3 and Electric Energy Distribution 2; unlocks Solar Panel R4.
- Solar R5 follows Solar R4; unlocks Solar Panel R5.
- Solar Panel Equipment R2 requires Solar Panel Equipment and Solar R2; unlocks Solar Panel Equipment R2.
- Accumulator R1 requires Electric Energy Accumulators and Lithium R1; unlocks Battery R1 and Accumulator R2.
- Accumulator R2 follows Accumulator R1; unlocks Accumulator R3.

## Materials, Processing, and Machinery

```text
Initial Products
   └── Mixer Products (also requires Steel Processing)
          └── Advanced Products (also requires Logistic Science Pack)
                 └── Clean Products ── Refined Coal R1

Electric Furnace R1 + Refined Coal R1 + Chemical Science Pack ── Advanced Formation Furnace
Advanced Formation Furnace + Advanced Intermediate Products + Production Science Pack
   └── Advanced Ore Processing R1 ── Advanced Ore Processing R2

Electric Furnace R1 ── Machinery R1 ──┐
                                      ├── Advanced Half Assembler R2
Electric Furnace R2 ── Machinery R2 ──┘
                       Machinery R1 ── Water Product R1 ── Advanced Water R2

Electric Furnace R2 ── Machinery R2 ── Machinery R3
Advanced Intermediate Products ── Machinery R2 (also requires Machinery R1)

Advanced Chemical Machine R1 ── Advanced Chemical Machine R2

Refinery R1 ── Oil Advanced Processing R1 ── Oil Special Processing R1
Steam Power ────────────────────────────────┘

Charcoal R1 ── Refined Coal R1 ── Plastics R1
                         └── Advanced Formation Furnace
                                  └── Refined Coal R2

Steam Energy R2 + Advanced Oil Processing + Refined Coal R2 ── Diesel Energy R1

Advanced Ore Processing R1 + Refinery R1 ── Lithium R1

Advanced Intermediate Products [Automation + Logistic]
   └── Advanced Intermediate Products 2 [Automation + Logistic + Chemical]
          └── Advanced Intermediate Products 3 [Automation + Logistic + Chemical + Production]
                 └── Advanced Infusion [Automation + Logistic + Chemical + Production]

Beacon R1 (requires Effect Transmission and Advanced Intermediate Products 2)
Advanced Centrifuge R2 (requires Nuclear Power, Kovarex Enrichment Process,
                         Advanced Intermediate Products 3, Military Science Pack,
                         and Space Science Pack)
```

Tech details and recipe unlocks:

- **Initial Products** (no prerequisite): reinforced component, reinforced coal plate, reinforced iron gear, and reinforced copper gear recipes.
- **Mixer Products** (Initial Products + Steel Processing): Mixer R1, Glue V1, reinforced iron plate, and reinforced copper plate recipes.
  - Mixer R1 costs 10 steel plates, 10 reinforced coal plates, 10 iron sticks, and 10 reinforced components; crafting takes 7 seconds.
  - Glue V1 uses 3 coal and 50 water to produce 20 glue in 2 seconds in the mixer.
  - The mixer can be built without glue; Steel Processing ensures its steel ingredient is unlocked first.
- **Advanced Products** (Mixer Products + Logistic Science Pack): Electronic Component and Cable recipes; costs 100 Automation and Logistic science packs at 25 seconds per unit.
  - Cable: 2 copper cable and 4 glue yield 2 Cable in 0.5 seconds.
  - Electronic Component: 2 reinforced iron plates, 2 reinforced copper plates, 2 reinforced coal plates, and 6 Cable yield 1 component in 2 seconds.
- **Clean Products** (Automation 2 + Advanced Products): Compressor R1, Washer Chamber R1, pressurized water, clean iron/copper, and the clean plate recipes.
  - Research costs 150 Automation and Logistic science packs at 25 seconds per unit.
  - Compressor R1: 8 steel plates, 3 reinforced iron gears, 3 reinforced copper gears, and 5 reinforced copper plates; 2 seconds.
  - Washer Chamber R1: 5 steel plates, 3 reinforced iron gears, 5 reinforced coal plates, 10 pipes, and 1 Assembling Machine 2; 4 seconds.
  - Pressurizing 300 water yields 50 pressurized water in 1 second; washing 1 iron/copper ore with 20 pressurized water yields 1 clean iron/copper in 2 seconds.
  - Smelting 1 clean iron/copper yields 3 corresponding plates in 2 seconds.
- **Electric Furnace R1** (Electronics + Advanced Products): Electric Stone Furnace, clean steel V1, Formation Furnace R1, and steel plate V1.
  - Research currently costs 60 Automation science packs at 15 seconds per unit.
  - Electric Stone Furnace: 2 stone furnaces, 2 electronic circuits, and 2 Electronic Components; 0.5 seconds.
  - Formation Furnace R1: 4 reinforced components, 4 reinforced iron plates, and 4 reinforced copper plates; 2 seconds.
  - Clean steel V1: 4 iron ore and 1 coal yield 1 clean steel in 3 seconds; steel plate V1 converts 1 clean steel into 2 steel plates in 1 second.
  - Advanced Products ensures reinforced plates and Electronic Components are available before either furnace is unlocked.
- **Electric Furnace R2** (Advanced Material Processing + Electric Furnace R1 + Chemical Science Pack): Electric Steel Furnace.
  - Research costs 100 Automation, Logistic, and Chemical science packs at 20 seconds per unit.
  - Electric Steel Furnace: 2 steel furnaces, 5 electronic circuits, 5 reinforced iron plates, and 3 reinforced copper gears; 3.5 seconds.
  - Electric Furnace R1 supplies the reinforced-material prerequisites; Chemical Science Pack introduces the required blue science.
- **Machinery R1** (Electric Furnace R1): Half Assembler R1.
  - Compact Craft Machine research costs 100 Automation science packs at 25 seconds per unit.
  - Its recipe uses 5 reinforced iron gears, 5 reinforced copper gears, and 5 electronic circuits; crafting takes 5 seconds.
- **Machinery R2** (Machinery R1 + Electric Furnace R2 + Advanced Intermediate Products): Craft Machine R1.
  - Craft Machine research costs 200 Automation and Logistic science packs at 25 seconds per unit.
  - Recipe: 3 Compact Craft Machines, 1 Machine Casing, 2 Electronic Components, and 2 Fuses; 5 seconds.
  - Advanced Intermediate Products unlocks the Azurium casing and fuses first. Its Clean Products prerequisite already covers Automation 2, so no separate Automation 2 prerequisite is needed here.
- **Machinery R3** (Automation 3 + Machinery R2 + Advanced Intermediate Products 3 + Utility Science Pack): Assembler R2.
  - Advanced Craft Machine research costs 500 Automation, Logistic, Chemical, Production, and Utility science packs at 30 seconds per unit.
  - Recipe: 1 Craft Machine R1, 1 Elite Machine Casing, 3 Elite Electronic Components, 4 Elite Fuses, 5 electric engine units, and 10 steel plates; 5 seconds.
  - Advanced Intermediate Products 3 supplies Amazonium and the Elite intermediates. Utility Science Pack covers Electric Engines and Processing Units through its research path. Production science is already covered upstream.
- **Advanced Half Assembler R2** (Machinery R2 + Advanced Intermediate Products 2 + Production Science Pack + Utility Science Pack): Half Assembler R2.
  - Advanced Compact Craft Machine research costs 500 Automation, Logistic, Chemical, Production, and Utility science packs at 40 seconds per unit.
  - Recipe: 1 Compact Craft Machine, 1 Advanced Machine Casing, 2 Advanced Electronic Components, 2 Advanced Fuses, and 10 steel plates; 5 seconds.
  - Machinery R2 already requires Machinery R1, so no separate Machinery R1 link is needed. The material and science prerequisites explicitly cover the Apatitium parts and purple/yellow packs.
- **Water Product R1** (Machinery R1 + Automation 2): Water Condenser R1, water recipe, Air Purificator R1, Pure Air, and filled/empty Purificator Tool recipes.
  - Atmospheric Processing costs 150 Automation science packs at 25 seconds per unit.
  - Water Condenser: 5 steel plates, 10 reinforced iron plates, 5 reinforced copper plates, 10 Cable, and 3 Electronic Components; 5 seconds.
  - Air Purifier: 25 reinforced iron plates, 25 reinforced copper plates, and 25 Cable; 1 second.
  - Water production yields 600 water in 1 second without material inputs.
  - Empty purification tools use 1 reinforced iron plate each. Filling uses 2 empty tools and 500 water to produce 1 filled tool; purification returns 1 empty tool after 30 seconds.
  - Automation 2 supplies the fluid-capable assembler needed to fill purification tools.
- **Advanced Water R2** (Water Product R1 + Advanced Intermediate Products 2 + Production Science Pack + Utility Science Pack): Water Condenser R2.
  - Research costs 500 Automation, Logistic, Chemical, Production, and Utility science packs at 40 seconds per unit.
  - Recipe: 1 Water Condenser R1, 1 Advanced Machine Casing, 2 Advanced Fuses, 5 steel plates, and 10 vanilla pipes; 5 seconds.
  - Water Product R1 supplies the earlier condenser, Advanced Intermediate Products 2 supplies Apatitium parts, and Production Science Pack and Utility Science Pack cover purple and yellow science.
- **Advanced Formation Furnace** (Electric Furnace R1 + Refined Coal R1 + Chemical Science Pack): Electric Formation Furnace R1 and clean steel V2.
  - Research costs 200 Automation, Logistic, and Chemical science packs at 25 seconds per unit.
  - Electric Formation Furnace: 10 reinforced coal plates, 10 reinforced iron plates, 10 reinforced copper plates, 10 reinforced components, and 10 Cable; 6 seconds.
  - Its material unlocks are covered; Chemical Science Pack explicitly supplies the blue science prerequisite.
- **Advanced Ore Processing R1** (Advanced Formation Furnace + Advanced Intermediate Products + Production Science Pack): Heat Forge Chamber R1, Cast Chamber R1, molten iron/copper/steel, and molten metal plate recipes.
  - Research costs 500 Automation, Logistic, Chemical, and Production science packs at 30 seconds per unit.
  - Heat Forge R1: 1 Machine Casing, 5 Electronic Components, 2 Fuses, and 10 pipes; 7 seconds.
  - Cast Chamber R1: 1 Machine Casing, 4 Electronic Components, 2 Fuses, and 10 pipes; 7 seconds.
  - Production Science Pack explicitly covers purple science; Advanced Intermediate Products covers the casing and fuses. Clean Products is already covered through Advanced Formation Furnace and Refined Coal.
- **Advanced Ore Processing R2** (Advanced Ore Processing R1 + Advanced Intermediate Products 2 + Utility Science Pack): Cast Chamber R2 and Heat Forge Chamber R2.
  - Research costs 500 Automation, Logistic, Chemical, Production, and Utility science packs at 40 seconds per unit.
  - Heat Forge R2: 1 Heat Forge R1, 1 Advanced Machine Casing, 1 Advanced Electronic Component, 2 Advanced Fuses, 10 steel plates, and 10 pipes; 5 seconds.
  - Cast Chamber R2: 1 Cast Chamber R1, 1 Advanced Machine Casing, 2 Advanced Fuses, 10 steel plates, and 10 pipes; 5 seconds.
  - Advanced Intermediate Products 2 supplies the Apatitium intermediates; Utility Science Pack covers yellow science. Advanced Ore Processing R1 already covers Production Science Pack, so its separate link is unnecessary.
- **Advanced Chemical Machine R1** (Chemical Science Pack + Advanced Intermediate Products): Chemical Machine R1.
  - Research costs 300 Automation, Logistic, and Chemical science packs at 30 seconds per unit.
  - Machine recipe: 10 steel plates, 1 Machine Casing, 3 Electronic Components, 2 Fuses, and 10 pipes; 5 seconds.
  - Chemical Science Pack covers the vanilla chemical path; Advanced Intermediate Products supplies the casing, fuses, and earlier mod materials. Azurium production uses the vanilla Chemical Plant, avoiding a dependency on this machine.
- **Advanced Chemical Machine R2** (Advanced Chemical Machine R1 + Advanced Intermediate Products 2 + Production Science Pack + Utility Science Pack): Chemical Machine R2.
  - Research costs 500 Automation, Logistic, Chemical, Production, and Utility science packs at 40 seconds per unit.
  - Recipe: 1 Chemical Machine R1, 1 Advanced Machine Casing, 2 Advanced Electronic Components, 4 Advanced Fuses, 10 steel plates, and 10 pipes; 5 seconds.
  - The material research supplies the Apatitium intermediates. Production Science Pack and Utility Science Pack explicitly cover the purple and yellow science requirements; neither science prerequisite includes the other.
- **Advanced Clean Products R2** (Advanced Intermediate Products 2 + Production Science Pack + Utility Science Pack): Compressor R2 and Washer Chamber R2.
  - Research costs 500 Automation, Logistic, Chemical, Production, and Utility science packs at 40 seconds per unit.
  - Compressor R2 recipe: 1 Compressor R1, 1 Advanced Machine Casing, 2 Advanced Fuses, 5 steel plates, and 5 pipes; 5 seconds.
  - Washer Chamber R2 recipe: 1 Washer Chamber R1, 1 Advanced Machine Casing, 2 Advanced Fuses, 10 steel plates, and 10 pipes; 5 seconds.
  - Advanced Intermediate Products 2 supplies the Apatitium parts and already covers Clean Products and both earlier machines; its separate prerequisite link is unnecessary. Production Science Pack and Utility Science Pack cover the required purple and yellow science.
- **Refinery R1** (Lubricant + Advanced Intermediate Products): Refinery R1 and basic heavy/light oil recipes.
  - Research costs 400 Automation, Logistic, and Chemical science packs at 25 seconds per unit.
  - Refinery recipe: 3 Machine Casings, 15 Electronic Components, 6 Fuses, and 20 pipes; 5 seconds.
  - Lubricant covers the vanilla oil/chemical-science path; Advanced Intermediate Products covers the Azurium casings, fuses, and earlier mod materials. Neither direct prerequisite covers the other.
  - The basic heavy/light oil recipes each process 100 crude oil into 45 units of the selected oil in 5 seconds.
- **Refinery R2** (Refinery R1 + Advanced Intermediate Products 2 + Production Science Pack + Utility Science Pack): Refinery R2.
  - Advanced Refinery research costs 500 Automation, Logistic, Chemical, Production, and Utility science packs at 40 seconds per unit.
  - Recipe: 2 Refinery R1, 1 Advanced Machine Casing, 2 Advanced Electronic Components, 2 Advanced Fuses, and 10 steel plates; 5 seconds.
  - Advanced Intermediate Products 2 supplies the Apatitium parts; Production Science Pack and Utility Science Pack guarantee the remaining science packs. Refinery R1 supplies the predecessor machines, and none of these direct prerequisites covers another.
- **Oil Advanced Processing R1** (Refinery R1): advanced heavy oil, light oil, and petroleum recipes.
  - Research costs 500 Automation, Logistic, and Chemical science packs at 25 seconds per unit.
  - Each recipe processes 100 crude oil and 100 water into 90 units of the selected oil product in 5 seconds using the mod refinery category.
  - Refinery R1 supplies a compatible machine with two fluid inputs and already covers all three science packs. No additional material research or prerequisite is needed; these are processing recipes rather than machine construction recipes.
- **Oil Special Processing R1** (Oil Advanced Processing R1 + Steam Power): special heavy/light oil, petroleum, and combined oil processing recipes.
  - Research costs 700 Automation, Logistic, and Chemical science packs at 25 seconds per unit.
  - Each dedicated recipe processes 100 crude oil and 75 steam into 130 units of the selected oil product in 5 seconds.
  - Combined processing consumes 100 crude oil and 100 steam to produce 55 heavy oil, 55 light oil, and 55 petroleum gas in 5 seconds.
  - The earlier refinery research supplies a compatible machine; Steam Power explicitly unlocks the boiler for steam production. Recipes and research costs are unchanged.
- **Charcoal R1** (Logistics): wood-to-coal recipe.
  - Research costs 100 Automation science packs at 30 seconds per unit.
  - Recipe: 4 wood yield 1 ordinary coal in 3 seconds using the smelting category; ordinary furnaces, including Stone Furnaces, can process it.
- **Refined Coal R1** (Charcoal R1 + Clean Products): clean coal and alternate Glue V2 recipes.
  - Research costs 100 Automation and Logistic science packs at 30 seconds per unit.
  - Clean Coal: 2 coal and 20 pressurized water yield 1 Clean Coal in 2 seconds in a Washer Chamber; fuel value is 16 MJ, twice the coal inputs' combined energy before processing costs.
  - Glue V2: 2 Clean Coal and 50 water yield 40 glue in 2 seconds in a Mixer.
  - Both machines and pressurized water are already available through the research prerequisites.
- **Refined Coal R2** (Advanced Formation Furnace + Military Science Pack): Infused Coal and Infusion Tool recipes.
  - Research costs 750 Automation, Logistic, Military, and Chemical science packs at 30 seconds per unit.
  - Infused Coal: 2 Clean Coal and 2 Infusion Tools yield 1 Infused Coal in 2 seconds in a Formation Furnace. The tools are consumed.
  - Infused Coal currently provides 72 MJ; after the Clean Coal adjustment, its two coal inputs provide 32 MJ combined before processing costs.
  - Infusion Tool: 1 reinforced iron gear, 2 copper gear wheels, 1 reinforced iron plate, and 1 reinforced copper plate; 1 second.
- **Plastics R1** (Plastics + Refined Coal R1): alternate plastic bar recipe.
- **Diesel Energy R1** (Steam Energy R2 + Advanced Oil Processing + Refined Coal R2): Enriched Coal, Diesel Fuel, Enrichment Chamber R1, and three alternative Rocket Fuel recipes.
  - Enriched Coal research costs 900 Automation, Logistic, and Chemical science packs at 40 seconds per unit.
  - Enrichment Chamber: 2 Machine Casings, 8 Electronic Components, 4 Fuses, and 10 pipes; 4 seconds.
  - Diesel: 20 petroleum gas and 20 light oil yield 30 Diesel in 5 seconds in a Chemical Plant; Diesel provides 2 MJ per fluid unit.
  - Enriched Coal: 2 Clean Coal and 50 Diesel yield 1 Enriched Coal in 1 second in the chamber. Its 144 MJ compares with 132 MJ in the coal and Diesel inputs before processing costs.
  - Advanced Oil Processing supplies light/heavy oil, Refined Coal R2 supplies Infused Coal for the second Rocket Fuel alternative, and Steam Energy R2 covers Advanced Intermediate Products through its second tier. Separate Refined Coal R1, Oil Processing, and Advanced Intermediate Products prerequisites are redundant through these paths.
- **Advanced Oil Processing (vanilla, Factorio 2.1)** requires Chemical Science Pack; costs 75 Automation, Logistic, and Chemical science packs at 30 seconds per unit.
  - Unlocks advanced oil processing, heavy/light oil cracking, and solid fuel from heavy/light oil. This mod does not explicitly modify those vanilla prototypes.
  - A vanilla Oil Refinery processes 100 crude oil and 50 water into 25 heavy oil, 45 light oil, and 55 petroleum gas in 5 seconds before machine-speed or productivity modifiers.
  - This supplies both oil ingredients for Diesel and heavy oil for the first Rocket Fuel alternative without requiring the mod's refinery upgrades.
- **Silicon Processing** (Solar Energy + Refined Coal R1): Blue Quartz and Crystalline Silicon recipes.
  - Research costs 175 Automation and Logistic science packs at 20 seconds per unit.
  - Blue Quartz: 4 stone and 75 pressurized water yield 1 Blue Quartz in 1 second using a fluid-capable assembler.
  - Crystalline Silicon: 2 Blue Quartz and 1 Clean Coal yield 1 Crystalline Silicon in 5 seconds.
  - Refined Coal supplies Clean Coal and covers pressurized water and the fluid-capable assembler through Clean Products and Automation 2.
- **Lithium R1** (Advanced Ore Processing R1 + Refinery R1): Molten Coal, Enriched Petroleum, and Lithium recipes.
  - Research costs 200 Automation and Logistic science packs at 30 seconds per unit.
  - Heat Forge: 2 Clean Coal yield 50 molten coal in 1 second.
  - Refinery R1: 100 molten coal and 200 crude oil yield 250 Enriched Petroleum in 5 seconds.
  - Chemical Plant: 100 Enriched Petroleum and 5 Crystalline Silicon yield 50 Lithium in 5 seconds.
  - Advanced Ore Processing R1 supplies the Heat Forge, and Refinery R1 supplies the mod's refinery. These paths already cover Silicon Processing and Oil Processing, so separate earlier prerequisites are unnecessary.
- **Advanced Intermediate Products** (Silicon Processing + Oil Processing + Electric Furnace R1): Azurium Crystal, Azurium Plate, Fuse, and Machine Casing recipes. Silicon Processing already covers Clean Products through Refined Coal.
- **Advanced Intermediate Products 2** (Advanced Intermediate Products + Chemical Science Pack): Apatitium Crystal, Apatitium Plate, Advanced Electronic Component, Advanced Fuse, and Advanced Machine Casing recipes.
  - Research costs 350 Automation, Logistic, and Chemical science packs at 30 seconds per unit.
  - Apatitium Crystal: 2 Azurium Crystals, 1 Clean Steel, and 50 sulfuric acid yield 2 crystals in 12 seconds in a Chemical Plant; each crystal becomes 1 plate in 6 seconds in a Formation Furnace.
  - Advanced Electronic Component: 1 Electronic Component, 2 Apatitium Plates, and 2 advanced circuits yield 1 in 4 seconds.
  - Advanced Fuse: 2 Fuses, 1 Apatitium Plate, and 1 advanced circuit yield 2 in 4 seconds.
  - Advanced Machine Casing: 1 Machine Casing, 4 Apatitium Plates, 2 Clean Steel, and 1 Advanced Electronic Component yield 1 in 6 seconds.
  - Earlier machines cover every recipe. Chemical Science Pack already requires both Sulfur Processing and Advanced Circuit; no separate Sulfur Processing prerequisite is needed.
- **Advanced Intermediate Products 3** (Advanced Intermediate Products 2 + Lithium R1 + Processing Unit): Amazonium Crystal, Amazonium Plate, Elite Electronic Component, Elite Fuse, and Elite Machine Casing recipes.
  - Research costs 500 Automation, Logistic, Chemical, and Production science packs at 30 seconds per unit.
  - Amazonium Crystal: 2 Apatitium Crystals and 25 Lithium yield 2 crystals in 16 seconds in a Chemical Plant; each crystal becomes 1 plate in 6 seconds in a Formation Furnace.
  - The Elite component, fuse, and casing recipes upgrade their Advanced counterparts using Amazonium Plates and Processing Units. Earlier machines can produce them.
  - Lithium supplies both Advanced Ore Processing R1 and Refinery R1, so neither needs a separate prerequisite link here. Processing Unit research supplies the processors required by the Elite recipes.
- **Advanced Infusion** (Advanced Intermediate Products 3 + Diesel Energy R1): Advanced Infusion Tool and Infused Enriched Coal recipes.
  - Research costs 750 Automation, Logistic, Chemical, and Production science packs at 30 seconds per unit.
  - Advanced Infusion Tool: 1 Infusion Tool, 1 Amazonium Crystal, 1 Elite Electronic Component, and 2 Advanced Fuses; 10 seconds.
  - Fuel recipe: 2 Enriched Coal and 1 Advanced Infusion Tool yield 2 Infused Enriched Coal in 4 seconds in a Formation Furnace; the tool is consumed.
  - The coal inputs provide 288 MJ; the outputs provide 576 MJ before processing costs. Both fuels store 14.4 GJ per stack (100 Enriched Coal or 50 Infused Enriched Coal), so the upgrade improves fuel yield rather than stack density.
  - Diesel Energy R1 already supplies Refined Coal R2; no separate prerequisite link is needed.
- **Beacon R1 / Powerful Transmission** (Effect Transmission + Advanced Intermediate Products 2): Beacon R1.
  - Research costs 500 Automation, Logistic, Chemical, and Production science packs at 30 seconds per unit, increased from 200 units.
  - Recipe: 1 Advanced Machine Casing, 2 Advanced Electronic Components, 4 Advanced Fuses, and 5 Cables; 4 seconds.
  - Advanced Intermediate Products 2 supplies the Apatitium parts and earlier mod materials; Effect Transmission covers the beacon branch and Production Science Pack. Neither direct prerequisite covers the other.
- **Advanced Centrifuge R2** (Nuclear Power + Kovarex Enrichment Process + Advanced Intermediate Products 3 + Military Science Pack + Space Science Pack): Centrifuge R2.
  - Research costs 1,500 of all seven science packs at 40 seconds per unit.
  - Recipe: 2 vanilla Centrifuges, 1 Elite Machine Casing, and 2 Elite Fuses; 4 seconds.
  - Advanced Intermediate Products 3 supplies the Amazonium parts, replacing the unrelated Advanced Compact Craft Machine prerequisite. Military Science Pack and Space Science Pack explicitly cover the remaining science unlocks; the space research path also supplies Utility Science Pack, while Kovarex covers Production Science Pack.
- **Warehouse Technology** (Advanced Intermediate Products + Chemical Science Pack): Warehouse R1.
  - Research costs 750 Automation, Logistic, and Chemical science packs at 20 seconds per unit.
  - Recipe: 10 Steel Chests, 25 Reinforced Iron Plates, 2 Machine Casings, and 5 Electronic Components; crafting time remains inherited from the vanilla Steel Chest recipe.
  - Advanced Intermediate Products covers Azurium parts and reinforced materials; Chemical Science Pack guarantees blue science. The separate Steel Processing prerequisite is redundant through these paths.
- **Big Storage Tank R1** (Mixer Products + Chemical Science Pack): Big Storage Tank R1.
  - Research costs 250 Automation, Logistic, and Chemical science packs at 30 seconds per unit.
  - Recipe: 5 vanilla Storage Tanks, 5 pipes, 5 steel plates, and 10 glue; 4 seconds. Capacity remains 100,000 fluid units.
  - Mixer Products supplies glue production; Chemical Science Pack supplies blue science and covers Fluid Handling through Sulfur Processing, Oil Processing, and Oil Gathering. A separate Fluid Handling link is redundant.
  - Earlier tank research: Fluid Handling requires Automation 2 and Engine, costs 50 Automation and Logistic science packs at 15 seconds per unit, and unlocks the vanilla Storage Tank. Each vanilla tank uses 20 iron plates and 5 steel plates in 3 seconds; its steel requirement is covered by the existing prerequisites. No change to the vanilla tank recipe or research is needed.
- **Big Storage Tank R2** (Big Storage Tank R1 + Advanced Intermediate Products 2 + Military Science Pack + Production Science Pack): Big Storage Tank R2, Advanced Pump, and the Copper/Iron Pipe R1/R2 and underground pipe recipes.
  - Research costs 375 Automation, Logistic, Military, Chemical, and Production science packs at 30 seconds per unit.
  - Tank recipe: 5 Large Storage Tanks, 15 vanilla pipes, 1 Advanced Machine Casing, and 2 Advanced Fuses; 4 seconds. Capacity remains 500,000 fluid units.
  - Advanced Intermediate Products 2 supplies the Apatitium parts and all mod materials used by the unchanged pipe and pump recipes. Military Science Pack and Production Science Pack cover the remaining science unlocks; the earlier tank research supplies the predecessor tanks.
- **Elite Storage Tank R3** (Big Storage Tank R2 + Advanced Intermediate Products 3 + Space Science Pack): Elite Storage Tank R3.
  - Research costs 500 of all seven science packs at 30 seconds per unit.
  - Recipe: 3 Advanced Storage Tanks, 50 vanilla pipes, 1 Elite Machine Casing, and 2 Elite Fuses; 4 seconds. Capacity remains 5 million fluid units.
  - Advanced Intermediate Products 3 supplies the Amazonium parts. The preceding tank research covers Military and Production science, and the Space Science Pack research path covers Utility science. None of the direct prerequisites covers another; no separate Utility Science Pack link is needed.
- **Electric Mining R2** (Electric Mining Drill + Advanced Intermediate Products 2): Mining Drill R2.
  - Research costs 400 Automation and Logistic science packs at 30 seconds per unit.
  - Recipe: 1 vanilla Electric Mining Drill, 1 Advanced Machine Casing, and 2 Advanced Fuses; 2 seconds.
  - The vanilla drill research guarantees the predecessor machine. Advanced Intermediate Products 2 supplies the Apatitium parts and covers Automation 2 transitively, replacing the redundant direct link. Although this research still consumes only red and green science, its material prerequisite places it after Chemical science.
- **Electric Mining R3** (Electric Mining R2 + Advanced Intermediate Products 3 + Military Science Pack): Mining Drill R3.
  - Research costs 600 Automation, Logistic, Chemical, Production, and Military science packs at 25 seconds per unit.
  - Recipe: 1 Advanced Electric Mining Drill, 2 Elite Fuses, 5 Reinforced Iron Plates, 5 Reinforced Copper Plates, and 5 Cables; 2 seconds.
  - Advanced Intermediate Products 3 supplies Amazonium fuses and covers Production Science Pack through Lithium and Advanced Ore Processing R1. Military Science Pack guarantees the remaining science unlock; the predecessor drill already contains the Advanced Machine Casing. No separate Production Science Pack link is needed.

## Military

```text
Exoskeleton Equipment R2
   ├── Exoskeleton Equipment
   └── Power Armor MK2

Laser Turret R2
   ├── Laser Turret
   ├── Military 3
   └── Power Armor MK2
```

Both technologies require Automation, Logistic, Military, Chemical, Production, Utility, and Space science packs. Exoskeleton Equipment R2 unlocks the R2 exoskeleton recipe; Laser Turret R2 unlocks the R2 laser turret recipe.

## Robots

```text
Red Robots
   ├── Construction Robotics
   ├── Logistic Robotics
   └── Logistic System

Worker Robot Battery 1 [Robotics]
   └── Worker Robot Battery 4
          └── Worker Robot Battery 8
                 └── Worker Robot Battery 12 (infinite)
```

- Red Robots requires Automation, Logistic, Chemical, Production, and Utility science packs. It unlocks Red Logistic/Construction Robots, Red Roboport, and the five Red logistic chests.
- Worker Robot Battery 1 requires Automation, Logistic, and Chemical packs. Battery 4 adds Production; Battery 8 adds Utility; Battery 12 adds Space. These are infinite technologies with research costs that scale by level.

## Railworld (requires the RERailworld mod)

These technologies are loaded only when `RERailworld` is installed.

```text
Electric Railway R1
   ├── Railway
   ├── Electric Engine
   └── Electric Energy Accumulators
   ├── Sonic Train R1
   │      └── Sonic Train R2
   │             ├── Electric Railway R2
   │             │      └── Sonic Train R3
   │             └── Electric Railway R3 (also requires Sonic Train R3)
   └── Railway R1
          └── Railway R2
                 └── Railway R3
```

- Electric Railway R1 unlocks the electric locomotive R1, control station, and workshop locomotive.
- Sonic Train R1 follows Electric Railway R1; unlocks Sonic Train R1, Giga Workshop R1, and its fuel recipes.
- Sonic Train R2 follows Sonic Train R1; unlocks Sonic Train R2 and Giga Fuel R2.
- Electric Railway R2 follows Sonic Train R2; unlocks Electric Locomotive R2.
- Sonic Train R3 follows Electric Railway R2; unlocks Sonic Train R3 and Giga Fuel R3.
- Electric Railway R3 follows Sonic Train R3; unlocks Electric Locomotive R3.
- Railway R1 requires Electric Railway R1 and Fluid Wagon; unlocks Workshop Wagon R1, Cargo Wagon R1, and Fluid Wagon R1.
- Railway R2 follows Railway R1; unlocks Cargo Wagon R2 and Fluid Wagon R2.
- Railway R3 follows Railway R2; unlocks material-specific cargo wagons and uranium wagon recipes.

## Quality of Life

When enabled in startup settings, four infinite research families are added: **Movement Speed**, **Inventory Capacity**, **Crafting Speed**, and **Mining Speed**. Each has Basic, Intermediate, Advanced, Expert, and Infinite tiers. Each tier follows the previous tier in that family; its science pack requirements progress from Automation through Logistic, Chemical, Production, and Utility packs. These technologies use per-level research costs.

## Source Files

`prototypes/Tech/Technology-Energy.lua`, `Technology-Machinery.lua`, `Technology-Military.lua`, `Technology-QoL.lua`, `Technology-Railworld.lua`, and `Technology-Robots.lua`.
