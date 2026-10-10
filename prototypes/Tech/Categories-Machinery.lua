data:extend({
    {--Group
        type = "item-group",
        name = "re-machinery",
        order = "kaa-a",
        inventory_order = "d-a-a",
        icon = "__RExtended__/graphics/Tech/Categories/Machinery.png",
        icon_size = 128
    },
    create_item_subgroup("machinery-assemblers", "re-machinery", "a"), -- Craft Machines
    create_item_subgroup("machinery-ore", "re-machinery", "b"),        -- Ore Machines
    create_item_subgroup("machinery-condenser", "re-machinery", "c"),  -- Water Machines
    create_item_subgroup("machinery-formation", "re-machinery", "d"),  -- Formation Furnace
    create_item_subgroup("machinery-storage", "re-machinery", "e"),    -- Storage Tanks & Incinerator
    create_item_subgroup("machinery-drill", "re-machinery", "f"),      -- Mining Drills
    create_item_subgroup("machinery-lab", "re-machinery", "g"),        -- Lab & Warehouse
    create_item_subgroup("re-robots", "re-machinery", "i"),            -- Robots

    {type = "recipe-category", name = "red-compressing"},
    {type = "recipe-category", name = "red-washer-chamber"},
    {type = "recipe-category", name = "red-water-condenser"},
    {type = "recipe-category", name = "red-mixing"},
    {type = "recipe-category", name = "red-furnace"},
    {type = "recipe-category", name = "red-casting-chamber"},
    {type = "recipe-category", name = "red-forge-chamber"},
    {type = "recipe-category", name = "red-enrichment-chamber"},
    {type = "recipe-category", name = "red-oil-process"}
})