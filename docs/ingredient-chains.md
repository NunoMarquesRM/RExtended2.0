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
   ├── Clean Coal
   │      ├── Coal
   │      └── Pressurized Water
   └── Petroleum Gas
       └── Crude Oil Processing

Enriched Coal
   ├── Diesel Fuel
   │      ├── Petroleum Gas
   │      └── Light Oil
   └── Clean Coal
          ├── Coal
          └── Pressurized Water

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
```

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

## Notes

- “OR” marks alternate recipes for the same product. The plate recipes can yield different outputs, but ingredient quantities are intentionally left out here.
- Several oil ingredients use vanilla Factorio processing. The tree names those upstream products without expanding every vanilla recipe.
- Recipe sources: `prototypes/Products/C&R.lua` and `prototypes/Products/C&R-Fluids.lua`.
