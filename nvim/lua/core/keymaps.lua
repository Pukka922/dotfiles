local map = vim.keymap.set

vim.g.mapleader = " "

-- navigation
map("n", "<C-h>", "<C-w>h", {
  desc = "switch window left"
})
map("n", "<C-l>", "<C-w>l", {
  desc = "switch window right"
})

--nvim tree
map("n", "<leader>e", "<cmd>NvimTreeFocus<CR>", {
  desc = "nvimtree focus window"
})
map("n", "<C-n>", "<cmd>NvimTreeToggle<CR>", {
  desc = "nvim tree toggle window"
})

-- bufferline
map("n", "<tab>", ":bnext<CR>", {
  desc = "buffer goto next"
})
map("n", "<S-tab>", ":bprevious<CR>", {
  desc = "buff goto prev"
})
map("n", "<leader>x", ":bd<CR>", {
  desc = "buff close"
})

-- lsp
map("n", "<leader>i", vim.diagnostic.open_float, {
  desc = "show err/warn information"
})

map("n", "gd", vim.lsp.buf.definition, {
  desc = "go to definition"
})
