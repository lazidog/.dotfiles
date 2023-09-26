local status, packer = pcall(require, "packer")
if not status then
	print("Packer is not installed")
	return
end

vim.cmd([[packadd packer.nvim]])

packer.startup(function(use)
	use("wbthomason/packer.nvim")
	use({
		"svrana/neosolarized.nvim",
		requires = { "tjdevries/colorbuddy.nvim" },
	})
	use("nvim-lua/plenary.nvim") -- Common utilities
	use("nvim-lualine/lualine.nvim")
	use("neovim/nvim-lspconfig")

	-- autocompletion
	use("hrsh7th/nvim-cmp") -- completion plugin
	use("hrsh7th/cmp-buffer") -- source for text in buffer
	use("hrsh7th/cmp-path") -- source for file system paths

	-- snippets
	use("L3MON4D3/LuaSnip") -- snippet engine
	use("rafamadriz/friendly-snippets") -- useful snippets for different language

	use("williamboman/mason.nvim") -- managing lsp servers
	use("williamboman/mason-lspconfig.nvim")
	use("hrsh7th/cmp-nvim-lsp") -- nvim-cmp source for neovim's built-in LSP
	use("nvimdev/lspsaga.nvim")
	use("nvim-tree/nvim-web-devicons")
	use("nvim-treesitter/nvim-treesitter")

	use("windwp/nvim-autopairs")
	use("windwp/nvim-ts-autotag")

	use("nvim-tree/nvim-tree.lua")
	use("nvim-telescope/telescope.nvim")
	use("nvim-telescope/telescope-file-browser.nvim")

	use("norcalli/nvim-colorizer.lua") -- show color highlight '#.....'

	use("jose-elias-alvarez/null-ls.nvim") -- configure formatters & linters
	use("jayp0521/mason-null-ls.nvim")

	use("lewis6991/gitsigns.nvim")
end)
