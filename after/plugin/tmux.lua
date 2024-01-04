--local tmux = require("vim-tmux-navigator")


vim.keymap.set("n", "<C-h>", ":TmuxNavigateLeft<CR>")
vim.keymap.set("n", "<C-l>", ":TmuxNavigateRight<CR>")
vim.keymap.set("n", "<C-j>", ":TmuxNavigateUp<CR>")
vim.keymap.set("n", "<C-k>", ":TmuxNavigateDown<CR>")


--vim.keymap.set("n", "<C-t>", function () ui.nav_file(2) end)
--vim.keymap.set("n", "<C-n>", function () ui.nav_file(3) end)
--vim.keymap.set("n", "<C-s>", function () ui.nav_file(4) end)


