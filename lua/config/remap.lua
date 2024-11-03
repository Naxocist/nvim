local remap = vim.keymap.set

remap("n", "<C-s>", "<cmd>w<cr>")
remap("i", "<C-s>", "<cmd>w<cr><esc>")

-- Assistant.nvim
remap("n", "<leader>a", "<cmd>AssistantToggle<cr>", { desc = "Assistant window toggle" })

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

