return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    optional = true,
    opts = function()
      local bufferline = require("catppuccin.groups.integrations.bufferline")
      bufferline.get = bufferline.get or bufferline.get_theme
    end,
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "mocha",
        transparent_background = true,
        float = {
          enabled = true,
          transparent = true, -- enable transparent floating windows
          solid = false,
          winblend = 10,
          border = "rounded",
        },
        integrations = {
          cmp = true,
          gitsigns = true,
          treesitter = true,
          telescope = true,
          notify = true,
          mini = {
            enabled = true,
            indentscope_color = "",
          },
        },
      })
      vim.cmd.colorscheme("catppuccin")
    end,
  },
}
