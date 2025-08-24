return {
	{
		"williamboman/mason.nvim",
		config = function()
			require('mason').setup({})
		end
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup(
			{
				ensure_installed = { "lua_ls", "gopls", "pyright", "bashls", "yamlls", "dockerls", "ansiblels" }
			}
			)
		end
	},
	{
		"zapling/mason-conform.nvim",
		config = function()
			require("mason-conform").setup(
			{
				ensure_installed = { "stylua", "isort", "black", "shfmt", "dprint" }
			})
		end
	},
	{
		"rshkarin/mason-nvim-lint",
		config = function()
			require("mason-nvim-lint").setup(
			{
				ensure_installed = { "luacheck", "flake8", "shellcheck", "yamllint", "hadolint" }
			})
		end
	},
}
