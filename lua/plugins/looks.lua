return {
	{
		"olimorris/onedarkpro.nvim",
		priority = 1000, -- Ensure it loads first
		opts = {
			colors = {},
			styles = {
				types = "NONE",
				methods = "bold",
				numbers = "NONE",
				strings = "NONE",
				comments = "italic",
				keywords = "italic",
				constants = "NONE",
				functions = "bold",
				operators = "NONE",
				variables = "NONE",
				parameters = "bold,italic",
				conditionals = "italic",
				virtual_text = "NONE",
			},

			options = {
				transparency = true,
				lualine_transparency = true
			}
		},
		config = function(_, opts)
			require("onedarkpro").setup(opts)
			vim.cmd "colorscheme onedark_vivid"
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
			"rcarriga/nvim-notify",
		},
		event = "VeryLazy",
		opts = {
			messages = { enabled = false },
			cmdline = { enabled = true }
		},
	}
}
