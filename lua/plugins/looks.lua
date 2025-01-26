return {
  {
    "navarasu/onedark.nvim",
    opts = {
      style = "warm",
      transparent = true,
      lualine = {
        transparent = true, -- lualine center bar transparency
      },
      code_style = {
        comments = "none",
        functions = "bold",
      },
    },
  },

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
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "onedark",
    },
  },

  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
  },
}
