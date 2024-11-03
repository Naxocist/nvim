return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig"
	},
	config = function()
		require("mason").setup()
		require("mason-lspconfig").setup {
			ensure_installed = { "lua_ls", "clangd" },
		}

		require("lspconfig").lua_ls.setup {
			settings = {
				Lua = {
					diagnostics = {
						globals = { 'vim' }
					}
				}
			}
		}

		require("lspconfig").clangd.setup {
			cmd = {
				"clangd",
				"--background-index",
				"--header-insertion=iwyu",
				"--clang-tidy",
				"--completion-style=detailed",
				"--function-arg-placeholders",
				"--fallback-style=llvm",
				"--header-insertion=never",
			},
		}
	end
}
