return {
  {
    "folke/tokyonight.nvim",
    priority = 1000,
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },

      on_highlights = function(hl, c)
        hl.Normal = { bg = "none" }
        hl.NormalFloat = { bg = "none" }
        hl.LineNr = { fg = "#ff79c6", bg = "none" }
        hl.CursorLineNr = { fg = "#ff79c6", bold = true }
        hl.CursorLine = { bg = c.bg_highlight }
      end,
    },

    config = function(_, opts)
      require("tokyonight").setup(opts)
      vim.cmd("colorscheme tokyonight-night")
    end,
  },
}
