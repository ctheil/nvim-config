require'nvim-treesitter.configs'.setup {
  ensure_installed = {  "html","javascript", "typescript", "vim", "vimdoc", "query" },


  sync_install = false,

  auto_install = true,

  highlight = {
    enable = true,


    additional_vim_regex_highlighting = false,
  },
}

require('nvim-ts-autotag').setup()
