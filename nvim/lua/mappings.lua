require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("v", "J", ":m '>+1<CR>gv=gv'")
map("v", "K", ":m '>-2<CR>gv=gv'")

map("n", "J", "mzJ`z")

map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

map("n", "<leader>y", "\"+y")
map("v", "<leader>y", "\"+y")
map("n", "<leader>Y", "\"+Y")

map("n", "<leader>d", "\"_d")
map("v", "<leader>d", "\"_d")

map("n", "<leader>\"", ":split<CR>")
map("n", "<leader>%", ":vsplit<CR>")

map("n", "<leader>db", "Odebugger;<Esc>j")
