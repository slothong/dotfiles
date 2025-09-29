return {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local builtin = require("telescope.builtin")
    vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
    vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
    vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })

    require("telescope").setup({

      defaults = {
        mappings = {
          n = {
            ["<c-d>"] = require("telescope.actions").delete_buffer,
          }, -- n
          i = {
            ["<c-d>"] = require("telescope.actions").delete_buffer,
            ["dd"] = require("telescope.actions").delete_buffer,
          },
        },
      },
    })
  end,
  opts = {},
}
