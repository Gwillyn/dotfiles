return {
  {
    "bjarneo/aether.nvim",
    branch = "v3",
    name = "aether",
    priority = 1000,
    opts = {
      colors = {
        bg         = "#0c151a",
        dark_bg    = "#091014",
        darker_bg  = "#060b0d",
        lighter_bg = "#242c31",

        fg         = "#bebebe",
        dark_fg    = "#8f8f8f",
        light_fg   = "#c8c8c8",
        bright_fg  = "#cecece",
        muted      = "#8a8a8d",

        red        = "#f7312e",
        yellow     = "#fbf695",
        orange     = "#f8504d",
        green      = "#31722b",
        cyan       = "#b9b48e",
        blue       = "#d99f15",
        purple     = "#f0c37b",
        brown      = "#95302e",

        bright_red    = "#f61f39",
        bright_yellow = "#fbf695",
        bright_green  = "#33722b",
        bright_cyan   = "#b9b48e",
        bright_blue   = "#FFC107",
        bright_purple = "#f0c37b",

        accent               = "#d99f15",
        cursor               = "#bebebe",
        foreground           = "#bebebe",
        background           = "#0c151a",
        selection             = "#242c31",
        selection_foreground = "#bebebe",
        selection_background = "#242c31",
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "aether",
    },
  },
}
