return {
	"renerocksai/telekasten.nvim",
	dependencies = { "nvim-telescope/telescope.nvim" },
	opts = {
		-- Main paths
		dailies = vim.fn.expand("~/zk/daily-notes"),
		home = vim.fn.expand("~/zk"),

		-- Note creation settings
		auto_set_filetype = false,
		filename_small_case = true,
		filename_space_subst = "-",
		new_note_filename = "uuid-title",
		sort = "modified",
		uuid_sep = " | ",
		uuid_type = "rand",

		-- Note templates
		template_new_daily = vim.fn.expand("~/zk/templates/new-daily.md"),
		template_new_note = vim.fn.expand("~/zk/templates/new-note.md"),
	},
	keys = {
		{ "<leader>z", "<cmd>Telekasten panel<cr>", desc = "telekasten" },
	},
}
