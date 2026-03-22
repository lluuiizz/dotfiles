-- Default Global Options
local opt = vim.opt

opt.number = true
opt.relativenumber = true

opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true

opt.clipboard = "unnamedplus"

opt.ignorecase = true
opt.smartcase  = true

opt.termguicolors = true
opt.signcolumn = "yes"
opt.wrap = false
opt.scrolloff = 8

-- Global Key Remaps
vim.keymap.set('n', '<leader>ww', '<C-w>w', {desc = "Pula para a próxima janela"})
vim.keymap.set('n', '<leader>wl', '<C-w>l', {desc = "Muda para a janela da direita"})
vim.keymap.set('n', '<leader>wh', '<C-w>h', {desc = "Muda para a janela da esquerda"})
vim.keymap.set('n', '<leader>wk', '<C-w>k', {desc = "Muda para a janela de cima"})
vim.keymap.set('n', '<leader>wj', '<C-w>j', {desc = "Muda para a janela de baixo"})
vim.keymap.set('n', '<leader>wq', '<C-w>q', {desc = "Fecha a janela ativa"})
