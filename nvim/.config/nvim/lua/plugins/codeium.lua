return {
	"Exafunction/codeium.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"hrsh7th/nvim-cmp",
	},
	config = function()
		require("codeium").setup({})
		local cmp = require("cmp")

		cmp.setup({
			-- ...
			sources = {
				-- ...
				{ name = "codeium" },
				--{ name = "jedi_language_server" },
			},
		})
	end,
}
