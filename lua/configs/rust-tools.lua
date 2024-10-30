local on_attach = require("plugins.init").on_attach
local capabilities = require("plugins.init").capabilities
local lspconfig = require("lspconfig")
local util = require "lspconfig/util"

local options = {
  server = {
    on_attach = on_attach,
    capabilities = capabilities,
  },
}

return options
