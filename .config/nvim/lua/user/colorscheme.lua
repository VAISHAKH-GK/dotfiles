vim.g.material_style = "palenight"
vim.g.sonokai_style = "andromeda"
vim.g.gruvbox_contrast_dark = "dark"

require("catppuccin").setup({
	flavour = "frappe",
	background = {
		light = "latte",
		dark = "frappe",
	},
})

require("tokyonight").setup({
	style = "moon",
})

local colorscheme = "tokyonight"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
	return
end
