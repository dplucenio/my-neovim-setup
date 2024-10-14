-- Custom mappings
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>w", ":w<CR>")
vim.keymap.set("n", "<leader>q", ":q<CR>")
vim.keymap.set("n", "<leader>0", ":tabonly<CR>")
vim.keymap.set("n", "<leader>1", ":tabprevious<CR>")
vim.keymap.set("n", "<leader>2", ":tabnext<CR>")
vim.keymap.set("n", "<leader>li", ":set list!<CR>")
vim.keymap.set("n", "<leader>h", ":set hlsearch!<CR>")

vim.keymap.set("n", "<leader>g", ":Ge:<CR>")

vim.keymap.set("n", "<leader>to", ":NvimTreeOpen<CR>")
vim.keymap.set("n", "<leader>tt", ":NvimTreeFindFile<CR>")

vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>")
vim.keymap.set("n", "<leader>fb", ":Telescope buffers<CR>")
vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>")


