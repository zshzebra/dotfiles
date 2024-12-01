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
    "sbdchd/neoformat",
    cmd = "Neoformat",
    config = function()
      require "configs.neoformat"
    end,
  },

  {
    "smoka7/hop.nvim",
    version = "v2",
    keys = {
      { "f", "<cmd> HopWord <cr>", desc = "Hop by word" },
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

  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
