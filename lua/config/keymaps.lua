-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.api.nvim_set_keymap("n", "<Space>ll", ":Lazy<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Space>lx", ":LazyExtras<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Space>lh", ":LazyHealth<CR>", { noremap = true, silent = true })
