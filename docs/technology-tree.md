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

- Steam Energy R1 requires Engine; unlocks Boiler R2 and Steam Engine R2.
- Steam Energy R2 requires Steam Energy R1; unlocks Boiler R3 and Steam Engine R3.
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
   └── Mixer Products
          └── Advanced Products
                 └── Clean Products ─────────────┐
                                                  ├── Advanced Ore Processing R1
Electric Furnace R1 ── Advanced Formation Furnace┘      └── Advanced Ore Processing R2

Electric Furnace R1 ── Machinery R1 ── Advanced Half Assembler R2
                                  └── Water Product R1 ── Advanced Water R2

Electric Furnace R2 ── Machinery R2 ── Machinery R3

Advanced Chemical Machine R1 ── Advanced Chemical Machine R2

Refinery R1 ── Oil Advanced Processing R1 ── Oil Special Processing R1

Charcoal R1 ── Refined Coal R1 ── Plastics R1
                         └── Advanced Formation Furnace

Steam Energy R2 + Oil Processing ── Diesel Energy R1

Silicon Processing + Oil Processing ── Lithium R1

Beacon R1 (requires Effect Transmission)
Advanced Centrifuge R2 (requires Nuclear Power, Kovarex Enrichment Process,
                         and Advanced Half Assembler R2)
```

Tech details and recipe unlocks:

- **Initial Products** (no prerequisite): reinforced component, reinforced coal plate, reinforced iron gear, and reinforced copper gear recipes.
- **Mixer Products** (Initial Products): Mixer R1, Glue V1, reinforced iron plate, and reinforced copper plate recipes.
- **Advanced Products** (Mixer Products): electric component and cable recipes.
- **Clean Products** (Automation 2 + Advanced Products): Compressor R1, Washer Chamber R1, pressurized water, clean iron/copper, and the clean plate recipes.
- **Electric Furnace R1** (Electronics): Electric Stone Furnace, clean steel V1, Formation Furnace R1, and steel plate V1.
- **Electric Furnace R2** (Advanced Material Processing): Electric Steel Furnace.
- **Machinery R1** (Electric Furnace R1): Half Assembler R1.
- **Machinery R2** (Automation 2 + Electric Furnace R2): Assembler R1.
- **Machinery R3** (Automation 3 + Machinery R2): Assembler R2.
- **Advanced Half Assembler R2** (Machinery R1 + Machinery R2): Half Assembler R2.
- **Water Product R1** (Machinery R1): Water Condenser R1, water recipe, Air Purificator R1, Pure Air, and filled/empty Purificator Tool recipes.
- **Advanced Water R2** (Water Product R1): Water Condenser R2.
- **Advanced Formation Furnace** (Electric Furnace R1 + Refined Coal R1): Electric Formation Furnace R1 and clean steel V2.
- **Advanced Ore Processing R1** (Clean Products + Advanced Formation Furnace): Heat Forge Chamber R1, Cast Chamber R1, molten iron/copper/steel, and molten metal plate recipes.
- **Advanced Ore Processing R2** (Advanced Ore Processing R1): Cast Chamber R2 and Heat Forge Chamber R2.
- **Advanced Chemical Machine R1** (Chemical Science Pack): Chemical Machine R1.
- **Advanced Chemical Machine R2** (Advanced Chemical Machine R1): Chemical Machine R2.
- **Refinery R1** (Lubricant): Refinery R1 and basic heavy/light oil recipes.
- **Refinery R2** (Refinery R1): Refinery R2.
- **Oil Advanced Processing R1** (Refinery R1): advanced heavy oil, light oil, and petroleum recipes.
- **Oil Special Processing R1** (Oil Advanced Processing R1): special heavy/light oil, petroleum, and combined oil processing recipes.
- **Charcoal R1** (Logistics): wood-to-coal recipe.
- **Refined Coal R1** (Charcoal R1 + Clean Products): clean coal and alternate Glue V2 recipes.
- **Plastics R1** (Plastics + Refined Coal R1): alternate plastic bar recipe.
- **Diesel Energy R1** (Steam Energy R2 + Oil Processing): Enriched Coal, Diesel Fuel, and Enrichment Chamber R1 recipes.
- **Silicon Processing** (Solar Energy): Blue Quartz and Crystalline Silicon recipes.
- **Lithium R1** (Silicon Processing + Oil Processing): Molten Coal, Enriched Petroleum, and Lithium recipes.
- **Beacon R1** (Effect Transmission): Beacon R1.
- **Advanced Centrifuge R2** (Nuclear Power + Kovarex Enrichment Process + Advanced Half Assembler R2): Centrifuge R2.
- **Warehouse Technology** (Steel Processing): Warehouse R1.
- **Big Storage Tank R1** (Fluid Handling): Big Storage Tank R1.
- **Big Storage Tank R2** (Big Storage Tank R1): Big Storage Tank R2.
- **Elite Storage Tank R3** (Big Storage Tank R2): Elite Storage Tank R3.
- **Electric Mining R2** (Automation 2): Mining Drill R2.
- **Electric Mining R3** (Electric Mining R2): Mining Drill R3.

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

## Railworld

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
