-- lewis6991/gitsigns.nvim
local on_attach = function(bufnr)
  local opts = { noremap = true, silent = true }
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>gs', '<cmd>lua require"gitsigns".stage_hunk()<CR>',opts)
end
require('gitsigns').setup {
  on_attach = on_attach
}
