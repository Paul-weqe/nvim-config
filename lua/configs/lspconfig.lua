-- load defaults i.e lua_lsp
local base = require("nvchad.configs.lspconfig")
local on_attach = base.on_attach
local capabilities = base.capabilities

local lspconfig = require("lspconfig")
local util = "lspconfig/util"

-- for future lsp configs
lspconfig.gopls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = {"gopls"},
  filetypes = { "go", "gomod", "gowork", "gotmpl" },
  -- root_dir = util.root_pattern("go.work", "go.mod", ".git")
}
