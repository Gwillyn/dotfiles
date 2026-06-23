-- ~/.config/hypr/yazi.lua

-- Old:
-- windowrule = float class:^(ueberzugpp*)$
hl.window_rule({
    name  = "float-ueberzugpp",
    match = {
        class = "^(ueberzugpp*)$",
    },
    float = true,
})

-- Old:
-- windowrule = match:class ^float$, float on, center on, size 1000 700
--
-- This should match terminals/apps launched with:
-- kitty --class float ...
hl.window_rule({
    name  = "float-terminals",
    match = {
        class = "^float$",
    },
    float  = true,
    center = true,
    size   = "1000 700",
})
