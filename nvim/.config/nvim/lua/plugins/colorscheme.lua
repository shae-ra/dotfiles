return {
	-- add gruvbox
	{ "ellisonleao/gruvbox.nvim" },
	{ "haystackandroid/carbonized" },
	{ "AlessandroYorba/Alduin" },
	{
		"xero/miasma.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd("colorscheme miasma")
		end,
	},

	-- Configure LazyVim to load gruvbox
	{
		"LazyVim/LazyVim",
		opts = {
			--colorscheme = "carbonized-dark",
			--colorscheme = "gruvbox",
			--colorscheme = "alduin",
			colorscheme = "miasma",
		},
	},
}
