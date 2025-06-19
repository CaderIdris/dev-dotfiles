return {
	{
		"stevearc/oil.nvim",
		config = function()
			require("oil").setup(
				{
					columns = {"icon", "permissions", "size", "mtime"},
					delete_to_trash = true,
					skip_confirm_for_simple_edits = false,
					view_options = {
						show_hidden = true
					},
					win_options = {
						signcolumn = "yes:2"
					}
				}
			)
		end,
		init = function()
			local wk = require("which-key")
			local oil = require("oil")
			wk.add(
				{
					{"-", ":Oil<CR>", desc = "Open Oil"},
					{"<leader>-", oil.toggle_float, desc = "Open Oil as floating window"},
				}
			)
		end,
	},
	{
		"refractalize/oil-git-status.nvim",
		dependencies = {
			"stevearc/oil.nvim"
		},
		config = true,
	}
}
