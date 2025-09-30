return {
  "catppuccin/nvim",
  name = "catppuccin",
  config = function()
    local catppuccin = require("catppuccin")
    catppuccin.setup({
      flavour = "macchiato",
      integrations = {
        cmp = true,
        gitsigns = true,
        treesitter = true,
      },
    })
    vim.cmd.colorscheme("catppuccin")
  end,
}
