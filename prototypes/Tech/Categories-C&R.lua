data:extend({
    {--Group
        type = "item-group",
        name = "CandR",
        order = "kca-c",
        inventory_order = "d-a-c",
        icon = "__RExtended__/graphics/Tech/Categories/C&R.png",
        icon_size = 64
    },
    create_item_subgroup("chemical-products-r1", "CandR", "a"),  -- Chemical Products
    create_item_subgroup("plate-products", "CandR", "b"),        -- Plate Products
    create_item_subgroup("plates", "CandR", "c"),                -- Plates
    create_item_subgroup("reinforced-products", "CandR", "d"),   -- Reinforced Products
    create_item_subgroup("electronic-products", "CandR", "e"),   -- Electronic Products
    create_item_subgroup("solar-products", "CandR", "i"),        -- Solar Panels Products
    create_item_subgroup("accumulators-products", "CandR", "k"), -- Accumulators Products
    create_item_subgroup("initial-robot-r1", "CandR", "w"),      -- Initial Robot
    create_item_subgroup("oil-fluid-products", "CandR", "y"),    -- Oil Fluid Products
    create_item_subgroup("fluid-products", "CandR", "z")         -- Fluid Products
})