local map = vim.keymap.set


vim.g.mapleader = " "

-- navigation
map("n", "<C-h>", "<C-w>h", {
  desc = "switch window left"
})
map("n", "<C-l>", "<C-w>l", {
  desc = "switch window right"
})
map("n", "<C-j>", "<C-w>j", {
  desc = "switch window down" })
map("n", "<C-k>", "<C-w>k", {
  desc = "switch window up"
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

map("n", "<leader>x", function()
  local current = vim.api.nvim_get_current_buf()

  if vim.bo[current].modified then
    error("Buffer has unsaved changes")
    return
  end


  local buffers = vim.fn.getbufinfo({ buflisted = 1 })
  local next_buf = nil

  for _, buf in ipairs(buffers) do
    if buf.bufnr ~= current and vim.bo[buf.bufnr].buftype == "" then
      next_buf = buf.bufnr
      break
    end
  end


  if next_buf then
    vim.cmd("bprevious")
  else
    vim.cmd("NvimTreeFocus")
  end


  vim.cmd("bd " .. current)
end, {
  desc = "buff close"
})


-- lsp
map("n", "<leader>i", vim.diagnostic.open_float, {
  desc = "show err/warn information"
})

map("n", "gd", vim.lsp.buf.definition, {
  desc = "go to definition"
})

-- toggleterm
map("n", "<leader>h", "<cmd>ToggleTerm direction=horizontal<CR>", {
  desc = "Togge terminal horizontal"
})

map("t", "<C-x>", function()
  vim.cmd("stopinsert")
end)
