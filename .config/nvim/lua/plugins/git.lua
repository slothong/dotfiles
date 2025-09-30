return {
  {
    "sindrets/diffview.nvim",
    config = function()
      vim.keymap.set("n", "<leader>df", "<cmd>DiffviewOpen<CR>", { silent = true })
      vim.keymap.set("n", "<leader>dc", "<cmd>DiffviewClose<CR>", { silent = true })
    end,
  },
}
