local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

-- Install your plugins here
return packer.startup(function(use)
	-- plugins
	use("wbthomason/packer.nvim") -- Have packer manage itself
	use("nvim-lua/popup.nvim") -- An implementation of the Popup API from vim in Neovim
	use("nvim-lua/plenary.nvim") -- Useful lua functions used ny lots of plugins
	use("windwp/nvim-autopairs") -- Autopairs, integrates with both cmp and treesitter
	use("numToStr/Comment.nvim") -- Easily comment stuff
	use("terrortylor/nvim-comment")
	use("nvim-lualine/lualine.nvim")
	use("akinsho/toggleterm.nvim")
	use("mbbill/undotree")
	use("lukas-reineke/indent-blankline.nvim")
	use("xiyaowong/nvim-transparent")

	-- Colorschemes
	--[[ use("lunarvim/colorschemes") -- A bunch of colorschemes you can try out ]]
	use("tiagovla/tokyodark.nvim")
	use("Mofiqul/dracula.nvim")
	use("lunarvim/darkplus.nvim")
	use("folke/tokyonight.nvim")
	use("EdenEast/nightfox.nvim")
	use("bluz71/vim-nightfly-guicolors")
	use("marko-cerovac/material.nvim")
	use({ "catppuccin/nvim", as = "catppuccin" })
	use({ "embark-theme/vim", as = "embark" })
	use("rebelot/kanagawa.nvim")
	use("morhetz/gruvbox")
	use("sainnhe/sonokai")
	use("tanvirtin/monokai.nvim")
	use("shaunsingh/nord.nvim")
	use("romgrk/doom-one.vim")
	use("shaunsingh/moonlight.nvim")
	use("ray-x/aurora")
	use("FrenzyExists/aquarium-vim")
	use("ayu-theme/ayu-vim")
	use({ "rose-pine/neovim", as = "rose-pine" })
	use("NLKNguyen/papercolor-theme")
	use("navarasu/onedark.nvim")

	-- cmp plugins
	use("hrsh7th/nvim-cmp") -- The completion plugin
	use("hrsh7th/cmp-buffer") -- buffer completions
	use("hrsh7th/cmp-path") -- path completions
	use("hrsh7th/cmp-cmdline") -- cmdline completions
	use("saadparwaiz1/cmp_luasnip") -- snippet completions
	use("hrsh7th/cmp-nvim-lsp")

	--nvim tree
	use("nvim-tree/nvim-web-devicons")
	use("nvim-tree/nvim-tree.lua")

	-- snippets
	use("L3MON4D3/LuaSnip") --snippet engine
	use("rafamadriz/friendly-snippets") -- a bunch of snippets to use

	-- lsp
	use("neovim/nvim-lspconfig") -- enable LSP
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")
	use("tamago324/nlsp-settings.nvim") -- language server settings defined in json for
	use("jose-elias-alvarez/null-ls.nvim") -- for formatters and linters
	use("folke/lsp-colors.nvim")

	-- Telescope
	use("nvim-telescope/telescope.nvim")

	-- treesitter
	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	})

	use("p00f/nvim-ts-rainbow")
	use("JoosepAlviste/nvim-ts-context-commentstring")
	use("akinsho/bufferline.nvim")
	use("norcalli/nvim-colorizer.lua")

	-- git
	use("lewis6991/gitsigns.nvim")
	use("tpope/vim-fugitive")

	-- ui
	--[[ use("MunifTanjim/nui.nvim") ]]
 --[[  use("folke/noice.nvim") ]]
	--[[ use("rcarriga/nvim-notify") ]]

	-- dashboard
	use("goolord/alpha-nvim")

	-- dap
	--[[ use("mfussenegger/nvim-dap") ]]
	--[[ use("leoluz/nvim-dap-go") ]]
	--[[ use("rcarriga/nvim-dap-ui") ]]

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
