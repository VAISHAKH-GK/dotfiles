local servers = {
	"lua_ls",
	"pyright",
	"gopls",
	"tsserver",
	"rust_analyzer",
}

local settings = {
	ui = {
		border = "none",
		icons = {
			package_installed = "◍",
			package_pending = "◍",
			package_uninstalled = "◍",
		},
	},
	log_level = vim.log.levels.INFO,
	max_concurrent_installers = 4,
}

local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")

mason.setup(settings)
mason_lspconfig.setup({
	ensure_installed = servers,
	automatic_installation = true,
})

mason_lspconfig.setup_handlers({
	function(server_name)
		require("lspconfig")[server_name].setup({
			on_attach = require("user.lsp.handlers").on_attach,
			capabilities = require("user.lsp.handlers").capabilities,
			settings = servers[server_name],
		})
	end,
})
