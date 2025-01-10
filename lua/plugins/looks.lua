return {
	{
		"olimorris/onedarkpro.nvim",
		priority = 1000, -- Ensure it loads first
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
				transparency = true,
				lualine_transparency = false
			}
		},
		config = function(_, opts)
			require("onedarkpro").setup(opts)
			vim.cmd "colorscheme onedark"
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
				}
			},
		},
		event = "VeryLazy",
		opts = {
			messages = { enabled = false },
			cmdline = { enabled = true }
		},
	},

	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		opts = {},
	}
}
