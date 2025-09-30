return {
  {
    "sindrets/diffview.nvim",
    config = function()
      vim.keymap.set("n", "<leader>df", "<cmd>DiffviewOpen<CR>", { silent = true })
      vim.keymap.set("n", "<leader>dc", "<cmd>DiffviewClose<CR>", { silent = true })
      vim.keymap.set("n", "<leader>dh", "<cmd>DiffviewFileHistory<CR>", { silent = true })
    end,
  },
  {
    "lewis6991/gitsigns.nvim",
    opts = {
      current_line_blame = true,
      current_line_blame_opts = {
        virt_text = true,
        virt_text_pos = "eol", -- 'eol' | 'overlay' | 'right_align'
        delay = 300,
        ignore_whitespace = false,
      },
      on_attach = function(bufnr)
        local gs = package.loaded.gitsigns
        local function map(mode, l, r, opts)
          opts = opts or {}
          opts.buffer = bufnr
          vim.keymap.set(mode, l, r, opts)
        end
        map("n", "<leader>hb", function()
          gs.blame_line({ full = true })
        end)
      end,
    },
  },
}
