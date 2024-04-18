-- LSP Config
return {

  --
  {
    "nvim-treesitter.configs",
    config = function()
      local configs = require("nvim-treesitter.configs")

      configs.setup({
        ensure_installed = {
          "c",
          "cpp",
          "go",
          "lua",
          "vim",
          "vimdoc",
          "query",
        },
        sync_install = false,
        highlight = { enable = true },
        indent = { enable = true },
      })
    end,
  },

  -- MASON
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "basedpyright",
      },
    },
  },

  -- PYTHON
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        -- pyright will be automatically installed with mason and loaded with lspconfig
        basedpyright = {},
        ruff_lsp = {},
      },
    },
  },

  -- ARDUINO
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    ---@type lspconfig.options
    opts = {
      servers = {
        ---@type lspconfig.options
        arduino_language_server = {},
      },
    },
  },

  -- CLANG
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        clangd = {},
        cmake = {},
      },
    },
  },

  -- CSS
  {},
}
