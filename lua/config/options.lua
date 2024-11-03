-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local opt = vim.opt
opt.cursorline = true
opt.number = true
opt.relativenumber = true

opt.termguicolors = true

opt.shiftwidth = 2
opt.tabstop = 2

opt.ignorecase = true
opt.smartcase = true

opt.scrolloff = 20

