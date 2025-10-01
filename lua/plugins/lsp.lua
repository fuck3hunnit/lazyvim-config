return {
  -- ... ваш существующий конфиг lsp ...

  -- Добавьте emmet_ls в ensure_installed
  {
    "mason-org/mason-lspconfig.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, { "emmet_ls" })
    end,
  },

  -- Настройка emmet_ls сервера
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        emmet_ls = {
          filetypes = {
            "html",
            "css",
            "scss",
            "sass",
            "less",
            "javascript",
            "javascriptreact",
            "typescript",
            "typescriptreact",
            "vue",
            "svelte",
            "astro",
          },
          init_options = {
            html = {
              options = {
                ["bem.enabled"] = true,
              },
            },
            jsx = {
              options = {
                ["bem.enabled"] = true,
              },
            },
          },
        },
      },
    },
  },
}
