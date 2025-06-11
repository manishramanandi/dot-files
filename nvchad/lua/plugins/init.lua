return {

    {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = { "gopls" },
    },
  },

  -- 2. optional: add Go parsers to treesitter for syntax
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, { "go", "gomod", "gosum", "gowork" })
    end,
  },


    {
   "m4xshen/hardtime.nvim",
   lazy = false,
   dependencies = { "MunifTanjim/nui.nvim" },
   opts = {
        notification = true,
   },
   },

    {
    "vyfor/cord.nvim",
    opts = {
      -- Optional configuration
      editor = "Neovim",
      client = "desktop", -- can be "desktop", "ptb", "canary"
      workspace_text = "Working on cool stuff",
      main_image = "file", -- "file" | "neovim"
      show_time = true,
    },
    event = "VeryLazy",
    config = function(_, opts)
      require("cord").setup(opts)
    end,
  },


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

  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

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
