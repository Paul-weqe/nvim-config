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

-- lspconfig.rust_analyzer.setup({
--   on_attach = on_attach,
--   capabilities = capabilities,
--   filetypes = {"rust"},
--   root_dir = util.root_pattern("Cargo.toml"),
--   settings = {
--     ['rust-analyzer'] = {
--       cargo = {
--         allFeatures = true,
--       }
--     },
--   },
-- })


