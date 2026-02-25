-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- Disable smooth scrolling
vim.opt.smoothscroll = false

-- Disable animations (if mini.animate is installed)
vim.g.minianimate_disable = true

-- Make scrolling instant
vim.opt.scrolloff = 8 -- Keep 8 lines visible when scrolling

vim.g.snippets = false

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
