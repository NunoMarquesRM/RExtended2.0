# Intermediate Product Ingredient Chains

Trees show each product first, followed by the ingredients needed to make it. Ingredient counts are omitted. Vanilla ingredients and fluids are included where they are part of a recipe.

## Solar Cell Chain

```text
Solar Cell
   ├── Crystalline Silicon
   │      ├── Blue Quartz
   │      │      ├── Stone
   │      │      └── Pressurized Water
   │      │             └── Water
   │      └── Clean Coal
   │             ├── Coal
   │             └── Pressurized Water
   │                    └── Water
   ├── Electric Component
   │      ├── Reinforced Iron Plate
   │      │      ├── Iron Plate
   │      │      ├── Glue
   │      │      │      ├── Coal
   │      │      │      └── Water
   │      │      └── Reinforced Component
   │      │             ├── Iron Plate
   │      │             └── Copper Plate
   │      ├── Reinforced Copper Plate
   │      │      ├── Copper Plate
   │      │      ├── Glue
   │      │      └── Reinforced Component
   │      ├── Reinforced Coal Plate
   │      │      ├── Coal
   │      │      ├── Iron Plate
   │      │      └── Reinforced Component
   │      └── Cable
   │             ├── Copper Cable
   │             └── Glue
   └── Cable
          ├── Copper Cable
          └── Glue
```

## Clean Ore and Plate Chain

```text
Iron Plate
   ├── Clean Iron
   │      ├── Iron Ore
   │      └── Pressurized Water
   │             └── Water
   └── OR Molten Iron Casting
          ├── Molten Iron
          │      └── Clean Iron
          └── Pressurized Water

Copper Plate
   ├── Clean Copper
   │      ├── Copper Ore
   │      └── Pressurized Water
   │             └── Water
   └── OR Molten Copper Casting
          ├── Molten Copper
          │      └── Clean Copper
          └── Pressurized Water

Steel Plate
   ├── Clean Steel
   │      ├── Iron Ore
   │      └── Coal
   ├── OR Clean Steel
   │      ├── Clean Iron
   │      └── Clean Coal
   └── OR Molten Steel Casting
          ├── Molten Steel
          │      └── Clean Steel
          └── Pressurized Water

Clean Coal
   ├── Coal
   └── Pressurized Water
          └── Water

Pressurized Water
   └── Water
```

## Glue and Cable Chain

```text
Cable
   ├── Copper Cable
   └── Glue
       ├── Coal
       └── Water

Glue (alternate recipe)
   ├── Clean Coal
   │      ├── Coal
   │      └── Pressurized Water
   └── Water
```

## Reinforced Materials and Gears

```text
Reinforced Component
   ├── Iron Plate
   └── Copper Plate

Reinforced Iron Plate
   ├── Iron Plate
   ├── Glue
   └── Reinforced Component

Reinforced Copper Plate
   ├── Copper Plate
   ├── Glue
   └── Reinforced Component

Reinforced Coal Plate
   ├── Coal
   ├── Iron Plate
   └── Reinforced Component

Reinforced Iron Gear
   ├── Iron Plate
   └── Iron Gear Wheel

Reinforced Copper Gear
   ├── Copper Plate
   └── Copper Gear Wheel
          └── Copper Plate

Copper Gear Wheel
   └── Copper Plate
```

## Coal and Plastic Products

```text
Coal (wood recipe)
   └── Wood

Plastic Bar (mod recipe)
   ├── Clean Coal (direct ingredient)
   │      ├── Coal
   │      └── Pressurized Water
   └── Petroleum Gas (direct ingredient)
          └── Crude Oil Processing

Clean Coal R1
   ├── Coal
   └── Pressurized Water
          └── Water

Infused Coal (Clean Coal R2)
   ├── Clean Coal R1
   └── Infuse Tool R1
          ├── Reinforced Iron Gear
          ├── Copper Gear Wheel
          ├── Reinforced Iron Plate
          └── Reinforced Copper Plate

Enriched Coal (Clean Coal R3)
   ├── Diesel Fuel
   │      ├── Petroleum Gas
   │      └── Light Oil
   └── Clean Coal R1

Infused Enriched Coal (Clean Coal R4)
   ├── Enriched Coal (Clean Coal R3)
   └── Advanced Infusion Tool
          ├── Infusion Tool
          ├── Amazonium Crystal
          ├── Elite Electronic Component
          └── Advanced Fuse

Enriched Petroleum
   ├── Molten Coal
   │      └── Clean Coal
   │             ├── Coal
   │             └── Pressurized Water
   └── Crude Oil

Molten Coal
   └── Clean Coal
          ├── Coal
          └── Pressurized Water

Rocket Fuel R1
   ├── Clean Coal R1
   └── Heavy Oil

Rocket Fuel R2
   ├── Infused Coal (Clean Coal R2)
   └── Diesel Fuel

Rocket Fuel R3
   └── Enriched Coal (Clean Coal R3)
```

These alternative recipes run in the Enrichment Chamber and yield 1, 2, and 3 Rocket Fuel, respectively. They take 20, 15, and 10 seconds and support productivity.

## Lithium and Battery R1 Chain

```text
Battery R1
   ├── Lithium
   │      ├── Enriched Petroleum
   │      │      ├── Molten Coal
   │      │      │      └── Clean Coal
   │      │      │             ├── Coal
   │      │      │             └── Pressurized Water
   │      │      └── Crude Oil
   │      └── Crystalline Silicon
   │             ├── Blue Quartz
   │             │      ├── Stone
   │             │      └── Pressurized Water
   │             └── Clean Coal
   └── Copper Plate
          ├── Clean Copper
          │      ├── Copper Ore
          │      └── Pressurized Water
          └── OR Molten Copper Casting
                 └── Molten Copper
                        └── Clean Copper
```

## Oil Processing Routes

```text
Heavy Oil
   ├── Basic: Crude Oil
   ├── Advanced: Crude Oil + Water
   └── Special: Crude Oil + Steam

Light Oil
   ├── Basic: Crude Oil
   ├── Advanced: Crude Oil + Water
   └── Special: Crude Oil + Steam

Petroleum Gas
   ├── Advanced: Crude Oil + Water
   └── Special: Crude Oil + Steam

Diesel Fuel
   ├── Petroleum Gas
   └── Light Oil

Special Oil Processing
   ├── Crude Oil
   └── Steam
       └── Water heated in a boiler
```

## Advanced Intermediate Products

```text
Azurium Crystal
   ├── Blue Quartz
   ├── Clean Copper
   └── Pressurized Water

Apatitium Crystal
   ├── Azurium Crystal
   ├── Clean Steel
   └── Sulfuric Acid

Amazonium Crystal
   ├── Apatitium Crystal
   └── Lithium

Azurium Plate
   └── Azurium Crystal

Apatitium Plate
   └── Apatitium Crystal

Amazonium Plate
   └── Amazonium Crystal

Advanced Electronic Component
   ├── Electronic Component
   ├── Apatitium Plate
   └── Advanced Circuit

Elite Electronic Component
   ├── Advanced Electronic Component
   ├── Amazonium Plate
   └── Processing Unit

Fuse
   ├── Azurium Plate
   ├── Cable
   └── Electronic Circuit

Advanced Fuse
   ├── Fuse
   ├── Apatitium Plate
   └── Advanced Circuit

Elite Fuse
   ├── Advanced Fuse
   ├── Amazonium Plate
   └── Processing Unit

Machine Casing
   ├── Azurium Plate
   ├── Reinforced Iron Plate
   ├── Reinforced Iron Gear
   └── Electronic Component

Advanced Machine Casing
   ├── Machine Casing
   ├── Apatitium Plate
   ├── Clean Steel
   └── Advanced Electronic Component

Elite Machine Casing
   ├── Advanced Machine Casing
   ├── Amazonium Plate
   ├── Processing Unit
   └── Elite Electronic Component
```

Crystal recipes run in a Chemical Plant; their matching plates use Formation Furnace recipes. Components, fuses, casings, and the Advanced Infusion Tool use ordinary crafting. Earlier sections expand Blue Quartz, Clean Copper, Clean Steel, Pressurized Water, Lithium, basic Electronic Components, Cable, and the basic Infusion Tool.

The three Advanced Intermediate Products technologies unlock the matching material tiers. Advanced Infusion unlocks the Advanced Infusion Tool and Infused Enriched Coal; its fuel recipe consumes the tool.

## Notes

- “OR” marks alternate recipes for the same product. The plate recipes can yield different outputs, but ingredient quantities are intentionally left out here.
- Several oil ingredients use vanilla Factorio processing. The tree names those upstream products without expanding every vanilla recipe.
- Recipe sources: `prototypes/Products/C&R.lua` and `prototypes/Products/C&R-Fluids.lua`.
