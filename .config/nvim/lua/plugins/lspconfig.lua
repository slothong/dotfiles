local required_servers = { "ts_ls", "stylua" }

return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      { "hrsh7th/cmp-nvim-lsp" },
      { "mason-org/mason.nvim", opts = {} },
      {
        "mason-org/mason-lspconfig.nvim",
        opts = {
          ensure_installed = required_servers,
        },
      },
    },
    config = function()
      local lspconfig = require("lspconfig")
      local cmp_capabilities = require("cmp_nvim_lsp").default_capabilities()

      local settings = setmetatable({
        ts_ls = { capabilities = cmp_capabilities },
      }, {
        __index = function()
          return {}
        end,
      })

      for _, server in ipairs(required_servers) do
        vim.lsp.config(server, settings[server])
      end
    end,
  },
}
