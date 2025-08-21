local function file_exists(path)
  return vim.fn.filereadable(path) == 1
end

local function find_up(name)
  return vim.fn.findfile(name, ".;") ~= ""
end

return {
  -- Форматтеры (conform)
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        go = { "goimports", "gofumpt" },
        javascript = { "eslint_d", "prettierd", "prettier", "biome", "dprint", "deno_fmt" },
        typescript = { "eslint_d", "prettierd", "prettier", "biome", "dprint", "deno_fmt" },
        javascriptreact = { "eslint_d", "prettierd", "prettier", "biome", "dprint", "deno_fmt" },
        typescriptreact = { "eslint_d", "prettierd", "prettier", "biome", "dprint", "deno_fmt" },
        svelte = { "eslint_d", "prettierd", "prettier", "biome", "dprint", "deno_fmt" },
        markdown = { "prettierd", "prettier", "dprint" },
        yaml = { "prettierd", "prettier", "dprint" },
      },
      stop_after_first = true, -- 👈 вот эта строка говорит: "использовать первый подходящий"
      formatters = {
        biome = {
          condition = function()
            return find_up("biome.json")
          end,
        },
        deno_fmt = {
          condition = function()
            return file_exists("deno.json") or file_exists("deno.jsonc")
          end,
        },
        dprint = {
          condition = function()
            return file_exists("dprint.json") or file_exists("dprint.jsonc")
          end,
        },
        prettier = {
          condition = function()
            return not find_up("biome.json")
          end,
        },
        prettierd = {
          condition = function()
            return not find_up("biome.json")
          end,
        },
        eslint_d = {
          condition = function()
            return find_up(".eslintrc.js") or find_up(".eslintrc.json") or find_up("eslint.config.js")
          end,
        },
      },
    },
  },
}
