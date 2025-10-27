return {
  "saghen/blink.cmp",
  event = "InsertEnter",
  dependencies = {
    "L3MON4D3/LuaSnip",
    "rafamadriz/friendly-snippets",
  },
  config = function()
    local blink = require("blink.cmp")

    blink.setup({
      keymap = {
        preset = "default",
        ["<C-j>"] = { "select_next", "fallback" },
        ["<C-k>"] = { "select_prev", "fallback" },
        ["<Tab>"] = { "accept", "fallback" },
      },

      sources = {
        default = { "lsp", "path", "buffer", "snippets" },
      },

      windows = {
        completion = {
          border = true,
        },
        documentation = {
          border = true,
          auto_show = true,
          auto_show_delay_ms = 1000, -- 1 second delay
        },
        signature_help = {
          border = true,
          enabled = true,
        },
      },
    })

    -- Load VSCode-style snippets from friendly-snippets
    require("luasnip.loaders.from_vscode").lazy_load()
  end,
}

