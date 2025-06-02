return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false, -- загружается сразу
    priority = 1000, -- до всех остальных
    config = function()
      require("catppuccin").setup({
        flavour = "mocha", -- "latte", "frappe", "macchiato", "mocha"
        transparent_background = true,
        integrations = {
          cmp = true,
          gitsigns = true,
          treesitter = true,
          telescope = true,
          notify = true,
          mini = true,
        },
      })
      vim.cmd.colorscheme("catppuccin")
    end,
  },
}
