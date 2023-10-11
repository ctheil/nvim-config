
-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.2",
		-- or                            , branch = '0.1.x',
		requires = { { "nvim-lua/plenary.nvim" }, {'sharkdp/fd'} },
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
      require("todo-comments").setup()
    end
  }

  -- TMUX / NVIM
  use('christoomey/vim-tmux-navigator')

  -- SPELLCHECKER
  use('kamykn/spelunker.vim')
  use('kamykn/popup-menu.nvim')

use 'ray-x/go.nvim'
use 'ray-x/guihua.lua' -- recommended if need floating window support


use { "catppuccin/nvim", as = "catppuccin" }


-- auto comments
use {

    "numToStr/Comment.nvim",
    config = function()
        require("Comment").setup()
    end
}

-- WhichKey
use {
  "folke/which-key.nvim",
  config = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
    require("which-key").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  end
}

-- colorizer
use('norcalli/nvim-colorizer.lua')

-- indent lines
use("lukas-reineke/indent-blankline.nvim")

-- JAVA
use("mfussenegger/nvim-jdtls")
use("mfussenegger/nvim-dap")
use("mfussenegger/nvim-dap-ui")

-- startupscreen

use {
    'goolord/alpha-nvim',
    requires = { 'nvim-tree/nvim-web-devicons' },
    config = function ()
        require'alpha'.setup(require'alpha.themes.startify'.config)
    end
}

-- nvim cmp
use 'hrsh7th/cmp-nvim-lsp'
use 'hrsh7th/cmp-buffer'
use 'hrsh7th/cmp-path'
use 'hrsh7th/cmp-cmdline'
use 'hrsh7th/nvim-cmp'

-- gitgutter
use 'airblade/vim-gitgutter'

--lualine
use {
    'nvim-lualine/lualine.nvim',
    requires = {'nvim-tree/nvim-web-devicons', opt = true}
}

-- nvim-multi-cursor
-- <C-n>
 use 'mg979/vim-visual-multi'

 -- FZF
 use 'nvim-telescope/telescope-fzf-native.nvim'

 -- emmet
 use 'mattn/emmet-vim'
 vim.g.user_emmet_leader_key = '<C-a>'

 -- surround
 use 'kylechui/nvim-surround'

 -- leetcode

use {
    'kawre/leetcode.nvim', 
    requires = {
        "nvim-treesitter/nvim-treesitter",
        "nvim-telescope/telescope.nvim",
        "nvim-lua/plenary.nvim", -- required by telescope
        "MunifTanjim/nui.nvim",

        -- optional
        "nvim-tree/nvim-web-devicons",

        -- recommended
        -- "rcarriga/nvim-notify"
    }
}
--NEORG
use  {
    "nvim-neorg/neorg",
    ft = "neorg",
    after = "nvim-treesitter",
    config = function()
    retuire("neorg").setup {
        load = {
            ["core.defaults"] = {}, -- loads default behavior
            ["core.concealer"] = {}, -- addds prety icons to docs
            ["core.dirman"] = { -- manages neorg workspaces
                config = {
                    workspaces = {
                        notes = "~/notes"
                    },
                },
            },
        }
    }
end,
run = ":Neorg sync-parsers",
requires = "nvim-lua/plenary.nvim",

}

end)
