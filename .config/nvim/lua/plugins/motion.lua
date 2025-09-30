return {
  "bkad/CamelCaseMotion",
  config = function()
    vim.g.camelcasemotion_key = "<leader>"
    vim.keymap.set({ "n", "x", "o" }, "<leader>w", "<Plug>CamelCaseMotion_w", { noremap = false, silent = true })
    vim.keymap.set({ "n", "x", "o" }, "<leader>b", "<Plug>CamelCaseMotion_b", { noremap = false, silent = true })
    vim.keymap.set({ "n", "x", "o" }, "<leader>e", "<Plug>CamelCaseMotion_e", { noremap = false, silent = true })
    vim.keymap.set({ "n", "x", "o" }, "i<leader>w", "<Plug>CamelCaseMotion_iw", { noremap = false, silent = true })
    vim.keymap.set({ "n", "x", "o" }, "i<leader>b", "<Plug>CamelCaseMotion_ib", { noremap = false, silent = true })
    vim.keymap.set({ "n", "x", "o" }, "i<leader>e", "<Plug>CamelCaseMotion_ie", { noremap = false, silent = true })
  end,
}
