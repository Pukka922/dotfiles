require("nvim-treesitter").install({
  "lua",
  "html",
  "css",
  "javascript",
  "typescript",
  "tsx",
  "astro"
})

require("nvim-ts-autotag").setup({
  enable_close = true,
  enable_rename = true
})

vim.schedule(function()
  vim.cmd("TSUpdate")
end
)
