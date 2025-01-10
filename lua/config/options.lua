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

opt.nu = true
opt.relativenumber = true

opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true

opt.ignorecase = true
opt.smartcase = true

opt.scrolloff = 10
opt.signcolumn = 'yes'

opt.mouse = 'a'

-- mode is already on the lualine
opt.showmode = false

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

-- Preview substitutions live while typing
opt.inccommand = 'split'

opt.incsearch = true

-- opt.colorcolumn = "80"
