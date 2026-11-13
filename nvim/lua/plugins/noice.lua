return {
  "folke/noice.nvim",
  enabled = not vim.g.neovide,
  event = "VeryLazy",
  dependencies = { "MunifTanjim/nui.nvim" },
  opts = {
    views = {
      cmdline_popup = {
        position = { row = "30%", col = "50%" },
      },
    },
  },
}
