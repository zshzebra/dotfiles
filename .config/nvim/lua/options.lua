require "nvchad.options"

-- add yours here!

local o = vim.o
o.relativenumber = true
-- o.cursorlineopt ='both' -- to enable cursorline!

vim.filetype.add({
  extension = {
    scad = "openscad"
  }
})
