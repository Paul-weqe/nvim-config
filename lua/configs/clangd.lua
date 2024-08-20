-- C and C++ clangd configurations
local base = require "nvchad.configs.lspconfig"
local lspconfig = require "lspconfig"

lspconfig.clangd.setup {
  on_attach = function(client, bufnr)
    base.on_attach(client, bufnr)
  end,
  capabilities = base.capabilities
}
