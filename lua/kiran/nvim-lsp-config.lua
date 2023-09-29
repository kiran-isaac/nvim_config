lspconfig = require('lspconfig')
local capabilities = require('cmp_nvim_lsp').default_capabilities()

lspconfig['pylsp'].setup({
  capabilities = capabilities,
})

lspconfig.gopls.setup({
	capabilities = capabilities
})

require('pest-vim').setup {}
