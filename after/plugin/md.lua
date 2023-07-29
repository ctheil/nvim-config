vim.api.nvim_exec([[
    augroup WrapLineInMDFile
       autocmd!
       autocmd BufRead,BufNewFile *.md  setlocal wrap linebreak nolist
    augroup END
]], false)
