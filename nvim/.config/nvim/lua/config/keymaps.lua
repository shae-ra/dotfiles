-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
-- use `vim.keymap.set` instead
local map = vim.keymap.set

-- Tmux Navigate
map("n", "<C-h>", "<cmd>TmuxNavigateLeft<CR>", { desc = "tmux navigate left" })
map("n", "<C-l>", "<cmd>TmuxNavigateRight<CR>", { desc = "tmux navigate right" })
map("n", "<C-j>", "<cmd>TmuxNavigateDown<CR>", { desc = "tmux navigate down" })
map("n", "<C-k>", "<cmd>TmuxNavigateUp<CR>", { desc = "tmux navigate up" })

-- Custom ones
map("n", "Q", "<nop>")
map("n", "<leader>ra", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")

-- zz
map("n", "J", "mzJ`z")
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

-- harpoon
local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup()
-- REQUIRED

map("n", "<leader>a", function()
	harpoon:list():add()
end)
map("n", "<C-e>", function()
	harpoon.ui:toggle_quick_menu(harpoon:list())
end)

map("n", "<leader>1", function()
	harpoon:list():select(1)
end, { desc = "Go to Harpoon window 1" })
map("n", "<leader>2", function()
	harpoon:list():select(2)
end, { desc = "Go to Harpoon window 2" })
map("n", "<leader>3", function()
	harpoon:list():select(3)
end, { desc = "Go to Harpoon window 3" })
map("n", "<leader>4", function()
	harpoon:list():select(4)
end, { desc = "Go to Harpoon window 4" })

-- Toggle previous & next buffers stored within Harpoon list
map("n", "<C-S-P>", function()
	harpoon:list():prev()
end)
map("n", "<C-S-N>", function()
	harpoon:list():next()
end)

-- Plugins mappings --

-- Preview (Markdown plugin)
map("n", "<leader>pp", "<cmd>Preview<CR>")
-- Ccc
map("n", "<leader>pc", "<cmd>CccPick<CR>")
map("n", "<leader>p#", "<cmd>CccHighlighterToggle<CR>")
-- Aerial
map("n", "<leader>pa", "<cmd>AerialToggle!<CR>")
-- TransparencyToggle
map("n", "<leader>pt", "<cmd>TransparentToggle<CR>")
-- UndoTree
map("n", "<leader>pu", "<cmd>UndotreeToggle<CR>")
