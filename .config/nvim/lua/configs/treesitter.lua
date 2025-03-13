local parser_config = require "nvim-treesitter.parsers".get_parser_configs()

parser_config.openscad = {
  install_info = {
    url = "~/parsers/tree-sitter-openscad/",
    files = { "src/parser.c" },
    branch = "main",
    generate_requires_npm = true,
  },
  filetype = "openscad",
}
