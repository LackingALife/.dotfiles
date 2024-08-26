 return {
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		init = function()
			--vim.o.timeout = true
			--vim.o.timeoutlen = 300
		end,
		opts = {
			mode = "n", -- NORMAL mode
			-- prefix: use "<leader>f" for example for mapping everything related to finding files
			-- the prefix is prepended to every mapping part of `mappings`
			prefix = "",
			buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
			silent = true, -- use `silent` when creating keymaps
			noremap = true, -- use `noremap` when creating keymaps
			nowait = false, -- use `nowait` when creating keymaps
			expr = false, -- use `expr` when creating keymaps
		},
		config = function()
			local wk = require("which-key")
			wk.add({
				{	
					mode = {"n"},
					--Telescope
					{"<leader>f", group = "Telescope"},
					{"<leader>ff", desc = "Find files"},
					{"<leader>fg", desc = "Live grep"},
					{"<leader>fb", desc = "Buffers"},
					{"<leader>fh", desc = "Help tags"},
					{"<leader>fu", desc = "Undo history"},
					--Ranger
					{"<leader>e", group = "Files"},
					{"<leader>ef", desc = "Ranger"},
					{"<leader>et", "<cmd>Neotree toggle<cr>", desc = "Neo-Tree toggle"},
					{"<leader>er", "<cmd>Neotree<cr>", desc = "Focus Neo-tre "},
					--Diagnostics (LSP)
					{"<leader>d", group = "Diagnostics"},
					{"<leader>de", desc = "Open float"},
					{"<leader>dq", desc = "Set loc list"},
					{"<leader>dw", desc = "Goto previous"},
					{"<leader>ds", desc = "Goto next"},
					--Workspace (LSP)
					{"<leader>w", desc = "Workspace"},
					{"<leader>wa", desc = "Add folder"},
					{"<leader>wd", desc = "Delete folder"},
					{"<leader>wr", desc = "Rename symbol"},
					{"<leader>wf", desc = "Format"},
					--Others
					{[[<c-\>]], desc = "Toggle Terminal"},
					--Default
				},
				{
					"<leader>b",
					group = "buffers",
					expand = function()
						return require("which-key.extras").expand.buf()
					end
				},
				{
					-- Nested mappings are allowed and can be added in any order
					-- Most attributes can be inherited or overridden on any level
					-- There's no limit to the depth of nesting
					mode = { "n", "v" },                     -- NORMAL and VISUAL mode
					nowait = true,
					{ "<leader>q", "<cmd>q<cr>", desc = "Quit" }, -- no need to specify mode since it's inherited
					{ "<leader>s", "<cmd>w<cr>", desc = "Write" },
				}
			})
		end

	}
}
