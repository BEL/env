local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', '<leader>tt', '<CMD>lua require("FTerm").toggle()<CR>', opts)
map('t', '<leader>tt', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>', opts)
require 'FTerm'.setup({
  blend = 18,
  dimensions = {
    height = 0.4,
    width = 0.95,
    x = 0.3,
    y = 0.1
  }
})
