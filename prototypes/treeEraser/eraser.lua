data:extend({
    {
        type = "selection-tool",
        name = "tree-eraser",
        icon = "__RExtended__/graphics/tree-eraser.png",
        icon_size = 32,
        subgroup = "tool",
        order = "c[automated-construction]-b[deconstruction-planner]-c",
        stack_size = 1,
        stackable = false,
        selection_color = { r = 0, g = 1, b = 0 },
        alt_selection_color = { r = 0, g = 0, b = 1 },
        selection_mode = {"any-entity"},
        alt_selection_mode = {"any-entity"},
        selection_cursor_box_type = "pair",
        alt_selection_cursor_box_type = "pair"
    },
	{
        type = "recipe",
        name = "tree-eraser",
        enabled = true,
        ingredients = {},
        results = {{type="item", name="tree-eraser", amount=0}}
    }
})