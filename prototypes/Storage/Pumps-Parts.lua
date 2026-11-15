return {
    part_1 = {
        filename = "__RExtended__/graphics/entity/Pump/Connectors/Part-1.png",
        width = 86,
        height = 68,
        shift = util.by_pixel(0.5, -7.5),
        line_length = 8,
        direction_count = 128,
        scale = 0.5,
        priority = "very-low"
    },
    part_1_shadow = util.sprite_load("__base__/graphics/entity/pump/connector/Part_1_shadow", {
        direction_count = 128,
        scale = 0.5,
        priority = "very-low",
        draw_as_shadow = true
    }),
    part_2 = {
        filename = "__RExtended__/graphics/entity/Pump/Connectors/Part-2.png",
        width = 92,
        height = 368,
        shift = util.by_pixel(0, 0),
        line_length = 16,
        direction_count = 128,
        scale = 0.5,
        priority = "very-low"
    },
    part_2_shadow = util.sprite_load("__base__/graphics/entity/pump/connector/Part_2_shadow", {
        direction_count = 128,
        scale = 0.5,
        priority = "very-low",
        draw_as_shadow = true
    }),
    suction_clamp = {
        filename = "__RExtended__/graphics/entity/Pump/Connectors/Part-3.png",
        width = 46,
        height = 46,
        shift = util.by_pixel(0, 10),
        line_length = 8,
        frame_count = 8,
        scale = 0.5,
        animation_speed = 1
    },
    suction_clamp_shadow = util.sprite_load("__base__/graphics/entity/pump/connector/Part_3_shadow", {
        frame_count = 8,
        scale = 0.5,
        animation_speed = 1,
        draw_as_shadow = true
    }),
}
