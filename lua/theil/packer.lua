
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

	-- use({ "rose-pine/neovim", as = "rose-pine" })

	-- vim.cmd("colorscheme rose-pine")

	use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })
--     use {
-- "nvim-treesitter/nvim-treesitter",
-- run = ":TSUpdate",
-- cmd = {'TSInstall', 'TSUpdate'}
--     }
	use("nvim-treesitter/nvim-treesitter-context" )

	use("theprimeagen/harpoon")

	use("mbbill/undotree")

    use {
"tpope/vim-fugitive",
    }

	use({
		"VonHeikemen/lsp-zero.nvim",
		branch = "v2.x",
		requires = {
			{ -- Optional
				"williamboman/mason.nvim",
				run = function()
					pcall(vim.cmd, "MasonUpdate")
				end,
			},
			{ "williamboman/mason-lspconfig.nvim" }, -- Optional

			-- Autocompletion
			--{ "hrsh7th/nvim-cmp" }, -- Require

			{ "hrsh7th/cmp-nvim-lsp" }, -- Required
			{ "L3MON4D3/LuaSnip" }, -- Required
		},
	})

-- NOTE: NULL-LS depreciated/archived
use('jose-elias-alvarez/null-ls.nvim')
use {
'MunifTanjim/prettier.nvim',
}

-- MKARDOWN
-- install without yarn or npm
use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
    event = "BufRead *.md"
})



-- TROUBLE
use('folke/trouble.nvim')
use('nvim-tree/nvim-web-devicons')

-- autotag
use('windwp/nvim-ts-autotag')
use('m4xshen/autoclose.nvim')

-- TODOist
-- TODO: This is a test

use {
    "folke/todo-comments.nvim",
    requires = "nvim-lua/plenary.nvim",
    config = function()
      require("todo-comments").setup()
    end,
    event = "BufReadPost",
  }

  -- TMUX / NVIM
  use('christoomey/vim-tmux-navigator')


  -- SPELLCHECKER
  use {
'kamykn/spelunker.vim',
event = "BufReadPost",
  }
  use {
'kamykn/popup-menu.nvim',
event = "BufReadPost",
  }

use {
 'ray-x/go.nvim',
 event = "BufRead *.go"
}
use {
'ray-x/guihua.lua',
 event = "BufRead *.go"
}


use { "catppuccin/nvim", as = "catppuccin" }


-- auto comments
use {

    "numToStr/Comment.nvim",
    config = function()
        require("Comment").setup()
    end,
    event = "BufReadPost"
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
use {
'norcalli/nvim-colorizer.lua',
}

-- indent lines
use {
"lukas-reineke/indent-blankline.nvim",
}

-- JAVA
use {
"mfussenegger/nvim-jdtls",
event = "BufRead *.java"
}
use {
"mfussenegger/nvim-dap",
event = "BufRead *.java"
}
use {
"mfussenegger/nvim-dap-ui",
event = "BufRead *.java"
}


-- nvim cmp
use('neovim/nvim-lspconfig')
use('hrsh7th/cmp-nvim-lsp')
use('hrsh7th/cmp-buffer')
use('hrsh7th/cmp-path')
use('hrsh7th/cmp-cmdline')
use('hrsh7th/nvim-cmp')

-- NOICE
use{ 'folke/noice.nvim',
    requires = {
        -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
    "MunifTanjim/nui.nvim",
    -- OPTIONAL:
    --   `nvim-notify` is only needed, if you want to use the notification view.
    --   If not available, we use `mini` as the fallback
    "rcarriga/nvim-notify",
}
}


-- gitgutter
use {
 'airblade/vim-gitgutter',
event = "BufReadPost"
}

--lualine
use {
    'nvim-lualine/lualine.nvim',
    requires = {'nvim-tree/nvim-web-devicons', opt = true}
}


 -- FZF
 use 'nvim-telescope/telescope-fzf-native.nvim'

 -- emmet
 use {
 'mattn/emmet-vim',
 event = "BufRead *.tsx *.jsx *.ts *.js *.html"

 }
 vim.g.user_emmet_leader_key = '<C-a>'

 -- surround
 use {
 'kylechui/nvim-surround',
 }


use {
  "ray-x/lsp_signature.nvim",
}

use({
  "epwalsh/obsidian.nvim",
  tag = "*",  -- recommended, use latest release instead of latest commit
  requires = {
    -- Required.
    "nvim-lua/plenary.nvim",

    -- see below for full list of optional dependencies 👇
  },
  config = function()
    require("obsidian").setup({
      workspaces = {
        {
          name = "personal",
          path = "~/documents/notes/personal",
        },
        {
          name = "work",
          path = "~/documents/notes/work",
        },
      },

      -- see below for full list of options 👇
    })
  end,
})
-- PUG
use 'digitaltoad/vim-pug'

use({
    "dNitro/vim-pug-complete",
    ft = "pug"
})

end)

