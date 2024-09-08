return {
  -- Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = { "nvim-treesitter/nvim-treesitter-context" },
    main = "nvim-treesitter.configs",
    build = ":TSUpdate",
    opts = {
      ensure_installed = {
        "bash",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "regex",
        "tsx",
        "typescript",
        "vim",
        "yaml",
      },
      auto_install = true,
      highlight = {
        enable = true,
      },
      incremental_selection = {
        enable = true,
      },
    },
    event = { "BufReadPost", "BufWritePost", "BufNewFile" },
  },

  -- NvChad/nvim-colorizer
  {
    "NvChad/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup({
        opts = {
          user_default_options = { names = false },
          filetypes = {
            "*",
            "!lazy",
          },
        },
      })
    end,
  },

  --  -- Nnvim-autopairs
  --  {
  --    "windwp/nvim-autopairs",
  --    event = "InsertEnter",
  --    config = function()
  --      require("nvim-autopairs").setup({
  --        disable_filetype = { "TelescopePrompt", "vim" },
  --      })
  --    end,
  --  },

  -- Blankline-nvim
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    ---@module "ibl"
    ---@type ibl.config
    opts = {},
    event = "VeryLazy",
  },
}
