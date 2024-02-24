local null_ls = require('null-ls')

local opts = {
  sources = {
    null_ls.builtins.diagnostics.sqlfluff.with({
      extra_args = {
        "--dialect", "bigquery",
        "--config",vim.fn.expand("~/.config/nvim/sqlfluff/.sqlfluff"),
        "--processes", "-1",
      }
    }),
  }
}

return opts
