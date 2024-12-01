require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- Normal Mode
map("n", ";", ":", { desc = "CMD enter command mode" })
map("n", "<leader>ft", "<cmd> NvimTreeToggle <cr>")

-- Insert Mode
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
