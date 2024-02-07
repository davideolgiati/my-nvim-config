local plugins = {
  {
    "jose-elias-alvarez/null-ls.nvim",
    ft = {"sql"},
    opts = function ()
      return require "custom.configs.null-ls-sql"
    end
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "sqlfluff",
      },
    },
  },
}

return plugins
