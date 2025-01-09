local remap = vim.keymap.set

remap("n", "<C-s>", "<cmd>w<cr>")
remap("n", "<C-a>", "gg<S-v>G")
remap("i", "<C-s>", "<cmd>w<cr><esc>")

