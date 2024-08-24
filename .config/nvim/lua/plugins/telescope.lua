local builtin = require('telescope.builtin')

return {
	"nvim-telescope/telescope.nvim",
	dependencies = {"nvim-lua/plenary.nvim"},
	vim.keymap.set('n', '<leader>ff', builtin.find_files, {}),
	vim.keymap.set('n', '<leader>fg', builtin.live_grep, {}),
	vim.keymap.set('n', '<leader>fb', builtin.buffers, {}),
	vim.keymap.set('n', '<leader>fh', builtin.help_tags, {}),
	config = function()
		require("telescope").setup({
			pickers = {
				find_files = {
					follow = true
				}
			}
		})
	end
}
