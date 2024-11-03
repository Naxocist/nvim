return {
	"nvim-tree/nvim-tree.lua",
	dependencies = {
		"nvim-tree/nvim-web-devicons"
	},
	config = function()
		require("nvim-tree").setup()

		local remap = vim.keymap.set
		remap("n", "<leader>ee", "<cmd>NvimTreeToggle<cr>")
	end
}
