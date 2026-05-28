return {
  {
    "saghen/blink.cmp",
    version = "1.*",

    dependencies = {
      -- Snippet engine
      "L3MON4D3/LuaSnip",

      -- Prebuilt snippets
      "rafamadriz/friendly-snippets",
    },

    opts = {
      keymap = {
        preset = "enter",
      },

      appearance = {
        nerd_font_variant = "mono",
      },

      completion = {
        documentation = {
          auto_show = false,
        },
      },

      sources = {
        default = {
          "snippets",
          "path",
          "buffer",
        },
      },

      fuzzy = {
        implementation = "prefer_rust_with_warning",
      },
    },

    opts_extend = {
      "sources.default",
    },
  },


  -- AI autocomplete
  {
    "supermaven-inc/supermaven-nvim",

    config = function()
      require("supermaven-nvim").setup({
        disable_inline_completion = false,
        disable_keymaps = false,
      })
    end,
  },
}
