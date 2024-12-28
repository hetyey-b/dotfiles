vim.keymap.set("n", "<C-n>", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

vim.keymap.set("n", "<leader>\"", ":split<CR>")
vim.keymap.set("n", "<leader>%", ":vsplit<CR>")

vim.keymap.set("n", "<tab>", ":bnext<CR>")
vim.keymap.set("n", "<s-tab>", ":bprevious<CR>")
vim.keymap.set("n", "<C-w>", ":bdelete<CR>")

vim.keymap.set("n", "<leader>dd", "Odebugger;<Esc>j")
