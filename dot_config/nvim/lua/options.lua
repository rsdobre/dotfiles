-- Map the leader key to space --
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Sane search defaults
vim.o.hlsearch = false
vim.o.incsearch = true
vim.o.ignorecase = true
vim.o.smartcase = true

-- Needed for most themes to display properly
vim.o.termguicolors = true

-- Enable line numbers
vim.o.number = true
vim.o.relativenumber = true

-- Make neovim scrollwhen there are only 8 lines left
vim.o.scrolloff = 8
vim.o.horizontalscrolloff = 4

-- Sane tab defaults
vim.o.expandtab = true
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
-- Undo options
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
-- Set clipboard to system
vim.o.clipboard = 'unnamedplus'

vim.opt.completeopt = { 'menu', 'menuone', 'noselect' }
