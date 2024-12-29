local remap = vim.keymap.set

remap("n", "<C-s>", "<cmd>w<cr>")
remap("n", "<C-a>", "gg<S-v>G")
remap("i", "<C-s>", "<cmd>w<cr><esc>")

-- Assistant.nvim
remap("n", "<leader>ao", "<cmd>AssistantToggle<cr>", { desc = "Assistant window toggle" })

-- Competitest.nvim
remap("n", "<leader>at", "<cmd>CompetiTest add_testcase<cr>")
remap("n", "<leader>et", "<cmd>CompetiTest edit_testcase<cr>")
remap("n", "<leader>dt", "<cmd>CompetiTest delete_testcase<cr>")

remap("n", "<leader>rj", "<cmd>CompetiTest run<cr>")
remap("n", "<leader>rk", "<cmd>CompetiTest run_no_compile<cr>")
remap("n", "<leader>ui", "<cmd>CompetiTest show_ui<cr>")

remap("n", "<leader>gp", "<cmd>CompetiTest receive problem<cr>")
remap("n", "<leader>gt", "<cmd>CompetiTest receive testcases<cr>")
remap("n", "<leader>gc", "<cmd>CompetiTest receive contest<cr>")

-- lsp
remap('n','gD','<cmd>lua vim.lsp.buf.declaration()<CR>')
remap('n','gd','<cmd>lua vim.lsp.buf.definition()<CR>')
remap('n','K','<cmd>lua vim.lsp.buf.hover()<CR>')
remap('n','gr','<cmd>lua vim.lsp.buf.references()<CR>')
-- remap('n','gs','<cmd>lua vim.lsp.buf.signature_help()<CR>')
remap('n','gi','<cmd>lua vim.lsp.buf.implementation()<CR>')
remap('n','gt','<cmd>lua vim.lsp.buf.type_definition()<CR>')
remap('n','<leader>gw','<cmd>lua vim.lsp.buf.document_symbol()<CR>')
remap('n','<leader>gW','<cmd>lua vim.lsp.buf.workspace_symbol()<CR>')
remap('n','<leader>ah','<cmd>lua vim.lsp.buf.hover()<CR>')
remap('n','<leader>af','<cmd>lua vim.lsp.buf.code_action()<CR>')
remap('n','<leader>ee','<cmd>lua vim.lsp.util.show_line_diagnostics()<CR>')
remap('n','<leader>ar','<cmd>lua vim.lsp.buf.rename()<CR>')
remap('n','<leader>=', '<cmd>lua vim.lsp.buf.formatting()<CR>')
remap('n','<leader>ai','<cmd>lua vim.lsp.buf.incoming_calls()<CR>')
remap('n','<leader>ao','<cmd>lua vim.lsp.buf.outgoing_calls()<CR>')


