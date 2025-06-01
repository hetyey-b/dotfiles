require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls" }
vim.lsp.enable(servers)

vim.lsp.config('rust_analyzer', {
  settings = {
    ['rust_analyzer'] = {
      diagnostics = {
        enable = false;
      }
    },
  }
})

vim.lsp.enable('cssmodules_ls')
-- read :h vim.lsp.config for changing options of lsp servers 
