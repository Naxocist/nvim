local remap = vim.keymap.set

remap("n", "<C-s>", "<cmd>w<cr>")
remap("i", "<C-s>", "<cmd>w<cr><esc>")
remap("n", "<C-a>", "gg<S-v>G")

-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- clear highlight search
remap('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
remap('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode
remap('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })


-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
remap('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
remap('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
remap('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
remap('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })


-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

