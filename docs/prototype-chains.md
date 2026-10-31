# Other Prototype Ingredient Chains

This guide contains ingredient trees for products defined outside the core `Products` prototype files. Ingredient counts are omitted.

## Energy

### Solar Panel Upgrade Chain

```text
Solar Panel R5
   ├── Solar Panel R4
   └── Processing Unit

Solar Panel R4
   ├── Solar Panel R3
   ├── Advanced Circuit
   └── Solar Cell

Solar Panel R3
   ├── Solar Panel R2
   ├── Electronic Circuit
   └── Solar Cell

Solar Panel R2
   ├── Base Solar Panel
   ├── Electric Component
   └── Solar Cell
```

### Solar Panel Equipment R2

```text
Solar Panel Equipment R2
   ├── Solar Panel Equipment
   ├── Solar Cell
   └── Advanced Circuit
```

### Accumulator Chain

```text
Accumulator R3
   ├── Accumulator R2
   │      ├── Base Accumulator
   │      ├── Electronic Circuit
   │      └── Battery R1
   │             ├── Lithium
   │             └── Copper Plate
   ├── Iron Plate
   └── Battery R1

Battery R1
   ├── Lithium
   └── Copper Plate
```

See the [Lithium and Battery R1 Chain](ingredient-chains.md#lithium-and-battery-r1-chain) for the full lithium and copper plate ingredient trees.

### Boiler Chain

```text
Boiler R3
   ├── Boiler R2
   │      ├── Base Boiler
   │      ├── Pipe
   │      └── Copper Plate
   ├── Pipe
   └── Steel Plate

Boiler R2
   ├── Base Boiler
   ├── Pipe
   └── Copper Plate
```

### Steam Engine Chain

```text
Steam Engine R3
   ├── Steam Engine R2
   │      ├── Base Steam Engine
   │      ├── Copper Gear Wheel
   │      └── Copper Plate
   ├── Iron Gear Wheel
   ├── Iron Plate
   └── Steel Plate

Steam Engine R2
   ├── Base Steam Engine
   ├── Copper Gear Wheel
   └── Copper Plate
```

### Power Pole Chain

```text
Small Pole R1
   └── Small Electric Pole

Medium Pole R1
   ├── Medium Electric Pole
   ├── Steel Plate
   └── Copper Plate

Long Pole R1
   ├── Big Electric Pole
   ├── Steel Plate
   └── Reinforced Component

Substation Pole R1
   ├── Substation
   ├── Electric Component
   └── Copper Gear Wheel

Light Pole R1
   ├── Iron Plate
   ├── Copper Gear Wheel
   └── Copper Cable
```

See [Reinforced Materials and Gears](ingredient-chains.md#reinforced-materials-and-gears) and [Solar Cell Chain](ingredient-chains.md#solar-cell-chain) for the mod's component and gear ingredient trees.

Recipe sources: `prototypes/Energy/Accumulators.lua`, `Boilers.lua`, `Poles.lua`, `Solar-Panels.lua`, and `Steam-Engines.lua`.

## Storage

### Warehouse R1

```text
Warehouse R1
   ├── Steel Chest
   ├── Iron Plate
   ├── Copper Plate
   ├── Reinforced Iron Plate
   └── Reinforced Coal Plate
```

### Big Storage Tank Chain

```text
Elite Storage Tank R3
   ├── Big Storage Tank R2
   │      ├── Big Storage Tank R1
   │      │      ├── Storage Tank
   │      │      ├── Pipe
   │      │      ├── Steel Plate
   │      │      └── Glue
   │      ├── Pipe
   │      ├── Reinforced Copper Plate
   │      ├── Reinforced Coal Plate
   │      └── Glue
   ├── Pipe
   ├── Reinforced Copper Plate
   ├── Reinforced Coal Plate
   └── Glue
```

See [Reinforced Materials and Gears](ingredient-chains.md#reinforced-materials-and-gears) and [Glue and Cable Chain](ingredient-chains.md#glue-and-cable-chain) for the expanded reinforced plate and glue ingredients.

Recipe sources: `prototypes/Storage/Warehouses.lua` and `prototypes/Storage/Big-storage-tank.lua`.

## Machinery

### Assemblers

```text
Assembler R2
   ├── Assembler R1
   │      ├── Half Assembler R1
   │      │      ├── Reinforced Iron Gear
   │      │      ├── Reinforced Copper Gear
   │      │      └── Electronic Circuit
   │      ├── Reinforced Iron Gear
   │      ├── Reinforced Copper Gear
   │      ├── Electronic Circuit
   │      └── Reinforced Iron Plate
   ├── Steel Plate
   ├── Reinforced Iron Plate
   ├── Reinforced Copper Plate
   ├── Electric Engine Unit
   └── Processing Unit

Half Assembler R2
   ├── Half Assembler R1
   ├── Steel Plate
   ├── Reinforced Iron Gear
   └── Reinforced Copper Gear
```

### Ore, Metal, and Fluid Processing Machinery

```text
Washer Chamber R2
   ├── Steel Plate
   └── Washer Chamber R1
          ├── Steel Plate
          ├── Reinforced Iron Gear
          ├── Reinforced Coal Plate
          ├── Pipe
          └── Assembling Machine 2

Water Condenser R2
   ├── Steel Plate
   └── Water Condenser R1
          ├── Steel Plate
          ├── Reinforced Iron Plate
          ├── Reinforced Copper Plate
          ├── Cable
          └── Electric Component

Compressor R2
   ├── Compressor R1
   │      ├── Steel Plate
   │      ├── Reinforced Iron Gear
   │      ├── Reinforced Copper Gear
   │      └── Reinforced Copper Plate
   ├── Steel Plate
   ├── Reinforced Iron Plate
   └── Reinforced Copper Plate

Mixer R1
   ├── Steel Plate
   ├── Reinforced Coal Plate
   ├── Iron Stick
   └── Reinforced Component

Enrichment Chamber R1
   ├── Reinforced Coal Plate
   ├── Reinforced Iron Plate
   ├── Reinforced Copper Plate
   ├── Electric Component
   └── Cable

Formation Furnace R1
   ├── Reinforced Component
   ├── Reinforced Iron Plate
   └── Reinforced Copper Plate

Electric Formation Furnace R1
   ├── Reinforced Coal Plate
   ├── Reinforced Iron Plate
   ├── Reinforced Copper Plate
   ├── Reinforced Component
   └── Cable

Cast Chamber R2
   ├── Steel Plate
   └── Cast Chamber R1
          ├── Reinforced Copper Plate
          ├── Reinforced Coal Plate
          ├── Pipe
          └── Electric Component

Heat Forge Chamber R2
   ├── Steel Plate
   └── Heat Forge Chamber R1
          ├── Reinforced Iron Plate
          ├── Reinforced Coal Plate
          ├── Reinforced Iron Gear
          ├── Pipe
          └── Electric Component

Chemical Machine R2
   ├── Chemical Machine R1
   │      ├── Steel Plate
   │      ├── Reinforced Iron Gear
   │      ├── Reinforced Copper Plate
   │      ├── Electric Component
   │      └── Pipe
   ├── Steel Plate
   ├── Electric Component
   ├── Reinforced Copper Plate
   └── Pipe

Refinery R2
   ├── Refinery R1
   │      ├── Reinforced Iron Plate
   │      ├── Reinforced Copper Plate
   │      ├── Reinforced Coal Plate
   │      ├── Electric Component
   │      └── Pipe
   ├── Steel Plate
   ├── Electric Component
   └── Reinforced Copper Plate

Centrifuge R2
   ├── Base Centrifuge
   ├── Reinforced Iron Gear
   └── Electric Component
```

### Furnaces and Mining

```text
Electric Stone Furnace
   ├── Stone Furnace
   ├── Electronic Circuit
   └── Electric Component

Electric Steel Furnace
   ├── Steel Furnace
   ├── Electronic Circuit
   ├── Reinforced Iron Plate
   └── Reinforced Copper Gear

Mining Drill R2
   ├── Electric Mining Drill
   ├── Reinforced Copper Gear
   └── Reinforced Iron Plate

Mining Drill R3
   ├── Mining Drill R2
   ├── Cable
   ├── Reinforced Component
   ├── Electronic Circuit
   ├── Reinforced Iron Plate
   └── Reinforced Copper Plate
```

### Logistic Robots and Chests

```text
Logistic Robot (Red)
   ├── Flying Robot Frame
   └── Advanced Circuit

Construction Robot (Red)
   ├── Flying Robot Frame
   ├── Reinforced Iron Plate
   └── Electronic Circuit

Roboport (Red)
   ├── Advanced Circuit
   ├── Reinforced Copper Gear
   ├── Reinforced Iron Plate
   └── Steel Plate

Storage Chest (Red)
   ├── Reinforced Iron Plate
   ├── Advanced Circuit
   └── Electric Component

Passive Provider Chest (Red)
   ├── Reinforced Copper Plate
   ├── Advanced Circuit
   └── Electric Component

Requester Chest (Red)
   ├── Reinforced Copper Plate
   ├── Advanced Circuit
   └── Electric Component

Buffer Chest (Red)
   ├── Reinforced Copper Plate
   ├── Advanced Circuit
   └── Electric Component

Active Provider Chest (Red)
   ├── Reinforced Copper Plate
   ├── Advanced Circuit
   └── Electric Component
```

### Radar and Air Purification

```text
Red Radar
   ├── Radar
   ├── Advanced Circuit
   ├── Reinforced Copper Gear
   └── Reinforced Iron Gear

Air Purificator R1
   ├── Reinforced Iron Plate
   ├── Reinforced Copper Plate
   └── Cable

Purificator Tool (Filled)
   ├── Purificator Tool (Empty)
   └── Water

Purificator Tool (Empty)
   └── Reinforced Iron Plate

Pure Air Recipe
   └── Purificator Tool (Filled)
       └── returns Purificator Tool (Empty)
```

See [Reinforced Materials and Gears](ingredient-chains.md#reinforced-materials-and-gears), [Glue and Cable Chain](ingredient-chains.md#glue-and-cable-chain), and [Solar Cell Chain](ingredient-chains.md#solar-cell-chain) for expanded mod-added components.

Recipe sources: `prototypes/Machinery/` (Assemblers, Air-Purification, ChemicalMachine, Compressor, Furnaces, Machinery, Mining-Drill, Radar, Refinery, and Robots).

## Military

### Exoskeleton Equipment R2

```text
Exoskeleton Equipment R2
   ├── Exoskeleton Equipment
   ├── Electric Component
   ├── Battery R1
   └── Reinforced Coal Plate
```

### Laser Turret R2

```text
Laser Turret R2
   ├── Laser Turret
   ├── Processing Unit
   ├── Speed Module 2
   └── Electric Component
```

See [Reinforced Materials and Gears](ingredient-chains.md#reinforced-materials-and-gears) and [Lithium and Battery R1 Chain](ingredient-chains.md#lithium-and-battery-r1-chain) for the expanded electric component, reinforced plate, and battery ingredients.

Recipe sources: `prototypes/Military/Equipment.lua` and `prototypes/Military/Laser-Turret.lua`.
