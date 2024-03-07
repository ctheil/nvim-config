require('mason').setup()
require('mason-lspconfig').setup()
local lsp = require('lsp-zero')

lsp.preset("recommended")

lsp.ensure_installed({
	'tsserver',
	'eslint',
	'rust_analyzer',
    'cssls',
    'cssmodules_ls',
    'unocss',
    'emmet_language_server',
    'emmet_ls',
    "tailwindcss"
    --'gopls',
    --'golangci_lint_ls'
})

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}

cmp.setup({
    mapping = {
        ['<CR>'] = cmp.mapping.confirm({select=true}),
        ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
        -- ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    }
})

lsp.set_preferences({
	sign_icons = { }
})

lsp.on_attach(function(_, bufnr)
	-- see :help lsp-zero-keybindings
	-- to learn the available actions
	lsp.default_keymaps({buffer = bufnr})
	local opts = {buffer = bufnr, remap = false}
	
	vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
	vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
	vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
	vim.keymap.set("n", "<leader>vd", function() vim.lsp.buf.open_float() end, opts)
	vim.keymap.set("n", "[d", function() vim.lsp.buf.goto_next() end, opts)
	vim.keymap.set("n", "]d", function() vim.lsp.buf.goto_prev() end, opts)
	vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
	vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
	vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
	vim.keymap.set("n", "<leaver>hlp", function() vim.lsp.buf.signature_help() end, opts)

end)

lsp.skip_server_setup({'jdtls'})

-- (Optional) Configure lua language server for neovim
--require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())
require("mason").setup({
	PATH = "prepend", -- "skip" seems to cause spawning error
})

lsp.configure('tailwindcss', {
  filetypes = { 'html', 'pug', 'javascript', 'typescript', 'css', 'sass', 'scss', 'less', 'jsx', 'tsx', 'typescriptreact', 'javscriptreact' }, -- Add 'pug' to the list
  -- any other server-specific settings
})
lsp.setup()
