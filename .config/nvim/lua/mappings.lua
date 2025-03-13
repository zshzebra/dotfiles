require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- Normal Mode
-- map("n", "<C-u>", "<C-u>zz")
-- map("n", "<C-d>", "<C-d>zz")
-- OpenSCAD
vim.g.openscad_cheatsheet_toggle_key = '<Enter>'
vim.g.openscad_help_trig_key = '<A-h>'
vim.g.openscad_help_manual_trig_key = '<A-m>'
vim.g.openscad_exec_openscad_trig_key = '<A-o>'
vim.g.openscad_top_toggle = '<A-c>'

-- Insert Mode
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
