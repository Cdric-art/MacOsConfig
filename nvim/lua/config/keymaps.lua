-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<D-s>", "<cmd>wa<CR>")
vim.keymap.set("n", "<tab>", ":BufferLineCycleNext<CR>")
vim.keymap.set("n", "<leader>x", ":bdelete!<CR>")
