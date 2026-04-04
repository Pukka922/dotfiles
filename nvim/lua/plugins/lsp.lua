local lsp_servers = {
  lua_ls = {},
  html = {},
  ts_ls = {},
  astro = {},
  gopls = {
    cmd = { "gopls" },
    filetypes = { "go", "gomod", "gowork", "gotmpl" },
  },
}


require('mason').setup({})

require("mason-lspconfig").setup({
  ensure_installed = {
    "html",
    "gopls",
    "lua_ls",
    "ts_ls",
    "astro"
  }
})

for name, opts in pairs(lsp_servers) do
  vim.lsp.config(name, opts)
  vim.lsp.enable(name)
end

-- format on save
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function()
    local buf = vim.api.nvim_get_current_buf()
    local clients = vim.lsp.get_clients({ bufnr = buf })
    for _, client in ipairs(clients) do
      if client.server_capabilities.documentFormattingProvider then
        vim.lsp.buf.format({ bufnr = buf })
        break
      end
    end
  end,
})
