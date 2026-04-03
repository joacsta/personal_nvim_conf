return {
	-- ─── Oil.nvim ───────────────────────────────
	{
		"stevearc/oil.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		lazy = false,
		keys = {
			{
				"-",
				function()
					require("oil").toggle_float()
				end,
				desc = "Oil flutuante (cwd)",
			},
			{
				"<leader>e",
				function()
					require("oil").toggle_float(".")
				end,
				desc = "Oil flutuante (root)",
			},
			{
				["q"] = "actions.close",
			},
		},
		opts = {
			default_file_explorer = true,
			delete_to_trash = true,
			skip_confirm_for_simple_edits = true,
			view_options = {
				show_hidden = true,
			},
			float = {
				padding = 2,
				max_width = 80,
				max_height = 30,
				border = "rounded",
			},
			win_options = {
				wrap = false,
				signcolumn = "no",
				cursorcolumn = false,
				foldcolumn = "0",
				spell = false,
				list = false,
				conceallevel = 3,
				concealcursor = "nvic",
			},
		},
	},
}
