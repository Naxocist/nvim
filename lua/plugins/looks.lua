return {
  {
    "folke/tokyonight.nvim",
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },

  {
    "folke/snacks.nvim",
    opts = {
      scroll = {
        animate = {
          duration = { step = 15, total = 150 },
          easing = "linear",
        },
      },
    },
  },
}
