return {
	"SirVer/ultisnips",
	"Exafunction/codeium.nvim",
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"quangnguyen30192/cmp-nvim-ultisnips",
			{ "saadparwaiz1/cmp_luasnip", enabled = false },
		},
		enabled = true,
	},
	opts = function(_, opts)
		local cmp = require("cmp")
		opts.snippet = {
			expand = function(args)
				vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
			end,
		}
		opts.sources = cmp.config.sources({
			{ name = "nvim_lsp" },
			{ name = "luasnip" },
			{ name = "ultisnips" },
			{ name = "buffer" },
			{ name = "codeium" },
			{ name = "path" },
		})
	end,
}
