return {
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		},
		keys = {
			{
				"<leader>?",
				function()
					require("which-key").show({ global = false })
				end,
				desc = "Buffer Local Keymaps (which-key)",
			},
		},
	},

	{
		"nvim-telescope/telescope.nvim",
		dependencies = {
			{"nvim-lua/plenary.nvim"},
		},
		config = function()
			require("telescope").setup {}
			local builtin = require("telescope.builtin")
			local remap = vim.keymap.set
			remap("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
			remap("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
			remap("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
			remap("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
		end
	},

	{
		"nvim-tree/nvim-tree.lua",
		dependencies = {
			"nvim-tree/nvim-web-devicons"
		},
		config = function()
			require("nvim-tree").setup({
				actions = {
					open_file = {
						quit_on_open = true
					}
				}
			})

			local remap = vim.keymap.set
			remap("n", "t", "<cmd>NvimTreeToggle<cr>")

		end
	},
	{
		"numToStr/Comment.nvim",
		opts = {
			---Add a space b/w comment and the line
			padding = true,
			-- -Whether the cursor should stay at its position
			sticky = true,
			---Lines to be ignored while (un)comment
			ignore = nil,
			---LHS of toggle mappings in NORMAL mode
			toggler = {
				---Line-comment toggle keymap
				line = "gcc",
				---Block-comment toggle keymap
				block = "gbc",
			},
			---LHS of operator-pending mappings in NORMAL and VISUAL mode
			opleader = {
				---Line-comment keymap
				line = "gc",
				---Block-comment keymap
				block = "gb",
			},
			---LHS of extra mappings
			extra = {
				---Add comment on the line above
				above = "gcO",
				---Add comment on the line below
				below = "gco",
				---Add comment at the end of line
				eol = "gcA",
			},
			---Enable keybindings
			---NOTE: If given `false` then the plugin won"t create any mappings
			mappings = {
				---Operator-pending mapping; `gcc` `gbc` `gc[count]{motion}` `gb[count]{motion}`
				basic = true,
				---Extra mapping; `gco`, `gcO`, `gcA`
				extra = true,
			},
			---Function to call before (un)comment
			pre_hook = nil,
			---Function to call after (un)comment
			post_hook = nil,
		}
	},
	{
		"ggandor/leap.nvim",
		dependencies = "tpope/vim-repeat",
		config = function()
			require("leap").create_default_mappings()
		end
	},
	{
		"echasnovski/mini.ai",
		init = function()
			require("mini.ai").setup()
		end
	},
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true
		-- use opts = {} for passing setup options
		-- this is equivalent to setup({}) function
	}
}
