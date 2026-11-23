# Other Prototype Ingredient Chains

This guide contains ingredient trees for products defined outside the core `Products` prototype files. Ingredient counts are omitted.

## Energy

### Solar Panel Upgrade Chain

```text
Solar Panel R5
   ├── Solar Panel R4
   └── Elite Machine Casing

Solar Panel R4
   ├── Solar Panel R3
   ├── Elite Electronic Component
   └── Solar Cell

Solar Panel R3
   ├── Solar Panel R2
   ├── Advanced Fuse
   └── Solar Cell

Solar Panel R2
   ├── Base Solar Panel
   ├── Advanced Electronic Component
   └── Solar Cell
```

### Solar Panel Equipment R2

```text
Solar Panel Equipment R2
   ├── Solar Panel Equipment
   ├── Solar Cell
   └── Advanced Electronic Component
```

### Accumulator Chain

```text
Accumulator R3
   ├── Accumulator R2
   │      ├── Base Accumulator
   │      ├── Advanced Electronic Component
   │      └── Battery R1
   │             ├── Lithium
   │             └── Copper Plate
   ├── Elite Fuse
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
   ├── Advanced Machine Casing
   ├── Pipe
   └── Advanced Fuse

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
   ├── Advanced Machine Casing
   ├── Advanced Electronic Component
   └── Advanced Fuse

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
   ├── Advanced Electronic Component
   └── Copper Gear Wheel

Light Pole R1
   ├── Iron Plate
   ├── Copper Gear Wheel
   └── Copper Cable
```

See [Reinforced Materials and Gears](ingredient-chains.md#reinforced-materials-and-gears) and [Solar Cell Chain](ingredient-chains.md#solar-cell-chain) for the mod's component and gear ingredient trees.

Recipe sources: `prototypes/Energy/Accumulators.lua`, `Boilers.lua`, `Poles.lua`, `Solar-Panels.lua`, and `Steam-Engines.lua`.

### Fluid Pipe Chain

```text
Underground Copper Pipe R1
   ├── Copper Pipe R1
   └── Reinforced Copper Plate

Copper Pipe R1
   ├── Reinforced Copper Plate
   └── Glue

Underground Iron Pipe R2
   ├── Iron Pipe R2
   └── Reinforced Iron Plate

Iron Pipe R2
   ├── Reinforced Iron Plate
   └── Glue
```

The underground pipe recipes also use the corresponding regular pipe as an ingredient. See [Reinforced Materials and Gears](ingredient-chains.md#reinforced-materials-and-gears) and [Glue and Cable Chain](ingredient-chains.md#glue-and-cable-chain) for those ingredient chains.

Recipe source: `prototypes/Products/Pipes.lua`.

## Storage

### Warehouse R1

```text
Warehouse R1
   ├── Steel Chest
   ├── Reinforced Iron Plate
   ├── Machine Casing
   └── Electronic Component
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
   │      ├── Advanced Machine Casing
   │      └── Advanced Fuse
   ├── Pipe
   ├── Elite Machine Casing
   └── Elite Fuse
```

See [Reinforced Materials and Gears](ingredient-chains.md#reinforced-materials-and-gears) and [Glue and Cable Chain](ingredient-chains.md#glue-and-cable-chain) for the expanded reinforced plate and glue ingredients.

Recipe sources: `prototypes/Storage/Warehouses.lua` and `prototypes/Storage/Big-storage-tank.lua`.

### Advanced Pump

```text
Advanced Pump
   ├── Base Pump
   ├── Advanced Electronic Component
   ├── Apatitium Plate
   └── Clean Steel
```

The Advanced Pump moves up to 4,800 fluid/s, has an 800-unit internal fluid capacity, and uses 175 kW while active. Big Storage Tank R2 research unlocks its recipe.

Recipe: 2 vanilla Pumps, 2 Advanced Electronic Components, 4 Apatitium Plates, and 2 Clean Steel; 5 seconds. The vanilla pumps supply the drive mechanisms, while the components and plates provide upgraded controls and housing.

Recipe source: `prototypes/Storage/Pumps.lua`.

## Machinery

### Assemblers

```text
Assembler R2
   ├── Assembler R1
   │      ├── Half Assembler R1
   │      │      ├── Reinforced Iron Gear
   │      │      ├── Reinforced Copper Gear
   │      │      └── Electronic Circuit
   │      ├── Machine Casing
   │      ├── Electronic Component
   │      └── Fuse
   ├── Elite Machine Casing
   ├── Elite Electronic Component
   ├── Elite Fuse
   ├── Steel Plate
   └── Electric Engine Unit

Half Assembler R2
   ├── Half Assembler R1
   ├── Advanced Machine Casing
   ├── Advanced Electronic Component
   ├── Advanced Fuse
   └── Steel Plate
```

### Ore, Metal, and Fluid Processing Machinery

```text
Washer Chamber R2
   ├── Advanced Machine Casing
   ├── Advanced Fuse
   ├── Steel Plate
   ├── Pipe
   └── Washer Chamber R1
          ├── Steel Plate
          ├── Reinforced Iron Gear
          ├── Reinforced Coal Plate
          ├── Pipe
          └── Assembling Machine 2

Water Condenser R2
   ├── Advanced Machine Casing
   ├── Advanced Fuse
   ├── Pipe
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
   ├── Advanced Machine Casing
   ├── Advanced Fuse
   ├── Steel Plate
   └── Pipe

Mixer R1
   ├── Steel Plate
   ├── Reinforced Coal Plate
   ├── Iron Plate
   └── Reinforced Component

Enrichment Chamber R1
   ├── Machine Casing
   ├── Electronic Component
   ├── Fuse
   └── Pipe

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
   ├── Advanced Machine Casing
   ├── Advanced Fuse
   ├── Pipe
   ├── Steel Plate
   └── Cast Chamber R1
          ├── Machine Casing
          ├── Electronic Component
          ├── Fuse
          └── Pipe

Heat Forge Chamber R2
   ├── Advanced Machine Casing
   ├── Advanced Electronic Component
   ├── Advanced Fuse
   ├── Pipe
   ├── Steel Plate
   └── Heat Forge Chamber R1
          ├── Machine Casing
          ├── Electronic Component
          ├── Fuse
          └── Pipe

Chemical Machine R2
   ├── Chemical Machine R1
   │      ├── Steel Plate
   │      ├── Machine Casing
   │      ├── Electronic Component
   │      ├── Fuse
   │      └── Pipe
   ├── Advanced Machine Casing
   ├── Advanced Electronic Component
   ├── Advanced Fuse
   ├── Steel Plate
   └── Pipe

Refinery R2
   ├── Refinery R1
   │      ├── Machine Casing
   │      ├── Electronic Component
   │      ├── Fuse
   │      └── Pipe
   ├── Advanced Machine Casing
   ├── Advanced Electronic Component
   ├── Advanced Fuse
   └── Steel Plate

Beacon R1
   ├── Advanced Machine Casing
   ├── Advanced Electronic Component
   ├── Advanced Fuse
   └── Cable

Centrifuge R2
   ├── Base Centrifuge
   ├── Elite Machine Casing
   └── Elite Fuse
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
   ├── Advanced Machine Casing
   └── Advanced Fuse

Mining Drill R3
   ├── Mining Drill R2
   ├── Cable
   ├── Elite Fuse
   ├── Reinforced Iron Plate
   └── Reinforced Copper Plate
```

### Logistic Robots and Chests

```text
Logistic Robot (Red)
   ├── Flying Robot Frame
   └── Advanced Electronic Component

Construction Robot (Red)
   ├── Flying Robot Frame
   ├── Reinforced Iron Plate
   └── Advanced Electronic Component

Roboport (Red)
   ├── Advanced Machine Casing
   ├── Advanced Electronic Component
   ├── Reinforced Copper Gear
   └── Steel Plate

Storage Chest (Red)
   ├── Reinforced Iron Plate
   ├── Advanced Circuit
   └── Advanced Electronic Component

Passive Provider Chest (Red)
   ├── Reinforced Copper Plate
   ├── Advanced Circuit
   └── Advanced Electronic Component

Requester Chest (Red)
   ├── Reinforced Copper Plate
   ├── Advanced Circuit
   └── Advanced Electronic Component

Buffer Chest (Red)
   ├── Reinforced Copper Plate
   ├── Advanced Circuit
   └── Advanced Electronic Component

Active Provider Chest (Red)
   ├── Reinforced Copper Plate
   ├── Advanced Circuit
   └── Advanced Electronic Component
```

### Radar and Air Purification

```text
Red Radar
   ├── Radar
   ├── Advanced Electronic Component
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

Purificator Tool Use (recipe named "Pure Air")
   ├── Consumes Purificator Tool (Filled)
   │      ├── Purificator Tool (Empty)
   │      └── Water
   └── Returns Purificator Tool (Empty)

The recipe does not produce a separate Pure Air item; it consumes a filled tool and returns an empty one.
```

See [Reinforced Materials and Gears](ingredient-chains.md#reinforced-materials-and-gears), [Glue and Cable Chain](ingredient-chains.md#glue-and-cable-chain), and [Solar Cell Chain](ingredient-chains.md#solar-cell-chain) for expanded mod-added components.

Recipe sources: `prototypes/Machinery/` (Assemblers, Air-Purification, ChemicalMachine, Compressor, Furnaces, Machinery, Mining-Drill, Radar, Refinery, and Robots).

## Military

### Elite Exoskeleton

```text
Elite Exoskeleton
   ├── Exoskeleton Equipment
   ├── Elite Electronic Component
   ├── Battery R1
   └── Elite Fuse
```

### Elite Laser Turret

```text
Elite Laser Turret
   ├── Laser Turret
   ├── Processing Unit
   ├── Speed Module 2
   └── Elite Electronic Component
```

See [Reinforced Materials and Gears](ingredient-chains.md#reinforced-materials-and-gears) and [Lithium and Battery R1 Chain](ingredient-chains.md#lithium-and-battery-r1-chain) for the expanded electric component, reinforced plate, and battery ingredients.

Recipe sources: `prototypes/Military/Equipment.lua` and `prototypes/Military/Laser-Turret.lua`.
