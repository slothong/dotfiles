return {
  "catppuccin/nvim",
  name = "catppuccin",
  config = function()
    local catppuccin = require("catppuccin")
    catppuccin.setup({
      flavour = "macchiato",
      auto_integrations = true,
    })
    vim.cmd.colorscheme("catppuccin")
  end,
}
