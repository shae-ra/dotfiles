return {
	-- add gruvbox
	{ "ellisonleao/gruvbox.nvim" },
	{ "haystackandroid/carbonized" },
	{ "AlessandroYorba/Alduin" },

	-- Configure LazyVim to load gruvbox
	{
		"LazyVim/LazyVim",
		opts = {
			--colorscheme = "carbonized-dark",
			colorscheme = "gruvbox",
			--colorscheme = "alduin",
		},
	},
}
