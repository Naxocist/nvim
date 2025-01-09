return {
	"williamboman/mason-lspconfig.nvim", -- easier to use mason & lspconfig together ex. different lsp server name
	dependencies = {
		"williamboman/mason.nvim",
		"neovim/nvim-lspconfig",
	},
	config = function()
		require("mason").setup {}
		require("mason-lspconfig").setup {}

		local lspconfig = require("lspconfig")
    require("mason-lspconfig").setup_handlers {
        function (server_name) -- default handler
            require("lspconfig")[server_name].setup {}
        end,

				-- customize setup
				["lua_ls"] = function ()
					lspconfig.lua_ls.setup {
						settings = { Lua = { diagnostics = { globals = { "vim" } } } }
					}
				end,

				["clangd"] = function()
					lspconfig.clangd.setup {
						cmd = {
							"clangd",
							"--header-insertion=never",
						},
					}
				end,
    }

		local remap = vim.keymap.set
		remap('n','gD','<cmd>lua vim.lsp.buf.declaration()<CR>')
		remap('n','gd','<cmd>lua vim.lsp.buf.definition()<CR>')
		remap('n','K','<cmd>lua vim.lsp.buf.hover()<CR>')
		remap('n','gr','<cmd>lua vim.lsp.buf.references()<CR>')
		remap('n','gi','<cmd>lua vim.lsp.buf.implementation()<CR>')
		remap('n','gt','<cmd>lua vim.lsp.buf.type_definition()<CR>')
		remap('n','<leader>gw','<cmd>lua vim.lsp.buf.document_symbol()<CR>')
		remap('n','<leader>gW','<cmd>lua vim.lsp.buf.workspace_symbol()<CR>')
		remap('n','<leader>ah','<cmd>lua vim.lsp.buf.hover()<CR>')
		remap('n','<leader>af','<cmd>lua vim.lsp.buf.code_action()<CR>')
		remap('n','<leader>ee','<cmd>lua vim.lsp.util.show_line_diagnostics()<CR>')
		remap('n','<leader>rn','<cmd>lua vim.lsp.buf.rename()<CR>')
		remap('n','<leader>=', '<cmd>lua vim.lsp.buf.formatting()<CR>')
		-- remap('n','gs','<cmd>lua vim.lsp.buf.signature_help()<CR>')
		-- remap('n','<leader>ai','<cmd>lua vim.lsp.buf.incoming_calls()<CR>')
		-- remap('n','<leader>ao','<cmd>lua vim.lsp.buf.outgoing_calls()<CR>')
	end
}
