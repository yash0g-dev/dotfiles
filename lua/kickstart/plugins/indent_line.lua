return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  opts = {
    indent = {
      char = "▏", -- your style (thin line)
    },

    scope = {
      enabled = true,
      show_start = true,
      show_end = true,
      highlight = "IblScope",
    },

    exclude = {
      filetypes = {
        "help",
        "dashboard",
        "lazy",
        "mason",
        "NvimTree",
      },
    },
  },
}
