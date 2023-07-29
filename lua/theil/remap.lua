vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", ":SaveFormatAndStepOut<CR>")

--MarkDown
vim.keymap.set("n", "<leader>md", ":MarkdownPreview<CR>")
vim.keymap.set("n", "<leader>mds", ":MarkdownPreviewStop<CR>")

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
vim.keymap.set("i", "<C-c>", "<Esc>")

-- tmux sessions ~fuzfind DOES NOT WORK WITHOUT tmux-sessionizer
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")


-- cntrl k/j jump between errors
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
-- leader k/j jump between location lists???
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w><Lead><Left><Left>

function SaveFormatAndStepOut()
    if vim.bo.modifiable then

        vim.cmd('w') -- save
        vim.cmd('Prettier') -- format
        vim.cmd('Ex') -- step out
    else 
        print("Buffer is read-only. Cannot save, format and step out.")
    end
end
