return {
  "jose-elias-alvarez/null-ls.nvim",
  opts = function(_, opts)
    local null_ls = require("null-ls")
    opts = opts or {} -- Ensure opts is a table
    opts.sources = opts.sources or {} -- Ensure opts.sources is a table
    vim.list_extend(opts.sources, {
      null_ls.builtins.diagnostics.flake8,
      null_ls.builtins.diagnostics.mypy,
      null_ls.builtins.diagnostics.ruff,
    })
    null_ls.setup(opts)
  end,
}
