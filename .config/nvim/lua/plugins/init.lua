return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "NeogitOrg/neogit",
    cmd = "Neogit",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "sindrets/diffview.nvim",
      "nvim-telescope/telescope.nvim",
    },
    keys = {
      { "<leader>ft", "<cmd> NvimTreeToggle <cr>", desc = "Toggle File Manager" },
    },
    config = function()
      require "configs.neogit"
    end,
  },

  {
    "smoka7/hop.nvim",
    version = "v2",
    keys = {
      { "<leader>z", "<cmd> HopWord <cr>", desc = "Hop by word" },
    },
    opts = {
      require "configs.hop",
    },
  },

  {
    "folke/trouble.nvim",
    cmd = "Trouble",
    opts = {},
  },

  {
    "folke/todo-comments.nvim",
    -- NOTE: May not be the best way to load the plugin
    lazy = false,
    dependencies = { "nvim-lua/plenary.nvim", "folke/trouble.nvim" },
    opts = {},
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "svelte",
        "typescript",
        "javascript",
        "jsdoc",
        "rust",
        "go",
      },
    },
    config = function()
      require "configs.treesitter"
    end,
  },
  {
    "MeanderingProgrammer/render-markdown.nvim",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "echasnovski/mini.nvim"
    },
    cmd = "RenderMarkdown",
    opts = {},
  },
  {
    "frankroeder/parrot.nvim",
    dependencies = { "ibhagwan/fzf-lua", "nvim-lua/plenary.nvim" },
    opts = {},
    event = "BufEnter",
    config = function ()
      require("parrot").setup {
        providers = {
          anthropic = {
            api_key = os.getenv "ANTHROPIC_API_KEY",
          }
        },
      }
    end
  },
  {
    "karb94/neoscroll.nvim",
    opts = {},
    event = "BufEnter"
  },
  {
    "mbbill/undotree",
    cmd = "UndotreeToggle",
    keys = {
      "<leader>u", "<cmd> UndotreeToggle <cr>", desc = "Toggle Undotree",
    }
  },
  {
    "salkin-mada/openscad.nvim",
    ft = {"scad"},
    config = function ()
      vim.g.openscad_load_snippets = true
      require("openscad")
    end,
    dependencies = {
      "L3MON4D3/LuaSnip",
      "junegunn/fzf.vim",
    },
  },
}
