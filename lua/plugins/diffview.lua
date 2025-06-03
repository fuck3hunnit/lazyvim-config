return {
  {
    "sindrets/diffview.nvim",
    cmd = { "DiffviewOpen", "DiffviewFileHistory", "DiffviewClose" },
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
      {
        "<leader>gW",
        "<cmd>DiffviewOpen<cr>",
        desc = "Diff (git changes)",
      },
      {
        "<leader>gq",
        "<cmd>DiffviewClose<cr>",
        desc = "Close Diffview",
      },
    },
  },
}
