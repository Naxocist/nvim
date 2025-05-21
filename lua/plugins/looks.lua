return {
  {
    "folke/tokyonight.nvim",
    opts = {
      style = "night",
      -- transparent = true,
      styles = {
        comments = { italic = false },
        -- sidebars = "transparent",
        -- floats = "transparent",
      },
    },
  },

  {
    "sainnhe/sonokai",
    priority = 1000,
    config = function()
      vim.g.sonokai_transparent_background = "1"
      vim.g.sonokai_float_style = "dim"
      vim.g.sonokai_disable_italic_comment = "1"
      vim.g.sonokai_style = "andromeda"
    end,
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
