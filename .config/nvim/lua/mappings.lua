require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- Normal Mode
map("n", "<C-u>", "<C-u>zz")
map("n", "<C-d>", "<C-d>zz")

-- Insert Mode
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
