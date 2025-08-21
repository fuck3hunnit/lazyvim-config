return {
  {
    "ray-x/go.nvim",
    dependencies = {
      "ray-x/guihua.lua", -- необходим для UI компонентов
      "neovim/nvim-lspconfig",
      "nvim-treesitter/nvim-treesitter",
    },
    ft = { "go", "gomod" }, -- грузим только для Go файлов
    build = ':lua require("go.install").update_all_sync()',
    opts = {
      -- Основные настройки
      goimport = "gopls", -- используем gopls для goimport
      gofmt = "gofumpt", -- используем gofumpt для форматирования
      fillstruct = "gopls", -- использовать gopls для заполнения структур
      lsp_inlay_hints = {
        enable = true, -- inline hints (можно отключить если мешают)
      },
      run_in_floaterm = true, -- запускать в floating terminal
      floaterm_opts = {
        positon = "center",
        width = 0.9,
        height = 0.9,
      },
    },
    config = function(_, opts)
      require("go").setup(opts)
      -- Бинды не добавляем, просто настраиваем плагин
    end,
  },
}
