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

function create_tech(name, icon, icon_size, order, prerequisites, unit, effects, upgrade, max_level, icon_mipmaps)
    return {
        type = "technology",
        name = name,
        icon = "__RExtended__/graphics/Tech/Tree/" .. icon .. ".png",
        icon_size = icon_size,
        icon_mipmaps = 4,
        order = order,
        prerequisites = prerequisites,
        unit = unit,
        effects = effects,
        upgrade = upgrade,
        max_level = max_level
    }
end

function create_tech_qol(tiers, prefix, tech_type, icon_name, description_factory, order_group)
    local technologies = {}
    for tier_index, tier in ipairs(tiers) do
        local technology_count = math.max(tier.technology_count, 1)
        for technology_index = 1, technology_count do
            local prerequisites = {}
            if technology_index == 1 then
                for _, prerequisite in ipairs(tier.prerequisites) do
                    prerequisites[#prerequisites + 1] = prerequisite
                end
                if tier.previous_tier > 0 then
                    prerequisites[#prerequisites + 1] = ("%s%d-%d"):format(
                        prefix, tier_index - 1, tier.previous_tier
                    )
                end
            else
                prerequisites[1] = ("%s%d-%d"):format(prefix, tier_index, technology_index - 1)
            end

            local technology = {
                type = "technology",
                name = ("%s%d-%d"):format(prefix, tier_index, technology_index),
                localised_name = tier.name,
                localised_description = description_factory(tier.bonus),
                icon = "__RExtended__/graphics/Tech/Tree/QoL/" .. icon_name .. ".png",
                icon_size = 128,
                prerequisites = prerequisites,
                effects = {
                    {
                        type = tech_type,
                        modifier = tier.bonus,
                    },
                },
                unit = {
                    count_formula = tier.count_formula,
                    time = tier.time,
                    ingredients = tier.ingredients,
                },
                upgrade = true,
                order = ("z[%s]-%02d-%02d"):format(order_group, tier_index, technology_index),
            }
            if tier.technology_count == 0 then
                technology.max_level = "infinite"
            end
            technologies[#technologies + 1] = technology
        end
    end
    return technologies
end