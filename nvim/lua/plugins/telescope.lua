return {
	"nvim-telescope/telescope.nvim",
	event = "VimEnter",
	branch = "0.1.x",

	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope-file-browser.nvim",
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "make",
		},
	},

	config = function()
		require("telescope").setup({
			defaults = require("telescope.themes").get_dropdown({ layout_config = { preview_cutoff = 100 } }),
			pickers = {
				find_files = { hidden = true },
			},
			extensions = {
				file_browser = {
					hijack_netrw = true,
					hidden = { file_browser = true, folder_browser = true },
				},
			},
		})

		require("telescope").load_extension("file_browser")
		require("telescope").load_extension("fzf")
	end,
	-- opts = {
	-- 	-- defaults = require("telescope.themes").get_ivy({ layout_config = { height = 0.5, preview_cutoff = 0 } }),
	-- 	defaults = require("telescope.themes").get_dropdown({ layout_config = { preview_cutoff = 100 } }),
	-- },

	keys = {
		{ "<leader>t", mode = { "n", "x", "o" }, "<cmd>Telescope<cr>", desc = "telescope" },
		{ "<leader>`", mode = { "n", "x", "o" }, "<cmd>Telescope file_browser<cr>", desc = "file browser" },
	},
}
