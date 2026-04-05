require("catppuccin").setup({
  flavour = "frappe"
})

vim.cmd.colorscheme("catppuccin")

require("bufferline").setup({
  options = {
    mode = "buffers",
    diagnostics = "nvim_lsp",
    seperator_style = "slant",
    always_show_bufferline = true,
    show_buffer_close_icons = true,
    show_close_icon = false
  }
})

require("nvim-tree").setup({
  filters = { dotfiles = false },
  disable_netrw = true,
  hijack_cursor = true,
  update_focused_file = {
    enable = true,
    update_root = false,
  },
  view = {
    width = 30,
    preserve_window_proportions = true,
  },
  renderer = {
    root_folder_label = false,
    highlight_git = true,
    indent_markers = { enable = true },
    icons = {
      glyphs = {
        default = "󰈚",
        folder = {
          default = "",
          empty = "",
          empty_open = "",
          open = "",
          symlink = "",
        },
        git = { unmerged = "" },
      }
    }
  }
});

require('lualine').setup({})

require("toggleterm").setup({
  direction = "horizonatal",
  size = 15,
  open_mapping = nil
})
