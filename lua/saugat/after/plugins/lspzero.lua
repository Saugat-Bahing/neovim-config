local lsp_zero = require('lsp-zero')
lsp_zero.on_attach(function(client, bufnr)
	lsp_zero.default_keymaps({ buffer = bufnr })
end)
lsp_zero.format_on_save({
	servers = {
		['lua_ls'] = { 'lua' }
	}
})


require('mason').setup({})
require('mason-lspconfig').setup({
	ensure_installed = { 'lua_ls', 'gopls' },
	handlers = {
		function(server_name)
			require('lspconfig')[server_name].setup({})
		end,

		lua_ls = function()
			require('lspconfig').lua_ls.setup({
				settings = {
					Lua = {
						diagonistics = {
							globals = { "vim" }
						},
					}
				}
			}
			)
		end
	},
})
