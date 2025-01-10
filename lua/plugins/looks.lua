return {
	{
		"polirritmico/monokai-nightasty.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			local opts = {
				-- dark_style_background = "transparent",-- dark / transparent
				dark_style_background = "dark",-- dark / transparent
			}
			require("monokai-nightasty").setup(opts) -- ...and then load the theme:
			require("monokai-nightasty").load()
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
		opts = {},
	}
}
