data:extend({
    {--Group
        type = "item-group",
        name = "re-railworld",
        order = "kda-d",
        inventory_order = "d-a-d",
        icon = "__RExtended__/graphics/Tech/Categories/RailWorld.png",
        icon_size = 128,
    },
    create_item_subgroup("re-workshop", "re-railworld", "a"),     -- Machinery Workshops
    create_item_subgroup("re-eletricTrain", "re-railworld", "b"), -- Eletric Trains
    create_item_subgroup("re-sonicTrain", "re-railworld", "c"),   -- Sonic Trains
    create_item_subgroup("re-wagons", "re-railworld", "d"),       -- Wagons
    create_item_subgroup("re-wagonsLiquid", "re-railworld", "e"), -- Wagons Liquid
    create_item_subgroup("re-wagons-per", "re-railworld", "f"),   -- Wagons Personalized
    create_item_subgroup("re-sonic-fuel", "re-railworld", "w"),   -- Sonic Trains FUEL
    
    {type = "fuel-category",name = "et-electric-fuel"},
    {type = "fuel-category",name = "extreme-fuel-r1"},
    {type = "recipe-category",name = "red-extreme-fuel"},
    {type = "recipe-category",name = "red-workshop-locomotive"},
    {type = "recipe-category",name = "red-workshop-wagon"}
})