# Technology Tree

This guide summarizes the technologies declared in `prototypes/Tech/Technology-*.lua`. Arrows show research prerequisites. Pack names are the science packs required by the listed research; detailed entries include research counts, times, recipes, and dependency notes.

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
  - The Apatitium intermediates are unlocked first. Production Science Pack already covers Chemical Science Pack upstream.
- Extended Small Electric Pole has no separate research requirement. Its initially enabled recipe converts 8 vanilla Small Electric Poles into 2 upgraded poles in 1 second. Vanilla pole production is unlocked by Electronics, so the ingredient controls early availability.
  - Each upgraded pole costs the equivalent of 2 wood and 2 copper plates before processing time. Wire reach is 9 tiles and supply distance is 4 tiles, compared with 7.5 and 2.5 for vanilla; health is 100.
- Pole R1 requires Electric Energy Distribution 1 and Initial Products; unlocks Light Pole R1, Medium Pole R1, and Long Pole R1.
  - Research costs 300 Automation and Logistic science packs at 30 seconds per unit.
  - Light Pole: 5 iron plates, 2 copper gear wheels, and 4 copper cables yield 1 pole in 1 second.
  - Medium Pole: 1 vanilla Medium Electric Pole, 2 steel plates, and 2 copper plates yield 2 poles in 1.5 seconds.
  - Long Pole: 2 vanilla Big Electric Poles, 5 steel plates, and 5 reinforced components yield 1 pole in 1 second.
  - Initial Products supplies the reinforced components; Electric Energy Distribution 1 supplies the vanilla poles and their material research. Copper gear wheels are enabled from the start.
- Pole R2 requires Electric Energy Distribution 2, Pole R1, and Advanced Intermediate Products 2; unlocks Substation Pole R1.
  - Research costs 300 Automation, Logistic, and Chemical science packs at 30 seconds per unit.
  - Recipe: 3 vanilla Substations, 2 Advanced Electronic Components, and 3 copper gear wheels; 1 second.
  - Electric Energy Distribution 2 supplies the vanilla substations and Chemical Science Pack; Advanced Intermediate Products 2 supplies Apatitium electronics. Pole R1 supplies the preceding pole research.
- Solar R2 requires Advanced Intermediate Products 2; unlocks Solar Cell and Solar Panel R2.
  - Research costs 1,000 Automation, Logistic, and Chemical science packs at 30 seconds per unit.
  - Panel recipe: 2 vanilla Solar Panels, 5 Advanced Electronic Components, and 10 Solar Cells. Crafting takes 10 seconds, and production is 600 kW.
  - Solar Cell recipe: 2 Crystalline Silicon, 1 Electronic Component, and 2 Cables yield 1 cell in 5 seconds.
  - Advanced Intermediate Products 2 supplies Apatitium electronics and covers Solar Energy, Silicon Processing, earlier mod components, and Chemical Science Pack transitively. The solar-cell chain does not depend on Solar R2 until its final cell recipe is unlocked here.
- Solar R3 requires Solar R2 and Military Science Pack; unlocks Solar Panel R3.
  - Research costs 1,500 Automation, Logistic, Military, and Chemical science packs at 30 seconds per unit.
  - Recipe: 2 Solar Panels R2, 4 Advanced Fuses, and 4 Solar Cells. Crafting takes 10 seconds, and production is 6 MW.
  - Solar R2 already covers Apatitium fuses and solar-cell production. Military Science Pack supplies the corresponding science pack.
- Solar R4 requires Solar R3, Electric Energy Distribution 2, and Advanced Intermediate Products 3; unlocks Solar Panel R4.
  - Research costs 1,500 Automation, Logistic, Chemical, and Production science packs at 30 seconds per unit.
  - Recipe: 2 Solar Panels R3, 2 Elite Electronic Components, and 1 Solar Cell. Crafting takes 10 seconds, and production is 36 MW.
  - Advanced Intermediate Products 3 supplies Amazonium electronics and covers Production Science Pack through Lithium and Advanced Ore Processing R1. Solar R3 supplies the predecessor panels, and Electric Energy Distribution 2 covers the distribution branch.
- Solar R5 requires Solar R4 and Utility Science Pack; unlocks Solar Panel R5.
  - Research costs 3,000 Automation, Logistic, Chemical, Production, and Utility science packs at 30 seconds per unit.
  - Recipe: 2 Solar Panels R4 and 1 Elite Machine Casing. Crafting takes 10 seconds, and production is 150 MW.
  - The Elite Machine Casing contains 4 processing units in its ingredient chain. Solar R4 covers the Elite material recipes; Utility Science Pack supplies the corresponding science pack.
- Solar Panel Equipment R2 requires Solar Panel Equipment, Solar R2, and Production Science Pack; unlocks Solar Panel Equipment R2.
  - Research costs 500 Automation, Logistic, Chemical, and Production science packs at 30 seconds per unit.
  - Recipe: 2 vanilla Portable Solar Panels, 4 Solar Cells, and 2 Advanced Electronic Components; 10 seconds. Equipment power is 100 kW.
  - Solar R2 covers Apatitium electronics and solar-cell production; Solar Panel Equipment covers the predecessor equipment and armor research. Production Science Pack supplies the corresponding science pack.
- Accumulator R1 requires Electric Energy Accumulators, Lithium R1, and Advanced Intermediate Products 2; unlocks Battery R1 and Accumulator R2.
  - Research costs 500 Automation, Logistic, and Chemical science packs at 30 seconds per unit.
  - Accumulator R2 recipe: 2 vanilla Accumulators, 2 Advanced Electronic Components, and 2 Lithium Batteries; 10 seconds. Capacity is 30 MJ, with 900 kW input and output limits.
  - Lithium Battery recipe: 25 Lithium fluid and 3 copper plates yield 1 battery in 2 seconds in a Chemical Plant.
  - Electric Energy Accumulators supplies the predecessor accumulators, Lithium R1 supplies lithium production, and Advanced Intermediate Products 2 supplies Apatitium electronics and Chemical Science Pack. All required production machines are available before this research, which unlocks both the Lithium Battery and upgraded accumulator recipes.
- High-Capacity Accumulator research (`energy-accumulator-r2`) requires Accumulator R1, Advanced Intermediate Products 3, and Utility Science Pack; unlocks the High-Capacity Accumulator entity (`accumulator-r3`).
  - Research costs 1,000 Automation, Logistic, Chemical, Production, and Utility science packs at 30 seconds per unit.
  - Recipe: 1 Accumulator R2, 2 Elite Fuses, and 5 Lithium Batteries; 10 seconds. Capacity is 50 MJ, with 1.5 MW input and output limits.
  - The preceding accumulator research supplies the predecessor machine and battery recipe. Advanced Intermediate Products 3 supplies Amazonium fuses and covers Production Science Pack through Lithium and Advanced Ore Processing R1; Utility Science Pack supplies the corresponding science pack. None of these direct prerequisites covers another.

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
Long-Range Radar (requires vanilla Radar and Advanced Intermediate Products 2)
Advanced Centrifuge R2 (requires Nuclear Power, Kovarex Enrichment Process,
                         Advanced Intermediate Products 3, Military Science Pack,
                         and Space Science Pack)
```

Tech details and recipe unlocks:

- **Initial Products** (no prerequisite): reinforced component, reinforced coal plate, reinforced iron gear, and reinforced copper gear recipes.
- **Mixer Products** (Initial Products + Steel Processing): Mixer R1, Glue V1, reinforced iron plate, and reinforced copper plate recipes.
  - Mixer R1 costs 10 steel plates, 10 reinforced coal plates, 8 iron plates, and 10 reinforced components; crafting takes 7 seconds.
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
  - Advanced Intermediate Products unlocks the Azurium casing and fuses first. Its path through Silicon Processing, Refined Coal, and Clean Products already covers Automation 2.
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
  - Advanced Intermediate Products 2 supplies the Apatitium intermediates; Utility Science Pack covers yellow science. Advanced Ore Processing R1 already covers Production Science Pack.
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
  - Advanced Intermediate Products 2 supplies the Apatitium parts and already covers Clean Products and both earlier machines. Production Science Pack and Utility Science Pack cover the required purple and yellow science.
- **Refinery R1** (Lubricant + Advanced Intermediate Products): Refinery R1 and basic heavy/light oil recipes.
  - Research costs 400 Automation, Logistic, and Chemical science packs at 25 seconds per unit.
  - Refinery recipe: 3 Machine Casings, 15 Electronic Components, 6 Fuses, and 20 pipes; 5 seconds.
  - Lubricant covers the vanilla oil/chemical-science path; Advanced Intermediate Products covers the Azurium casings, fuses, and earlier mod materials.
  - The basic heavy/light oil recipes each process 100 crude oil into 45 units of the selected oil in 5 seconds.
- **Refinery R2** (Refinery R1 + Advanced Intermediate Products 2 + Production Science Pack + Utility Science Pack): Refinery R2.
  - Advanced Refinery research costs 500 Automation, Logistic, Chemical, Production, and Utility science packs at 40 seconds per unit.
  - Recipe: 2 Refinery R1, 1 Advanced Machine Casing, 2 Advanced Electronic Components, 2 Advanced Fuses, and 10 steel plates; 5 seconds.
  - Advanced Intermediate Products 2 supplies the Apatitium parts; Production Science Pack and Utility Science Pack guarantee the remaining science packs. Refinery R1 supplies the predecessor machines.
- **Oil Advanced Processing R1** (Refinery R1): advanced heavy oil, light oil, and petroleum recipes.
  - Research costs 500 Automation, Logistic, and Chemical science packs at 25 seconds per unit.
  - Each recipe processes 100 crude oil and 100 water into 90 units of the selected oil product in 5 seconds using the mod refinery category.
  - Refinery R1 supplies a compatible machine with two fluid inputs and already covers all three science packs.
- **Oil Special Processing R1** (Oil Advanced Processing R1 + Steam Power): special heavy/light oil, petroleum, and combined oil processing recipes.
  - Research costs 700 Automation, Logistic, and Chemical science packs at 25 seconds per unit.
  - Each dedicated recipe processes 100 crude oil and 75 steam into 130 units of the selected oil product in 5 seconds.
  - Combined processing consumes 100 crude oil and 100 steam to produce 55 heavy oil, 55 light oil, and 55 petroleum gas in 5 seconds.
  - The earlier refinery research supplies a compatible machine; Steam Power explicitly unlocks the boiler for steam production.
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
  - Infused Coal provides 72 MJ; its two Clean Coal inputs provide 32 MJ combined before processing costs.
  - Infusion Tool: 1 reinforced iron gear, 2 copper gear wheels, 1 reinforced iron plate, and 1 reinforced copper plate; 1 second.
- **Plastics R1** (Plastics + Refined Coal R1): alternate plastic bar recipe.
  - Research costs 220 Automation and Logistic science packs at 30 seconds per unit.
  - Recipe: 1 Clean Coal and 20 petroleum gas yield 4 plastic bars in 1 second in a Chemical Plant.
  - Plastics covers petroleum production and a compatible Chemical Plant; Refined Coal R1 covers Clean Coal and its processing machines. Neither direct prerequisite covers the other, and no additional link is needed.
  - Before productivity, making 4 plastic bars uses the same 2 ordinary coal as the vanilla route, but half the petroleum gas. The alternate route adds 20 pressurized water and coal-washing costs in exchange for its oil savings.
- **Diesel Energy R1** (Steam Energy R2 + Advanced Oil Processing + Refined Coal R2): Enriched Coal, Diesel Fuel, Enrichment Chamber R1, and three alternative Rocket Fuel recipes.
  - Enriched Coal research costs 900 Automation, Logistic, and Chemical science packs at 40 seconds per unit.
  - Enrichment Chamber: 2 Machine Casings, 8 Electronic Components, 4 Fuses, and 10 pipes; 4 seconds.
  - Diesel: 20 petroleum gas and 20 light oil yield 30 Diesel in 5 seconds in a Chemical Plant. The fluid has a heat capacity of 2 MJ per unit per degree and no defined fuel value.
  - Enriched Coal: 2 Clean Coal and 50 Diesel yield 1 Enriched Coal in 1 second in the chamber; its fuel value is 144 MJ.
  - Advanced Oil Processing supplies light/heavy oil, Refined Coal R2 supplies Infused Coal for the second Rocket Fuel alternative, and Steam Energy R2 covers Advanced Intermediate Products through its second tier.
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
  - Advanced Ore Processing R1 supplies the Heat Forge, and Refinery R1 supplies the mod's refinery. These paths already cover Silicon Processing and Oil Processing.
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
- **Long-Range Radar** (`radar-tech-r1`; Radar + Advanced Intermediate Products 2): Elite Radar (`red-radar`).
  - Research costs 400 Automation, Logistic, and Chemical science packs at 30 seconds per unit. Its icon reuses the existing 256-pixel radar artwork.
  - Recipe: 2 vanilla Radars, 2 Advanced Electronic Components, 4 Reinforced Copper Gears, and 5 Reinforced Iron Gears; 5 seconds. The recipe starts disabled and is unlocked by this research.
  - Radar supplies the predecessor radars; Advanced Intermediate Products 2 supplies Apatitium electronics, reinforced gears, and all three science-pack unlocks. Neither direct prerequisite covers the other, and all ingredients can be made before this research without a circular dependency.
  - Performance: 1 MW consumption, a nearby reveal distance of 25 chunks, and an exploration distance of 75 chunks.
- **Beacon R1 / Powerful Transmission** (Effect Transmission + Advanced Intermediate Products 2): Beacon R1.
  - Research costs 500 Automation, Logistic, Chemical, and Production science packs at 30 seconds per unit.
  - Recipe: 1 Advanced Machine Casing, 2 Advanced Electronic Components, 4 Advanced Fuses, and 5 Cables; 4 seconds.
  - Advanced Intermediate Products 2 supplies the Apatitium parts and earlier mod materials; Effect Transmission covers the beacon branch and Production Science Pack.
- **Advanced Centrifuge R2** (Nuclear Power + Kovarex Enrichment Process + Advanced Intermediate Products 3 + Military Science Pack + Space Science Pack): Centrifuge R2.
  - Research costs 1,500 of all seven science packs at 40 seconds per unit.
  - Recipe: 2 vanilla Centrifuges, 1 Elite Machine Casing, and 2 Elite Fuses; 4 seconds.
  - Advanced Intermediate Products 3 supplies the Amazonium parts. Military Science Pack and Space Science Pack explicitly supply the corresponding science packs; the space research path also supplies Utility Science Pack, while Kovarex covers Production Science Pack.
- **Warehouse Technology** (Advanced Intermediate Products + Chemical Science Pack): Warehouse R1.
  - Research costs 750 Automation, Logistic, and Chemical science packs at 20 seconds per unit.
  - Recipe: 10 Steel Chests, 25 Reinforced Iron Plates, 2 Machine Casings, and 5 Electronic Components; crafting takes 0.5 seconds.
  - Advanced Intermediate Products covers Azurium parts and reinforced materials; Chemical Science Pack guarantees blue science.
- **Big Storage Tank R1** (Mixer Products + Chemical Science Pack): Big Storage Tank R1.
  - Research costs 250 Automation, Logistic, and Chemical science packs at 30 seconds per unit.
  - Recipe: 5 vanilla Storage Tanks, 5 pipes, 5 steel plates, and 10 glue; 4 seconds. Capacity is 100,000 fluid units.
  - Mixer Products supplies glue production; Chemical Science Pack supplies blue science and covers Fluid Handling through Sulfur Processing, Oil Processing, and Oil Gathering.
  - Earlier tank research: Fluid Handling requires Automation 2 and Engine, costs 50 Automation and Logistic science packs at 15 seconds per unit, and unlocks the vanilla Storage Tank. Each vanilla tank uses 20 iron plates and 5 steel plates in 3 seconds; its steel requirement is covered by the existing prerequisites. No change to the vanilla tank recipe or research is needed.
- **Big Storage Tank R2** (Big Storage Tank R1 + Advanced Intermediate Products 2 + Military Science Pack + Production Science Pack): Big Storage Tank R2, Advanced Pump, and the Copper/Iron Pipe R1/R2 and underground pipe recipes.
  - Research costs 375 Automation, Logistic, Military, Chemical, and Production science packs at 30 seconds per unit.
  - Tank recipe: 5 Large Storage Tanks, 15 vanilla pipes, 1 Advanced Machine Casing, and 2 Advanced Fuses; 4 seconds. Capacity is 500,000 fluid units.
  - Advanced Pump recipe: 2 vanilla Pumps, 2 Advanced Electronic Components, 4 Apatitium Plates, and 2 Clean Steel; 5 seconds. The vanilla pumps include their engines. Pump performance is 4,800 fluid/s, 800 fluid capacity, and 175 kW.
  - Advanced Intermediate Products 2 supplies the Apatitium parts, Clean Steel production, and all mod materials used by the pipe recipes. The earlier tank path covers Fluid Handling and the vanilla Pump recipe. Military Science Pack and Production Science Pack supply the corresponding science packs.
- **Elite Storage Tank R3** (Big Storage Tank R2 + Advanced Intermediate Products 3 + Space Science Pack): Elite Storage Tank R3.
  - Research costs 500 of all seven science packs at 30 seconds per unit.
  - Recipe: 3 Advanced Storage Tanks, 50 vanilla pipes, 1 Elite Machine Casing, and 2 Elite Fuses; 4 seconds. Capacity is 5 million fluid units.
  - Advanced Intermediate Products 3 supplies the Amazonium parts. The preceding tank research covers Military and Production science, and the Space Science Pack research path covers Utility science.
- **Electric Mining R2** (Electric Mining Drill + Advanced Intermediate Products 2): Mining Drill R2.
  - Research costs 400 Automation and Logistic science packs at 30 seconds per unit.
  - Recipe: 1 vanilla Electric Mining Drill, 1 Advanced Machine Casing, and 2 Advanced Fuses; 2 seconds.
  - The vanilla drill research guarantees the predecessor machine. Advanced Intermediate Products 2 supplies the Apatitium parts and covers Automation 2 transitively. This research consumes red and green science, and its material prerequisite places it after Chemical science.
- **Electric Mining R3** (Electric Mining R2 + Advanced Intermediate Products 3 + Military Science Pack): Mining Drill R3.
  - Research costs 600 Automation, Logistic, Chemical, Production, and Military science packs at 25 seconds per unit.
  - Recipe: 1 Advanced Electric Mining Drill, 2 Elite Fuses, 5 Reinforced Iron Plates, 5 Reinforced Copper Plates, and 5 Cables; 2 seconds.
  - Advanced Intermediate Products 3 supplies Amazonium fuses and covers Production Science Pack through Lithium and Advanced Ore Processing R1. Military Science Pack supplies the corresponding science pack; the predecessor drill already contains the Advanced Machine Casing.

## Military

```text
Elite Exoskeleton
   ├── Exoskeleton Equipment
   ├── Power Armor MK2
   ├── Advanced Intermediate Products 3
   ├── Advanced Accumulator
   └── Space Science Pack

Elite Laser Turret
   ├── Laser Turret
   ├── Power Armor MK2
   ├── Advanced Intermediate Products 3
   └── Space Science Pack
```

Both technologies require Automation, Logistic, Military, Chemical, Production, Utility, and Space science packs. Elite Exoskeleton unlocks the Elite Exoskeleton recipe; Elite Laser Turret unlocks the Elite Laser Turret recipe.

- Elite Exoskeleton research costs 1,500 of all seven science packs at 30 seconds per unit.
  - Recipe: 4 vanilla Exoskeletons, 5 Elite Electronic Components, 2 Elite Fuses, and 10 Lithium Batteries; 20 seconds.
  - Advanced Intermediate Products 3 supplies Amazonium parts; Advanced Accumulator research unlocks the Lithium Battery recipe. Space Science Pack guarantees white science, and the remaining science requirements are covered by these paths and Power Armor MK2. Vanilla Exoskeleton research supplies the predecessor equipment, and Power Armor MK2 covers the armor branch.
  - Equipment, item, recipe, and technology display names are Elite Exoskeleton. Internal identifiers are `exoskeleton-equipment-r2` and `exoskeleton-tech-r2`. Equipment occupies a 2 by 4 grid, provides a 100% movement bonus, and consumes 1 MW.

- Elite Laser Turret research costs 2,000 of all seven science packs at 60 seconds per unit.
  - Recipe: 4 vanilla Laser Turrets, 20 Processing Units, 2 Speed Modules 2, and 15 Elite Electronic Components; 30 seconds.
  - The Elite components contain 30 processing units; combined with the 20 direct units, these ingredients require 50 processing units in total.
  - Advanced Intermediate Products 3 supplies Elite electronics and Production Science Pack; Space Science Pack guarantees white science. Power Armor MK2 covers Military 3 transitively, and Laser Turret supplies the predecessor turrets.
  - Technology, item, entity, and recipe display names are Elite Laser Turret; internal identifiers are `laser-turret-r2`.

## Robots

```text
Red Robots
   ├── Construction Robotics
   ├── Logistic System
   ├── Advanced Intermediate Products 2
   └── Production Science Pack

Worker Robot Battery 1-3 [Robotics]
   └── Worker Robot Battery 4-7 [also requires Production Science Pack]
          └── Worker Robot Battery 8-11 [also requires Utility Science Pack]
                 └── Worker Robot Battery 12+ (infinite; also requires Space Science Pack)
```

- Red Robots requires Automation, Logistic, Chemical, Production, and Utility science packs. It unlocks Red Logistic/Construction Robots, Red Roboport, and the five Red logistic chests.
  - Display name: Sonic Robots and Chests. Research costs 500 of each listed pack at 60 seconds per unit.
  - Prerequisites: Construction Robotics, Logistic System, Advanced Intermediate Products 2, and Production Science Pack. Logistic Robotics is already covered by Logistic System, which also covers Utility Science Pack; the Apatitium research supplies all mod materials, and Production Science Pack supplies the remaining science unlock.
  - Logistic Robot: 1 Flying Robot Frame and 1 Advanced Electronic Component; 3 seconds.
  - Construction Robot: 1 Flying Robot Frame, 2 Reinforced Iron Plates, and 1 Advanced Electronic Component; 3 seconds.
  - Roboport: 1 Advanced Machine Casing, 8 Advanced Electronic Components, 30 Reinforced Copper Gears, and 25 steel plates; 5 seconds.
  - Storage Chest: 4 Reinforced Iron Plates, 1 Advanced Circuit, and 2 Advanced Electronic Components; 1 second. Each of the other four chest recipes uses 4 Reinforced Copper Plates instead, with the same circuit, components, output, and time.
  - All eight construction recipes use Apatitium parts available through their research prerequisites.
- Worker Robot Battery levels 1-3 require Robotics and consume Automation, Logistic, and Chemical packs at 30 seconds per unit. Levels 4-7 add Production Science Pack as a prerequisite and ingredient, at 45 seconds per unit. Levels 8-11 add Utility Science Pack as a prerequisite and ingredient, at 60 seconds per unit. Level 12 onward adds Space Science Pack as a prerequisite and ingredient, also at 60 seconds per unit.
  - Each stage requires the preceding battery stage. Research costs are `100*L` units per level, with a +20% robot battery capacity bonus per level. Only the level-12 stage is infinite; the earlier stages have fixed level ranges. No construction recipes or material prerequisites are involved.

## Railworld (requires the RERailworld mod)

These technologies are loaded only when `RERailworld` is installed.

```text
Electric Railway R1 [Railway + Electric Engine + Electric Energy Accumulators + Craft Machine]
   ├── Sonic Train R1 (also requires Military Science Pack)
   │      └── Sonic Train R2
   │             └── Electric Railway R2 (also requires Production Science Pack)
   │                    └── Sonic Train R3 (also requires Nuclear Power and Utility Science Pack)
   │                           └── Electric Railway R3 (also requires Space Science Pack)
   └── Railway R1 (also requires Fluid Wagon)
          └── Railway R2 (also requires Utility Science Pack)
                 └── Railway R3 (also requires Uranium Mining)
```

- Electric Railway R1 unlocks the electric locomotive R1, control station, and workshop locomotive.
  - Research costs 250 Automation and Logistic science packs at 30 seconds per unit. Prerequisites are Railway, Electric Engine, Electric Energy Accumulators, and Craft Machine (`machinery-r2`).
  - Craft Machine supplies the two `assembler-r1` machines needed for the locomotive workshop and transitively covers its reinforced plates, electronic components, and cables. The other prerequisites cover vanilla locomotives, electric engines, batteries, accumulators, and advanced circuits.
  - Recipes: Electric Train R1 uses 10 electric engines, 2 vanilla locomotives, and 25 batteries; the provider uses 5 accumulators, 1 advanced circuit, and 100 batteries. The workshop uses 5 Reinforced Iron Plates, 5 Reinforced Copper Plates, 10 Electronic Components, 10 Cables, and 2 Craft Machines.
- Sonic Train R1 requires Electric Railway R1 and Military Science Pack; unlocks Sonic Train R1, Giga Workshop R1, and its fuel recipes.
  - Display name: Super Sonic Train & Fuel 1. Research costs 450 Automation, Logistic, and Military science packs at 30 seconds per unit.
  - The preceding electric-train path covers the locomotive workshop, Craft Machines, reinforced materials, and electronic components used by the fuel workshop. Electric Engine also leads through Lubricant and vanilla Advanced Oil Processing, covering heavy/light oil and solid fuel. The unlocked fuel workshop processes the solid-fuel alternative; earlier fluid-capable assemblers can process the oil alternatives.
  - Military Science Pack explicitly guarantees black science.
- Sonic Train R2 follows Sonic Train R1; unlocks Sonic Train R2 and Giga Fuel R2.
  - Display name: Super Sonic Train & Fuel 2. Research costs 500 Automation, Logistic, Chemical, and Military science packs at 30 seconds per unit.
  - The train recipe uses 3 Sonic Trains R1, 250 steel plates, 250 iron plates, and 100 electronic circuits in the existing locomotive workshop. Giga Fuel R2 uses 15 Giga Fuel and 15 solid fuel to produce 10 units in the existing fuel workshop. All ingredients and both workshop categories are covered by the preceding research.
  - Military science is covered by Sonic Train R1, and Chemical science is covered through Electric Railway R1's prerequisites. Sonic Train R1 supplies both workshops and the predecessor train and fuel recipes.
- Electric Railway R2 requires Sonic Train R2 and Production Science Pack; unlocks Electric Locomotive R2.
  - Display name: Electric trains R2. Research costs 500 Automation, Logistic, Chemical, and Production science packs at 30 seconds per unit.
  - The recipe uses 4 Electric Trains R1, 10 electric engines, and 10 basic Electronic Components in the existing locomotive workshop. Earlier electric-train and Craft Machine research covers every ingredient and the workshop.
  - Production Science Pack supplies purple science. Sonic Train R2 covers the preceding train and workshop unlocks.
- Sonic Train R3 requires Electric Railway R2, Nuclear Power, and Utility Science Pack; unlocks Sonic Train R3 and Giga Fuel R3.
  - Display name: Super Sonic Train & Fuel 3. Research costs 500 Automation, Logistic, Chemical, Military, and Utility science packs at 30 seconds per unit.
  - Train recipe: 5 Sonic Trains R2, 500 steel plates, 500 iron plates, and 300 electronic circuits, processed in the existing locomotive workshop.
  - Fuel recipe: 10 Giga Fuel R2 and 15 Uranium Fuel Cells yield 4 Giga Fuel R3 in the existing fuel workshop. Nuclear Power covers fuel-cell production and uranium processing; Utility Science Pack guarantees yellow science. The preceding electric-train chain covers all other ingredients, workshops, and science requirements.
- Electric Railway R3 requires Sonic Train R3 and Space Science Pack; unlocks Electric Locomotive R3.
  - Display name: Electric trains R3. Research costs 500 of all seven science packs at 30 seconds per unit.
  - The recipe uses 4 Electric Trains R2 and 10 Processing Units in the existing locomotive workshop. Sonic Train R3 covers the predecessor trains and processing units through its Utility Science Pack prerequisite; the earlier chain covers Production and Military science. Space Science Pack guarantees white science.
- Railway R1 requires Electric Railway R1 and Fluid Wagon; unlocks Workshop Wagon R1, Cargo Wagon R1, and Fluid Wagon R1.
  - Fluid Wagon R1 has a capacity of 150,000 fluid units.
  - Research costs 350 Automation, Logistic, and Chemical science packs at 30 seconds per unit.
  - Both wagon recipes use 1 matching vanilla wagon, 5 iron gear wheels, 5 copper gear wheels, and 10 steel plates, processed in the wagon workshop unlocked here. The workshop uses 5 Reinforced Iron Plates, 5 Reinforced Copper Plates, 10 Electronic Components, 10 Cables, and 2 Craft Machines.
  - Electric Railway R1 covers the workshop materials, vanilla Cargo Wagon, and Chemical Science Pack through its existing prerequisites. Fluid Wagon explicitly supplies the vanilla Fluid Wagon recipe. These prerequisites cover all construction ingredients and production machines.
- Railway R2 requires Railway R1 and Utility Science Pack; unlocks Cargo Wagon R2 and Fluid Wagon R2.
  - Research costs 500 Automation, Logistic, Chemical, and Utility science packs at 30 seconds per unit. Utility Science Pack guarantees yellow science; earlier wagon and electric-train research covers every recipe ingredient and the workshop.
  - Cargo Wagon R2 uses 1 Cargo Wagon R1, 5 basic Electronic Components, 5 Cables, and 5 reinforced components. Fluid Wagon R2 uses 2 Fluid Wagons R1 with the same component and cable quantities. Both recipes use the wagon workshop.
  - Cargo Wagon R2 has 260 slots, and Fluid Wagon R2 holds 250,000 fluid units.
- Railway R3 requires Railway R2 and Uranium Mining; unlocks material-specific cargo wagons and uranium wagon recipes.
  - Research costs 450 Automation, Logistic, Chemical, and Utility science packs at 30 seconds per unit.
  - All seven recipes use Cargo Wagon R2 and the existing wagon workshop. Earlier research covers the reinforced plates, reinforced gears, reinforced components, stone, and steel used by the copper, iron, coal, and two stone variants.
  - Both uranium variants additionally consume 50 raw Uranium Ore. Uranium Mining guarantees fluid-assisted mining; Chemical science already covers sulfuric acid production, and the earlier electric-train path covers the remaining production machines and science requirements.

## Quality of Life

When enabled in startup settings, four research families are added: **Movement Speed**, **Inventory Capacity**, **Crafting Speed**, and **Mining Speed**. Each has Basic, Intermediate, Advanced, Expert, and Infinite tiers. Only the final tier is infinite. Science requirements accumulate Automation, Logistic, Chemical, Utility, and Space packs in that order; these families do not consume Production science.

- The Basic tier requires Automation research. Each later tier requires its science-pack technology as well as a designated research in the previous tier, so its science unlocks are covered without material prerequisites.
- Movement, Crafting, and Mining each have four research nodes per finite tier. Intermediate, Advanced, and Expert tiers become available after the second node of their preceding tier; the Infinite tier requires the fourth Expert node.
- Inventory has two nodes in each of the Basic and Intermediate tiers, then four in Advanced and Expert. Intermediate and Advanced become available after the first node of their preceding tier; Expert requires the second Advanced node, and Infinite requires the fourth Expert node.
- Costs are `200*L`, `500*L`, `750*L`, and `1000*L` in the four finite tiers, then `1500*2^L` in the infinite tier, at 30 seconds per unit.

## Source Files

`prototypes/Tech/Technology-Energy.lua`, `Technology-Machinery.lua`, `Technology-Military.lua`, `Technology-QoL.lua`, `Technology-Railworld.lua`, and `Technology-Robots.lua`.
