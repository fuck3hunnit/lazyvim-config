return {
  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
      "windwp/nvim-ts-autotag", -- автозакрытие тегов в HTML/JSX
      "JoosepAlviste/nvim-ts-context-commentstring", -- умное комментирование
    },
    build = ":TSUpdate",
    opts = {
      ensure_installed = {
        "go",
        "javascript",
        "typescript",
        "tsx",
        "html",
        "css",
        "json",
        "jsonc",
        "lua",
        "vim",
        "markdown",
        "markdown_inline",
        "astro",
        "svelte",
        "vue",
        "graphql",
      },
      auto_install = true,

      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },

      indent = {
        enable = true,
        disable = { "css" }, -- можно оставить, если глючит
      },

      autotag = {
        enable = true,
      },

      context_commentstring = {
        enable = true,
        enable_autocmd = false,
      },
    },
  },
}
