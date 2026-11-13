-- Startup
data:extend({
    {
        type = "bool-setting",
        name = "red-robots-starting-enabled",
        setting_type = "startup",
        order = "a-a",
        default_value = true,
        localised_name = "Enable robots startup",
        localised_description = "Adds a modular armor, a few robots, roboports, baterries and 3 portable solar panel r2."
    },
    {
        type = "bool-setting",
        name = "movement-tech-enabled",
        setting_type = "startup",
        order = "b-a",
        default_value = true,
        localised_name = "Enable movement speed research",
        localised_description = "Adds the movement speed research chain."
    },
    {
        type = "bool-setting",
        name = "inventory-tech-enabled",
        setting_type = "startup",
        order = "b-b",
        default_value = true,
        localised_name = "Enable inventory capacity research",
        localised_description = "Adds the inventory capacity research chain."
    },
    {
        type = "bool-setting",
        name = "crafting-tech-enabled",
        setting_type = "startup",
        order = "b-c",
        default_value = true,
        localised_name = "Enable crafting speed research",
        localised_description = "Adds the crafting speed research chain."
    },
    {
        type = "bool-setting",
        name = "mining-tech-enabled",
        setting_type = "startup",
        order = "b-d",
        default_value = true,
        localised_name = "Enable mining speed research",
        localised_description = "Adds the mining speed research chain."
    }
})

-- Map (runtime-global)
data:extend({
    {
        type = "int-setting",
        name = "red-build-distance-bonus",
        setting_type = "runtime-global",
        default_value = 0,
        maximum_value = 100000,
        minimum_value = 0,
        order = "a-a"
    },
    {
        type = "int-setting",
        name = "red-reach-distance-bonus",
        setting_type = "runtime-global",
        default_value = 0,
        maximum_value = 100000,
        minimum_value = 0,
        order = "a-b"
    },
    {
        type = "int-setting",
        name = "red-resource-reach-distance-bonus",
        setting_type = "runtime-global",
        default_value = 0,
        maximum_value = 100000,
        minimum_value = 0,
        order = "a-c"
    },
    {
        type = "int-setting",
        name = "red-item-drop-distance-bonus",
        setting_type = "runtime-global",
        default_value = 0,
        maximum_value = 1000,
        minimum_value = 0,
        order = "a-d"
    },
    {
        type = "int-setting",
        name = "red-item-pickup-distance-bonus",
        setting_type = "runtime-global",
        default_value = 0,
        maximum_value = 100,
        minimum_value = 0,
        order = "a-e"
    }
})