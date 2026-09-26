data:extend({
    {--Warehouse R1
        type = "technology",
        name = "warehouse-tech",
        icon = "__RExtended__/graphics/Tech/Tree/Storage/warehouse-tech.png",
        icon_size = 128,
        effects = {{
            type = "unlock-recipe",
            recipe = "warehouse-r1",
        }},
        prerequisites = {"steel-processing"},
        unit = {
            count = 750,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1}
            },
            time = 20
        },
        order = "c-e-a"
    }
})