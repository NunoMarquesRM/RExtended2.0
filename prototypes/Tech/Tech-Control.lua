science_packs = {
    red = "automation-science-pack",
    green = "logistic-science-pack",
    blue = "chemical-science-pack",
    black = "military-science-pack",
    purple = "production-science-pack",
    yellow = "utility-science-pack",
    white = "space-science-pack"
}

function create_item_subgroup(name, group, order)
    return {
        type = "item-subgroup",
        name = name,
        group = group,
        order = order,
    }
end

function create_unlock_recipe(name)
    return {
        type = "unlock-recipe",
        recipe = name
    }
end

function create_tech(name, icon, icon_size, order, prerequisites, unit, effects, upgrade, max_level)
    return {
        type = "technology",
        name = name,
        icon = "__RExtended__/graphics/Tech/Tree/" .. icon .. ".png",
        icon_size = icon_size,
        order = order,
        prerequisites = prerequisites,
        unit = unit,
        effects = effects,
        upgrade = upgrade,
        max_level = max_level
    }
end
