return {
	{
		"mfussenegger/nvim-lint",
		config = function()
			require("lint").linters_by_ft = {
				bash = { "shellcheck" },
				python = { "flake8" },
				yaml = { "yamllint" },
				dockerfile = { "hadolint" },
				lua = { "luacheck" },
			}
			vim.api.nvim_create_autocmd({ "BufWritePost" }, {
				callback = function()
					require("lint").try_lint()
				end,
			})
		end,
	},
}
