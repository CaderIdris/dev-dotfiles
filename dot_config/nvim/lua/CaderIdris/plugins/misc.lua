return {
	{
		"gruvw/strudel.nvim",
		config = function()
			local strudel = require("strudel")
			strudel.setup()
		end,
		build = "npm install"

	}
}
