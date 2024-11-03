return {
	'nvim-telescope/telescope.nvim',
	dependencies = {
		{'nvim-lua/plenary.nvim'},
	},
	config = function()
		require('telescope').setup {}
		local builtin = require('telescope.builtin')
		local remap = vim.keymap.set
		remap('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
		remap('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
		remap('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
		remap('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
	end
}

