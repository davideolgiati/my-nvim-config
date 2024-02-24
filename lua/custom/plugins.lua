local plugins = {
  -- software necessario
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        -- SQL
        "sqlfluff",
        -- GoLang
        "gopls",
        "gofumpt",
        "goimports-reviser",
        "golines",
        -- Python
        "pyright",
        "black",
        "mypy",
        "ruff"
      },
    },
  },

  -- setup LSP for all languages
  {
    "neovim/nvim-lspconfig",
    config = function ()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end
  },

  -- setup SQL
  {
    "jose-elias-alvarez/null-ls.nvim",
    ft = {"sql"},
    opts = function ()
      return require "custom.configs.null-ls-sql"
    end
  },

  -- setup GoLang
  {
    "jose-elias-alvarez/null-ls.nvim",
    ft = {"go"},
    opts = function ()
      return require "custom.configs.null-ls-go"
    end
  },

  -- setup Python
  {
    "jose-elias-alvarez/null-ls.nvim",
    ft = {"python"},
    opts = function ()
      return require "custom.configs.null-ls-python"
    end
  },

}

return plugins
