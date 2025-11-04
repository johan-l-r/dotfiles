vim.lsp.enable({
  "emmet_ls",
  "css_ls",
  "lua_ls",
  "pyright", 
  "ts_ls"
})

vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("LspConfig", {}), 

  callback = function()
    local km = vim.keymap 

    km.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "show code actions" })
    km.set("n", "gD", vim.lsp.buf.declaration, { desc = "goto declaration" }) -- go to declaration
    km.set("n", "gd", vim.lsp.buf.declaration, { desc = "goto definitiondeclarationdeclarationdeclaration" }) -- go to declaration
    km.set("n", "<leader>d", vim.diagnostic.open_float, { desc = "goto definitiondeclarationdeclarationdeclaration" }) -- go to declaration
  end
})
