function create_item_subgroup(name, group, order)
    return {
        type = "item-subgroup",
        name = name,
        group = group,
        order = order,
    }
end

data:extend({
    {--Group
        type = "item-group",
        name = "power-extends",
        order = "kba-a",
        inventory_order = "g-a-a",
        icon = "__RExtended__/graphics/Tech/Categories/Energy.png",
        icon_size = 64
    },
    create_item_subgroup("power-poles", "power-extends", "a"),   -- Poles
    create_item_subgroup("power-boilers", "power-extends", "b"), -- Boiler
    create_item_subgroup("power-steam", "power-extends", "c"),   -- Steam Engines
    create_item_subgroup("power-solar", "power-extends", "g"),   -- Solar Panels
    create_item_subgroup("power-energy", "power-extends", "h"),  -- Accumulator
    create_item_subgroup("power-belts", "power-extends", "i")    -- Transport Belt
})