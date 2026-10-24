function create_equipment_item(name, icon, subgroup, order, stack_size, inventory_move_sound, pick_sound, drop_sound)
    return {
        type = "item",
        name = name,
        icon = "__RExtended__/graphics/icons/Military/" .. icon .. ".png",
        place_as_equipment_result = name,
        subgroup = subgroup,
        order = order,
        stack_size = stack_size,
        inventory_move_sound = inventory_move_sound,
        pick_sound = pick_sound,
        drop_sound = drop_sound
    }
end

function create_equipment_recipe(name, energy_required, enabled, ingredients, results)
    return {
        type = "recipe",
        name = name,
        energy_required = energy_required,
        enabled = enabled,
        ingredients = ingredients,
        results = results
    }
end

data:extend({
    create_equipment_item("exoskeleton-equipment-r2", "Exoskeleton-Equipment-r2",
        "red-equipment", "l-a", 10,
        {
            filename = "__base__/sound/item/exoskeleton-inventory-move.ogg",
            volume = 0.6,
            aggregation = {max_count = 1, remove = true},
        },
        {
            filename = "__base__/sound/item/exoskeleton-inventory-pickup.ogg",
            volume = 0.7,
            aggregation = {max_count = 1, remove = true},
        },
        {
            filename = "__base__/sound/item/exoskeleton-inventory-move.ogg",
            volume = 0.6,
            aggregation = {max_count = 1, remove = true},
        }
    ),

    create_equipment_recipe("exoskeleton-equipment-r2", 20, false,
        {
            {type = "item", name = "exoskeleton-equipment", amount = 4},
            {type = "item", name = "electric-component-r1", amount = 10},
            {type = "item", name = "battery-r1", amount = 10},
            {type = "item", name = "reinforced-coal-plate-r1", amount = 10}
        },
        {{type = "item", name = "exoskeleton-equipment-r2", amount = 1}}
    ),
    {
        type = "movement-bonus-equipment",
        name = "exoskeleton-equipment-r2",
        sprite = {
            filename = "__RExtended__/graphics/entity/Military/Exoskeleton-Equipment-r2.png",
            width = 128,
            height = 256,
            priority = "medium",
            scale = 0.5
        },
        shape = {
            width = 2,
            height = 4,
            type = "full"
        },
        energy_source = {
            type = "electric",
            usage_priority = "secondary-input"
        },
        energy_consumption = "1MW",
        movement_bonus = 1,
        categories = {"armor"}
    }
})