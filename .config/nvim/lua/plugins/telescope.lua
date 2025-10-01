return {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local builtin = require("telescope.builtin")
    vim.keymap.set("n", "<leader>ff", function()
      builtin.find_files({
        find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*" },
      })
    end, { desc = "Telescope find files" })
    vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
    vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })

    require("telescope").setup({
      defaults = {
        file_ignore_patterns = { "node_modules" },
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
}
