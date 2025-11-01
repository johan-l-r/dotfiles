local km = vim.keymap

vim.g.mapleader = " "

km.set("n", "<leader>q", "<cmd>quit<cr>", { desc = "close active buffer" })
km.set("n", "<leader>w", "<cmd>write<cr>", { desc = "close active buffer" })

-- move and center
km.set({"n", "x", "v"}, "j", "jzz", { desc = "go down and center" })
km.set({"n", "x", "v"}, "k", "kzz", { desc = "go up and center" })
km.set({"n", "x", "v"}, "G", "Gzz", { desc = "go to last line and center" })

-- move between splits 
km.set("n", "<C-j>", "<C-w>j", { desc = "move to bottom split" })
km.set("n", "<C-k>", "<C-w>k", { desc = "move to top split" })
km.set("n", "<C-h>", "<C-w>h", { desc = "move to left split" })
km.set("n", "<C-l>", "<C-w>l", { desc = "move to right split" })
