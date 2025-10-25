local km = vim.keymap

vim.g.mapleader = " "

km.set("n", "<leader>q", "<cmd>quit<cr>", { desc = "close active buffer" })
km.set("n", "<leader>w", "<cmd>write<cr>", { desc = "close active buffer" })
