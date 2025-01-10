-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (opt)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.g.have_nerd_font = true

local opt = vim.opt
opt.termguicolors = true
opt.cursorline = true

opt.number = true
opt.relativenumber = true

opt.shiftwidth = 2
opt.tabstop = 2
opt.softtabstop = 2

opt.ignorecase = true
opt.smartcase = true

opt.scrolloff = 10

opt.mouse = 'a'

-- mode is already on the lualine
opt.showmode = false

-- keep the indent to the left of number lines
opt.signcolumn = 'yes'

-- decrease update time
opt.updatetime = 250

-- Enable break indent
opt.breakindent = true

-- Save undo history
opt.undofile = true

-- Decrease mapped sequence wait time
opt.timeoutlen = 300

-- Configure how new splits should be opened
opt.splitright = true
opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
-- opt.list = true
-- vim.o.listchars = 'trail:_,nbsp:+'

-- Preview substitutions live while typing
opt.inccommand = 'split'
