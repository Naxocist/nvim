return {
	{
		"rose-pine/neovim",
		name = "rose-pine",
		opts = {
			variant = "main",
			styles = {
				bold = true,
				italic = true,
				transparency = false,
			},
		},
		config = function(_, opts)
			require("rose-pine").setup(opts)
			vim.cmd("colorscheme rose-pine")
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
		},
	}
}
