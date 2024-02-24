local plugins = {
  -- software necessario
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "sqlfluff",
        "gopls",
        "gofumpt",
        "goimports-reviser",
        "golines"
      },
    },
  },

  -- setup SQL
  {
    "jose-elias-alvarez/null-ls.nvim",
    ft = {"sql"},
    opts = function ()
      return require "custom.configs.null-ls-sql"
    end
  },

  -- setup GO
  {
    "jose-elias-alvarez/null-ls.nvim",
    ft = {"go"},
    opts = function ()
      return require "custom.configs.null-ls-go"
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function ()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end
  }
}

return plugins
