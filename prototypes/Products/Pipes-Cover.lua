function pipe_r1_covers()
    return {
        north = {
            filename = "__RExtended__/graphics/entity/Pipes/New/Pipe-R1-Cover-North.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
        },
        east = {
            filename = "__RExtended__/graphics/entity/Pipes/clear.png",
            priority = "extra-high",
            width = 32,
            height = 32
        },
        south = {
            filename = "__RExtended__/graphics/entity/Pipes/New/Pipe-R1-Cover-South.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
        },
        west = {
            filename = "__RExtended__/graphics/entity/Pipes/clear.png",
            priority = "extra-high",
            width = 32,
            height = 32
        }
    }
end

function pipe_r2_covers()
    return {
        north = {
            filename = "__RExtended__/graphics/entity/Pipes/New/Pipe-R2-Cover-North.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
        },
        east = {
            filename = "__RExtended__/graphics/entity/Pipes/clear.png",
            priority = "extra-high",
            width = 32,
            height = 32
        },
        south = {
            filename = "__RExtended__/graphics/entity/Pipes/New/Pipe-R2-Cover-South.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
        },
        west = {
            filename = "__RExtended__/graphics/entity/Pipes/clear.png",
            priority = "extra-high",
            width = 32,
            height = 32
        }
    }
end

--- @param i integer
local function make_pipe_r_visualization(i)
    return
    {
        filename = "__base__/graphics/entity/pipe/visualization.png",
        priority = "extra-high",
        x = i * 64,
        size = 64,
        scale = 0.5,
        flags = {"icon"}
    }
end

--- @param i integer
local function make_pipe_r_disabled_visualization(i)
    return
    {
        filename = "__base__/graphics/entity/pipe/disabled-visualization.png",
        priority = "extra-high",
        x = i * 64,
        size = 64,
        scale = 0.5,
        flags = {"icon"}
    }
  end

function create_pipe_r_visualizations()
    return {
        straight_vertical_single_visualization = make_pipe_r_visualization(0),
        straight_vertical_visualization = make_pipe_r_visualization(5),
        straight_vertical_window_visualization = make_pipe_r_visualization(5),
        straight_horizontal_window_visualization = make_pipe_r_visualization(10),
        straight_horizontal_visualization = make_pipe_r_visualization(10),
        corner_up_right_visualization = make_pipe_r_visualization(3),
        corner_up_left_visualization = make_pipe_r_visualization(9),
        corner_down_right_visualization = make_pipe_r_visualization(6),
        corner_down_left_visualization = make_pipe_r_visualization(12),
        t_up_visualization = make_pipe_r_visualization(11),
        t_down_visualization = make_pipe_r_visualization(14),
        t_right_visualization = make_pipe_r_visualization(7),
        t_left_visualization = make_pipe_r_visualization(13),
        cross_visualization = make_pipe_r_visualization(15),
        ending_up_visualization = make_pipe_r_visualization(1),
        ending_down_visualization = make_pipe_r_visualization(4),
        ending_right_visualization = make_pipe_r_visualization(2),
        ending_left_visualization = make_pipe_r_visualization(8),
        straight_vertical_single_disabled_visualization = make_pipe_r_disabled_visualization(0),
        straight_vertical_disabled_visualization = make_pipe_r_disabled_visualization(5),
        straight_vertical_window_disabled_visualization = make_pipe_r_disabled_visualization(5),
        straight_horizontal_window_disabled_visualization = make_pipe_r_disabled_visualization(10),
        straight_horizontal_disabled_visualization = make_pipe_r_disabled_visualization(10),
        corner_up_right_disabled_visualization = make_pipe_r_disabled_visualization(3),
        corner_up_left_disabled_visualization = make_pipe_r_disabled_visualization(9),
        corner_down_right_disabled_visualization = make_pipe_r_disabled_visualization(6),
        corner_down_left_disabled_visualization = make_pipe_r_disabled_visualization(12),
        t_up_disabled_visualization = make_pipe_r_disabled_visualization(11),
        t_down_disabled_visualization = make_pipe_r_disabled_visualization(14),
        t_right_disabled_visualization = make_pipe_r_disabled_visualization(7),
        t_left_disabled_visualization = make_pipe_r_disabled_visualization(13),
        cross_disabled_visualization = make_pipe_r_disabled_visualization(15),
        ending_up_disabled_visualization = make_pipe_r_disabled_visualization(1),
        ending_down_disabled_visualization = make_pipe_r_disabled_visualization(4),
        ending_right_disabled_visualization = make_pipe_r_disabled_visualization(2),
        ending_left_disabled_visualization = make_pipe_r_disabled_visualization(8)
    }
end

function compressor_pipepictures()
    return {
        north = {
            filename = "__RExtended__/graphics/entity/Pipes/compressor-pipe-n.png",
            priority = "extra-high",
            width = 256,
            height = 256,
            shift = {0.28125, 1.875},
            scale = 0.5
        },
        south = {
            filename = "__RExtended__/graphics/entity/Pipes/compressor-pipe-s.png",
            priority = "extra-high",
            width = 256,
            height = 256,
            shift = {0.28125, -2},
            scale = 0.5
        },
        east = {
            filename = "__RExtended__/graphics/entity/Pipes/compressor-pipe-e.png",
            priority = "extra-high",
            width = 256,
            height = 256,
            shift = {-1.71875, 0},
            scale = 0.5
        },
        west = {
            filename = "__RExtended__/graphics/entity/Pipes/compressor-pipe-w.png",
            priority = "extra-high",
            width = 256,
            height = 256,
            shift = {2.28125, 0},
            scale = 0.5
        }
    }
end
function washerpipepictures()
    return {
        north = {
            filename = "__RExtended__/graphics/entity/Pipes/washer-pipe-n.png",
            priority = "extra-high",
            width = 256,
            height = 256,
            shift = {0.28125, 2},
            scale = 0.5
        },
        east = {
            filename = "__RExtended__/graphics/entity/Pipes/washer-pipe-e.png",
            priority = "extra-high",
            width = 256,
            height = 256,
            shift = {-1.71875, 0},
            scale = 0.5
        },
        south = {
            filename = "__RExtended__/graphics/entity/Pipes/washer-pipe-s.png",
            priority = "extra-high",
            width = 256,
            height = 256,
            shift = {0.28125, -2},
            scale = 0.5
        },
        west = {
            filename = "__RExtended__/graphics/entity/Pipes/washer-pipe-w.png",
            priority = "extra-high",
            width = 256,
            height = 256,
            shift = {2.28125, 0},
            scale = 0.5
        }
    }
end
function castpipepictures()
    return {
        north = {
            filename = "__RExtended__/graphics/entity/Pipes/cast-chamber-pipe-n.png",
            priority = "extra-high",
            width = 256,
            height = 256,
            shift = {0.28125, 2},
            scale = 0.5
        },
        east = {
            filename = "__RExtended__/graphics/entity/Pipes/cast-chamber-pipe-e.png",
            priority = "extra-high",
            width = 256,
            height = 256,
            shift = {-1.71875, 0},
            scale = 0.5
        },
        south = {
            filename = "__RExtended__/graphics/entity/Pipes/cast-chamber-pipe-s.png",
            priority = "extra-high",
            width = 256,
            height = 256,
            shift = {0.28125, -2},
            scale = 0.5
        },
        west = {
            filename = "__RExtended__/graphics/entity/Pipes/cast-chamber-pipe-w.png",
            priority = "extra-high",
            width = 256,
            height = 256,
            shift = {2.28125, 0},
            scale = 0.5
        }
    }
end
function forgepipepictures()
    return {
        north = {
            filename = "__RExtended__/graphics/entity/Pipes/heat-forge-n.png",
            priority = "extra-high",
            width = 256,
            height = 256,
            shift = {0.28125, 1.875},
            scale = 0.5
        },
        south = {
            filename = "__RExtended__/graphics/entity/Pipes/heat-forge-s.png",
            priority = "extra-high",
            width = 256,
            height = 256,
            shift = {0.28125, -2},
            scale = 0.5
        },
        east = {
            filename = "__RExtended__/graphics/entity/Pipes/heat-forge-e.png",
            priority = "extra-high",
            width = 256,
            height = 256,
            shift = {-1.71875, 0},
            scale = 0.5
        },
        west = {
            filename = "__RExtended__/graphics/entity/Pipes/heat-forge-w.png",
            priority = "extra-high",
            width = 256,
            height = 256,
            shift = {2.28125, 0},
            scale = 0.5
        }
    }
end
function chemicalpipepictures()
    return {
        north = {
            filename = "__RExtended__/graphics/entity/Pipes/chemical-pipe-n.png",
            priority = "extra-high",
            width = 256,
            height = 256,
            shift = {0.28125, 2},
            scale = 0.5
        },
        east = {
            filename = "__RExtended__/graphics/entity/Pipes/chemical-pipe-e.png",
            priority = "extra-high",
            width = 256,
            height = 256,
            shift = {-1.71875, 0},
            scale = 0.5
        },
        south = {
            filename = "__RExtended__/graphics/entity/Pipes/chemical-pipe-s.png",
            priority = "extra-high",
            width = 256,
            height = 256,
            shift = {0.28125, -2},
            scale = 0.5
        },
        west = {
            filename = "__RExtended__/graphics/entity/Pipes/chemical-pipe-w.png",
            priority = "extra-high",
            width = 256,
            height = 256,
            shift = {2.28125, 0},
            scale = 0.5
        }
    }
end