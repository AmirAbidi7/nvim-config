-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

-- EXAMPLE
local servers = {
  "html" ,
  "cssls" ,
  "clangd" ,
  "gopls" ,
  "pyright" ,
  "somesass_ls" ,
  "svelte",
  "ts_ls",
  "css_variables",
  "angularls",
  "omnisharp",
  "cssmodules_ls",
  "tailwindcss",
  "emmet_language_server",
  "lua_ls",
}
local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

-- configuring single server, example: typescript
-- lspconfig.ts_ls.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- }
