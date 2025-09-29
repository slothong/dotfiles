return {
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
}
