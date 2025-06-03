return {
  {
    "ray-x/lsp_signature.nvim",
    event = "LspAttach",
    opts = {
      bind = true,
      hint_enable = true,
      hint_prefix = "🐾 ",
      floating_window = false, -- ❌ отключаем всплывающее окно
      handler_opts = {
        border = "none",
      },
      always_trigger = false,
      timer_interval = 100,
    },
    config = function(_, opts)
      require("lsp_signature").setup(opts)
    end,
  },
}
