-- QoL research tier data. The constructor fills in the matching science packs
-- and prerequisite from each tier's science-pack progression level.
local science_pack_order = { "red", "green", "blue", "yellow", "white" }

local function make_qol_tier(name, technology_count, bonus, count_formula, previous_tier, pack_tier)
    local ingredients = {}
    for index = 1, pack_tier do
        ingredients[index] = { science_packs[science_pack_order[index]], 1 }
    end

    local prerequisite = pack_tier == 1
        and "automation"
        or science_packs[science_pack_order[pack_tier]]

    return {
        name = name,
        technology_count = technology_count,
        bonus = bonus,
        count_formula = count_formula,
        time = 30,
        previous_tier = previous_tier,
        prerequisites = { prerequisite },
        ingredients = ingredients
    }
end

local movement_tiers = {
    make_qol_tier("Basic Movement Speed", 4, 0.05, "200*L", 0, 1),
    make_qol_tier("Intermediate Movement Speed", 4, 0.05, "500*L", 2, 2),
    make_qol_tier("Advanced Movement Speed", 4, 0.05, "750*L", 2, 3),
    make_qol_tier("Expert Movement Speed", 4, 0.025, "1000*L", 2, 4),
    make_qol_tier("Infinite Movement Speed", 0, 0.025, "1500*2^L", 4, 5)
}

local inventory_tiers = {
    make_qol_tier("Basic Inventory Capacity", 2, 5, "200*L", 0, 1),
    make_qol_tier("Intermediate Inventory Capacity", 2, 5, "500*L", 1, 2),
    make_qol_tier("Advanced Inventory Capacity", 4, 5, "750*L", 1, 3),
    make_qol_tier("Expert Inventory Capacity", 4, 5, "1000*L", 2, 4),
    make_qol_tier("Infinite Inventory Capacity", 0, 5, "1500*2^L", 4, 5)
}

local crafting_tiers = {
    make_qol_tier("Basic Crafting Speed", 4, 0.05, "200*L", 0, 1),
    make_qol_tier("Intermediate Crafting Speed", 4, 0.05, "500*L", 2, 2),
    make_qol_tier("Advanced Crafting Speed", 4, 0.05, "750*L", 2, 3),
    make_qol_tier("Expert Crafting Speed", 4, 0.025, "1000*L", 2, 4),
    make_qol_tier("Infinite Crafting Speed", 0, 0.025, "1500*2^L", 4, 5)
}

local mining_tiers = {
    make_qol_tier("Basic Mining Speed", 4, 0.05, "200*L", 0, 1),
    make_qol_tier("Intermediate Mining Speed", 4, 0.05, "500*L", 2, 2),
    make_qol_tier("Advanced Mining Speed", 4, 0.05, "750*L", 2, 3),
    make_qol_tier("Expert Mining Speed", 4, 0.025, "1000*L", 2, 4),
    make_qol_tier("Infinite Mining Speed", 0, 0.025, "1500*2^L", 4, 5)
}

if settings.startup["movement-tech-enabled"].value then
    data:extend(
        create_tech_qol(movement_tiers, "movement-tech-", "character-running-speed",
            "Movement-Speed",
            function (bonus)
                return ("Increases character running speed by %g%%."):format(bonus * 100)
            end,
            "movement-speed"
        )
    )
end

if settings.startup["inventory-tech-enabled"].value then
    data:extend(
        create_tech_qol(inventory_tiers, "inventory-tech-", "character-inventory-slots-bonus",
            "Inventory-Size",
            function (bonus)
                return ("Increases inventory capacity by %d slots."):format(bonus)
            end,
            "inventory-size"
        )
    )
end

if settings.startup["crafting-tech-enabled"].value then
    data:extend(
        create_tech_qol(crafting_tiers, "crafting-tech-", "character-crafting-speed",
            "Crafting-Speed",
            function (bonus)
                return ("Increases character crafting speed by %g%%."):format(bonus * 100)
            end,
            "crafting-speed"
        )
    )
end

if settings.startup["mining-tech-enabled"].value then
    data:extend(
        create_tech_qol(mining_tiers, "mining-tech-", "character-mining-speed",
            "Mining-Speed",
            function (bonus)
                return ("Increases character mining speed by %g%%."):format(bonus * 100)
            end,
            "mining-speed"
        )
    )
end
