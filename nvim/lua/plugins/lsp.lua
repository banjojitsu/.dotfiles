return {
	"neovim/nvim-lspconfig",
	lazy = false,
	dependencies = {
		{ "williamboman/mason.nvim", opts = {} },
		"williamboman/mason-lspconfig.nvim",
	},

	config = function()
		local capabilities = require("cmp_nvim_lsp").default_capabilities()
		local lsp = require("lspconfig")

		lsp.lua_ls.setup({ capabilities = capabilities })
	end,
}
