return {
  "nvim-tree/nvim-tree.lua",

  dependencies = "nvim-tree/nvim-web-devicons", 

  config = function()
    require("nvim-tree").setup({
      view = {
        width = 25,
      },
      renderer = {
        group_empty = true,
      },
      filters = {
        dotfiles = true,
      }
    })

    vim.keymap.set("n", "<leader>eo", "<cmd>NvimTreeToggle<cr>", { desc = "open file explorer" })
  end
}
