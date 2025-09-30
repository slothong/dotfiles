return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      javascript = { "prettierd", "eslint_d" },
      javascriptreact = { "prettierd", "eslint_d" },
      typescript = { "prettierd", "eslint_d" },
      typescriptreact = { "prettierd", "eslint_d" },
    },
    formatters = {
      stylua = {
        prepend_args = { "--indent-type=spaces", "--indent-width=2" },
      },
      prettierd = {
        require_cwd = true,
        stop_after_first = true,
      },
      eslint_d = {
        require_cwd = true,
        stop_after_first = true,
      },
      eslint = {
        require_cwd = true,
        stop_after_first = true,
      },
    },
    format_on_save = {
      timeout_ms = 500,
      lsp_format = "fallback",
    },
  },
}
