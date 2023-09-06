--v This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.2",
		-- or                            , branch = '0.1.x',
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	use({ "rose-pine/neovim", as = "rose-pine" })

	vim.cmd("colorscheme rose-pine")

	use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })
	use("theprimeagen/harpoon")

	use("mbbill/undotree")

	use("tpope/vim-fugitive")

	use({
		"VonHeikemen/lsp-zero.nvim",
		branch = "v2.x",
		requires = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" }, -- Required
			{ -- Optional
				"williamboman/mason.nvim",
				run = function()
					pcall(vim.cmd, "MasonUpdate")
				end,
			},
			{ "williamboman/mason-lspconfig.nvim" }, -- Optional

			-- Autocompletion
			{ "hrsh7th/nvim-cmp" }, -- Require

			{ "hrsh7th/cmp-nvim-lsp" }, -- Required
			{ "L3MON4D3/LuaSnip" }, -- Required
		},
	})

use('neovim/nvim-lspconfig')
use('jose-elias-alvarez/null-ls.nvim')
use('MunifTanjim/prettier.nvim')

-- MKARDOWN
-- install without yarn or npm
use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
})



-- TROUBLE
use('folke/trouble.nvim')
use('nvim-tree/nvim-web-devicons')

-- autotag
use('windwp/nvim-ts-autotag')
use('m4xshen/autoclose.nvim')

-- TODOist

use {
    "folke/todo-comments.nvim",
    requires = "nvim-lua/plenary.nvim",
    config = function()
      require("todo-comments").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
        -- TODO
      }
    end
  }

  -- TMUX / NVIM
  use('christoomey/vim-tmux-navigator')

  -- SPELLCHECKER
  use('kamykn/spelunker.vim')
  use('kamykn/popup-menu.nvim')

 -- use('williamboman/mason-lspconfig.nvim')
 -- use('williamboman/mason.nvim')

 -- use('leoluz/nvim-dap-go')
use 'ray-x/go.nvim'
use 'ray-x/guihua.lua' -- recommended if need floating window support


use { "catppuccin/nvim", as = "catppuccin" }

--  Nvim tree file visualizer
--use {
--    "nvim-tree/nvim-tree.lua", 
--    requires = "nvim-tree/nvim-web-devicons",
--}

-- auto comments
use {

    "numToStr/Comment.nvim",
    config = function()
        require("Comment").setup()
    end
}

-- use {
--    "m4xshen/hardtime.nvim",
--    requires = { 'MunifTanjim/nui.nvim', "nvim-lua/plenary.nvim" }
-- }
--
--
end)
