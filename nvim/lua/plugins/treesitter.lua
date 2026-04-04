require("nvim-treesitter").setup({
  ensure_installed = {
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "astro"
  },
  highlight = { enable = true},
  indent = { enable = true }
})

require("nvim-ts-autotag").setup({
  enable_close = true,
  enable_rename = true
})

vim.schedule(function()
    vim.cmd("TSUpdate")
  end
)
