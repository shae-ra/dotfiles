-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
-- use `vim.keymap.set` instead
local map = vim.keymap.set

map("n", "<leader>ho", function()
  print("hola!")
end)

map("n", "<C-h>", "<cmd>TmuxNavigateLeft<CR>", { desc = "tmux navigate left" })
map("n", "<C-l>", "<cmd>TmuxNavigateRight<CR>", { desc = "tmux navigate right" })
map("n", "<C-j>", "<cmd>TmuxNavigateDown<CR>", { desc = "tmux navigate down" })
map("n", "<C-k>", "<cmd>TmuxNavigateUp<CR>", { desc = "tmux navigate up" })
