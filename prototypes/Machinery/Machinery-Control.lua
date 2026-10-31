function create_machinery_item(name, icon, icon_size, subgroup, order, stack_size)
    return {
        type = "item",
        name = name,
        icon = icon,
        icon_size = icon_size,
        subgroup = subgroup,
        order = order,
        place_result = name,
        stack_size = stack_size
    }
end

function create_machinery_recipe(name, energy_required, enabled, ingredients, results)
    return {
        type = "recipe",
        name = name,
        energy_required = energy_required,
        enabled = enabled,
        ingredients = ingredients,
        results = results
    }
end

function add_quality_effect_if_available(effects)
    local result = {}

    for _, effect in ipairs(effects) do
        result[#result + 1] = effect
    end

    if mods["quality"] then
        for _, effect in ipairs(result) do
            if effect == "quality" then
                return result
            end
        end

        result[#result + 1] = "quality"
    end

    return result
end