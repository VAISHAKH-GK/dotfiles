vim.g.transparent_enabled = false
vim.g.tokyonight_transparent = vim.g.transparent_enabled

require("transparent").setup({
	extra_groups = { -- table/string: additional groups that should be cleared
		"MsgArea",
		"EndOfBuffer",
		--[[ "NvimTreeNormal", ]]
		"TelescopeBorder",
		"Telescope",
		"Normal",
		"SignColumn",
		"NormalNC",
    "Mason"
		-- In particular, when you set it to 'all', that means all available groups

		-- example of akinsho/nvim-bufferline.lua
		--[[ "BufferLineTabClose", ]]
		--[[ "BufferlineBufferSelected", ]]
		--[[ "BufferLineFill", ]]
		--[[ "BufferLineBackground", ]]
		--[[ "BufferLineSeparator", ]]
		--[[ "BufferLineIndicatorSelected", ]]
	},
	exclude_groups = {}, -- table: groups you don't want to clear
})
