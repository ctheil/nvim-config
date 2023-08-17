local go = require('go').setup()

require('go.format').gofmt()
require('go.format').goimport()

local format_sync_grp = vim.api.nvim_create_augroup("GoImport", {})
vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*.go",
    callback = function ()
        require('go.format').goimport()
    end,
    group = format_sync_grp,
})

