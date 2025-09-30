return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      javascript = { "prettierd", "prettier", "eslint_d" },
      javascriptreact = { "prettierd", "prettier", "eslint_d" },
      typescript = { "prettierd", "prettier", "eslint_d" },
      typescriptreact = { "prettierd", "prettier", "eslint_d" },
    },
    formatters = {
      stylua = {
        prepend_args = { "--indent-type=spaces", "--indent-width=2" },
      },
      prettier = {
        require_cwd = true,
        stop_after_first = true,
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
