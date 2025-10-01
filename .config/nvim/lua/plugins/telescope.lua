return {
  {
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
  },
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
    config = function()
      vim.keymap.set("n", "<leader>sf", function()
        require("telescope").extensions.file_browser.file_browser()
      end)

      local fb_actions = require("telescope._extensions.file_browser.actions")
      require("telescope").setup({
        extensions = {
          file_browser = {
            path = "%:p:h",
            cwd = vim.fn.expand("%:p:h"),
            hidden = true,
            grouped = true,
            initial_mode = "normal",
            respect_gitignore = false,
            mappings = {
              ["i"] = {},
              ["n"] = {
                ["<bs>"] = fb_actions.goto_parent_dir,
              },
            },
          },
        },
      })

      require("telescope").load_extension("file_browser")
    end,
  },
}
