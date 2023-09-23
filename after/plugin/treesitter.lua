require'nvim-treesitter.configs'.setup {
  ensure_installed = {  "html", "javascript", "typescript", "vim", "vimdoc", "query", "java", "go" },


  sync_install = false,

  auto_install = true,

  highlight = {
    enable = true,


    additional_vim_regex_highlighting = false,
  },

  autotag = {
    enable = true,
  }
}

require("nvim-ts-autotag").setup()

-- require('nvim-ts-autotag').setup()
-- local filetypes = {
--     'html', 'javascript', 'typescript', 'javascriptreact', 'typescriptreact', 'svelte', 'vue', 'tsx', 'jsx', 'rescript',
--     'xml',
--     'php',
--     'markdown',
--     'astro', 'glimmer', 'handlebars', 'hbs'
-- }
-- local skip_tags = {
--   'area', 'base', 'br', 'col', 'command', 'embed', 'hr', 'img', 'slot',
--   'input', 'keygen', 'link', 'meta', 'param', 'source', 'track', 'wbr','menuitem'
-- }


