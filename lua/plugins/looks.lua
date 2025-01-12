return {
  {
    "rose-pine/neovim",
    lazy = false,
    priority = 1000,
    name = "rose-pine",
    opts = {
      styles = {
        italic = false,
        transparency = true
      }
    },
    config = function(_, opts)
      require('rose-pine').setup(opts)
      -- vim.cmd("colorscheme rose-pine-main")
    end
  },

  {
    'Mofiqul/vscode.nvim',
    lazy = false,
    priority = 1000,
    opts = {
      transparent = true,
    },
    config = function(_, opts)
      require('vscode').setup(opts)
      vim.cmd.colorscheme('vscode')
    end
  },

  {
    'rebelot/kanagawa.nvim',
    lazy = false,
    priority = 1000,
    opts = {
      transparent = true,
      keywordStyle = { bold = true, italic = false },
    },
    config = function(_, opts)
      require('kanagawa').setup(opts)
      -- vim.cmd.colorscheme('kanagawa')
    end
  },

  {
    'sainnhe/gruvbox-material',
    lazy = false,
    priority = 1000,
    config = function()
      -- vim.g.gruvbox_material_enable_italic = true
      vim.g.gruvbox_material_enable_bold = 1
      vim.g.gruvbox_material_transparent_background = 1
      -- vim.cmd.colorscheme('gruvbox-material')
    end
  },

	{
		"olimorris/onedarkpro.nvim",
		priority = 1000,
		opts = {
			styles = {
				types = "NONE",
				methods = "NONE",
				numbers = "NONE",
				strings = "NONE",
				comments = "NONE",
				keywords = "bold",
				constants = "NONE",
				functions = "bold",
				operators = "NONE",
				variables = "NONE",
				parameters = "bold",
				conditionals = "bold",
				virtual_text = "NONE",
			},

			options = {
				transparency = false,
				lualine_transparency = false
			}
		},
		config = function(_, opts)
			require("onedarkpro").setup(opts)
			-- vim.cmd "colorscheme onedark"
		end
	},

	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {}
	},

	{
		"karb94/neoscroll.nvim",
		opts = {
			hide_cursor = false,
			duration_multiplier = 0.5
		},
	},

	{
		"folke/noice.nvim",
		dependencies = {
			"MunifTanjim/nui.nvim",
			{
				"rcarriga/nvim-notify",
				opts = {
					background_colour = "#000000",
          timeout = 1000
				}
			},
		},
		event = "VeryLazy",
		opts = {
			messages = { enabled = true },
			cmdline = { enabled = true }
		},
	},

	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
    opts = {}
    -- config = function()
    --   local highlight = {
    --     "scope_color",
    --   }
    --   local hooks = require "ibl.hooks"
    --   -- create the highlight groups in the highlight setup hook, so they are reset
    --   -- every time the colorscheme changes
    --   hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
    --     vim.api.nvim_set_hl(0, "scope_color", { fg = "#d1f0d3" })
    --   end)
    --
    --   vim.g.rainbow_delimiters = { highlight = highlight }
    --   require("ibl").setup { scope = { highlight = highlight } }
    --
    --   hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)
    -- end
	},

  {
    "echasnovski/mini.hipatterns",
    config = function()
      local hipatterns = require('mini.hipatterns')
      hipatterns.setup({
        highlighters = {
          -- Highlight standalone 'FIXME', 'HACK', 'TODO', 'NOTE'
          fixme = { pattern = '%f[%w]()FIXME()%f[%W]', group = 'MiniHipatternsFixme' },
          hack  = { pattern = '%f[%w]()HACK()%f[%W]',  group = 'MiniHipatternsHack'  },
          todo  = { pattern = '%f[%w]()TODO()%f[%W]',  group = 'MiniHipatternsTodo'  },
          note  = { pattern = '%f[%w]()NOTE()%f[%W]',  group = 'MiniHipatternsNote'  },

          -- Highlight hex color strings (`#rrggbb`) using that color
          hex_color = hipatterns.gen_highlighter.hex_color(),
        },
      })
    end
  }
}
