data:extend({
    {
        type = "selection-tool",
        name = "tree-rock-eraser",
        icon = "__RExtended__/graphics/tree-eraser.png",
        icon_size = 32,
        subgroup = "tool",
        order = "c[automated-construction]-b[deconstruction-planner]-c",
        stack_size = 1,
        toggleable = false,
        show_in_library = false,
        select =
        {
            border_color = { r = 0, g = 1, b = 0 },
            mode = { "any-entity" },
            cursor_box_type = "pair"
        },
        alt_select =
        {
            border_color = { r = 0, g = 0, b = 1 },
            mode = { "any-entity" },
            cursor_box_type = "pair"
        },
        hidden = true,
        flags = {'only-in-cursor', 'not-stackable', 'spawnable'}
    },
    {
        type = 'shortcut',
        name = 'tree-rock-eraser',
        action = 'spawn-item',
        item_to_spawn = 'tree-rock-eraser',
        icon_size = 32,
        icon = "__RExtended__/graphics/tree-eraser.png",
        small_icon_size = 24,
        small_icon = "__RExtended__/graphics/tree-eraser.png",
        disabled_small_icon = "__RExtended__/graphics/tree-eraser.png"
    }
})
