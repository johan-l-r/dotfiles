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
      fuzzy = {
        implementation = "lua", 
      },

      sources = {
        default = { "lsp", "path", "buffer", "snippets" },
      },
      completion = {
        documentation = {
          auto_show = true,
        }
      }
    })


    -- Load VSCode-style snippets from friendly-snippets
    require("luasnip.loaders.from_vscode").lazy_load()
  end,
}

