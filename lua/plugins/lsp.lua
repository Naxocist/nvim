return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	},
	config = function()
		require("mason").setup()
		require("mason-lspconfig").setup {
			ensure_installed = { "lua_ls", "clangd", "pyright" },
		}

		require("lspconfig").lua_ls.setup {
			settings = {
				Lua = {
					diagnostics = {
						globals = { "vim" }
					}
				}
			}
		}

		require("lspconfig").clangd.setup {
			cmd = {
				"clangd",
				"--header-insertion=never",
				"--completion-style=detailed",
			},
		}

		require("lspconfig").pyright.setup {
			filetypes = {"python"}
		}
	end
}
