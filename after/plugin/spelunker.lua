-- Enable spelunker.vim.
vim.g.enable_spelunker_vim = 1

-- Enable spelunker.vim on readonly files or buffer.
vim.g.enable_spelunker_vim_on_readonly = 0

-- Check spelling for words longer than set characters.
vim.g.spelunker_target_min_char_len = 4

-- Max amount of word suggestions.
vim.g.spelunker_max_suggest_words = 15

-- Max amount of highlighted words in buffer.
vim.g.spelunker_max_hi_words_each_buf = 100

-- Spellcheck type.
vim.g.spelunker_check_type = 1

-- Highlight type.
vim.g.spelunker_highlight_type = 1

-- Options to disable word checking.
vim.g.spelunker_disable_uri_checking = 1
vim.g.spelunker_disable_email_checking = 1
vim.g.spelunker_disable_account_name_checking = 1
vim.g.spelunker_disable_acronym_checking = 1
vim.g.spelunker_disable_backquoted_checking = 1
vim.g.spelunker_disable_auto_group = 1

-- Create own custom autogroup to enable spelunker.vim for specific filetypes.
vim.api.nvim_exec([[
  augroup spelunker
    autocmd!
    autocmd BufWinEnter,BufWritePost *.vim,*.js,*.jsx,*.json,*.md call spelunker#check()
    autocmd CursorHold *.vim,*.js,*.jsx,*.json,*.md call spelunker#check_displayed_words()
  augroup END
]], false)

-- Override highlight group name of incorrectly spelled words.
vim.g.spelunker_spell_bad_group = 'SpelunkerSpellBad'
vim.g.spelunker_complex_or_compound_word_group = 'SpelunkerComplexOrCompoundWord'

-- Override highlight setting.
vim.api.nvim_command("highlight SpelunkerSpellBad cterm=underline ctermfg=247 gui=underline guifg=#9e9e9e")
vim.api.nvim_command("highlight SpelunkerComplexOrCompoundWord cterm=underline ctermfg=NONE gui=underline guifg=NONE")

