vim.opt.number = true
vim.opt.autoindent = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.smarttab = true
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.mouse = "a"
vim.opt.signcolumn = "yes:1"

vim.diagnostic.config({
  virtual_text = {
    source = "always",
    prefix = "●",
  },
})

vim.api.nvim_set_option("clipboard", "unnamed")

vim.opt.laststatus = 3
