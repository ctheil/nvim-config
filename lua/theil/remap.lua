vim.g.mapleader = " "

vim.keymap.set('n', '<leader>n', "%")

--MarkDown
vim.keymap.set("n", "<leader>md", ":MarkdownPreview<CR>")
vim.keymap.set("n", "<leader>mds", ":MarkdownPreviewStop<CR>")

-- EMMET
-- vim.keymap.set("i", "<C-a>", "<C-y>,")
vim.api.nvim_set_var('user_emmet_leader_key', '<C-a>')

--select lines then move with J and K
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

--vim.keymap.set("n", "Y", "yg$")
--
-- append below line to current
vim.keymap.set("n", "J", "mxJ`z")

-- control d and u to just half pages keeping cursor in same place
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- search terms stay in the middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>vwm", function()
	require("vim-with-me").StartVimWithMe()
end)

vim.keymap.set("n", "<leader>svwm", function()
	require("vim-with-me").StopVimWithMe()
end)

-- preserve coppied text over deleted paste
vim.keymap.set("x", "<leader>p", "\"_dp")

-- leader + y yanks into system clipboard -> copying between files
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>Y", "\"+Y")

-- delete to void register
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

-- dont ever press Q
vim.keymap.set("n", "Q", "<nop>")

--
-- vim.keymap.set("i", "<C-c>", "<Esc>")

-- tmux sessions ~fuzfind DOES NOT WORK WITHOUT tmux-sessionizer
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux new tmux-sessionizer<CR>")


-- cntrl k/j jump between errors
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
-- leader k/j jump between location lists???
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- set vim notify as default notifications
-- vim.notify = require("notify")
-- new filetype
-- vim.api.nvim_set_keymap("n", "<leader>n", ":% ", {noremap= true, silent=true})
--


-- vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w><Lead><Left><Left>

--function SaveFormatAndStepOut()
--    if vim.bo.filetype == 'go' then
--        return
--    end
--    if vim.bo.modifiable then
--        vim.cmd('w') -- save
--
--        -- Save cursor position
--        local saved_pos = vim.fn.getpos(".")
--
--        vim.cmd('Prettier') -- format
--
--        -- Restore cursor position after a delay
--        vim.defer_fn(function()
--            vim.fn.setpos('.', saved_pos)
--        end, 100) -- delay in milliseconds
--
--        -- Restore cursor position after a delay
--        vim.defer_fn(function()
--            vim.cmd('Ex') -- step out
--        end, 100) -- delay in milliseconds
--
--        --print("SaveFormatAndStepOut")
--    else 
--        print("Buffer is read-only. Cannot save, format and step out.")
--    end
--end
-- function SaveFormatAndStepOut()
--     if vim.bo.modifiable then
--         vim.cmd('w') -- save
--
--         if vim.bo.filetype ~= 'go' then
--             -- Save cursor position
--             local saved_pos = vim.fn.getpos(".")
--
--             vim.cmd('Prettier') -- format
--
--             -- Restore cursor position after a delay
--             vim.defer_fn(function()
--                 vim.fn.setpos('.', saved_pos)
--             end, 100) -- delay in milliseconds
--         end
--
--         -- Step out of the buffer after a delay
--         vim.defer_fn(function()
--             vim.cmd('Ex')
--         end, 200) -- delay in milliseconds
--
--     else 
--         print("Buffer is read-only. Cannot save, format and step out.")
--     end
-- end
--

function SaveAndFormat()
    if vim.bo.modifiable then
        vim.cmd('w') -- save

        if vim.bo.filetype ~= 'go' then
        -- Save cursor position
        local saved_pos = vim.fn.getpos(".")

        vim.cmd('Prettier') -- format
        end

        -- Restore cursor position after a delay
        vim.defer_fn(function()
            vim.fn.setpos('.', saved_pos)
        end, 100) -- delay in milliseconds

    else 
        print("Buffer is read-only. Cannot save, format and step out.")
    end
end

-- function create_new_file()
--     local new_file_name = vim.fn.input("Enter the new file name: ")
--     if new_file_name ~= "" then
--         vim.cmd('e ' .. new_file_name)
--     end
-- end
--
-- vim.api.nvim_set_keymap('n', '<leader>n', [[<Cmd>lua create_new_file()<CR>]], {noremap=true, silent=true})

--[[ vim.api.nvim_set_keymap('n', '<leader>pv', ':lua SaveFormatAndStepOut()<CR>', {noremap = true, silent = true}) ]]
vim.keymap.set("n", "<leader>pv", ":Ex<CR>")
--
-- vim.keymap.set({'n'}, 'C-f', function() require('lsp_signature').toggle_float_win()
-- end, {silent = true, noremap = true, desc = 'toggle signature'})

--
--
 
