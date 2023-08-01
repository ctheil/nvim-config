--local tmux = require("vim-tmux-navigator")


vim.keymap.set("n", "<C-H>", ":TmuxNavigateLeft<CR>")
vim.keymap.set("n", "<C-L>", ":TmuxNavigateRight<CR>")
vim.keymap.set("n", "<C-J>", ":TmuxNavigateUp<CR>")
vim.keymap.set("n", "<C-K>", ":TmuxNavigateDown<CR>")


--vim.keymap.set("n", "<C-t>", function () ui.nav_file(2) end)
--vim.keymap.set("n", "<C-n>", function () ui.nav_file(3) end)
--vim.keymap.set("n", "<C-s>", function () ui.nav_file(4) end)


