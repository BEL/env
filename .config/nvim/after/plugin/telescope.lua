local telescope = require('telescope')
local builtin   = require('telescope.builtin')
local opts      = { noremap = true, silent = true }

telescope.load_extension('dap')
telescope.load_extension('refactoring')
local dap         = telescope.extensions.dap
local refactoring = telescope.extensions.refactoring

telescope.setup()

vim.keymap.set('n', '<leader>ps', function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
vim.keymap.set('n', '<Leader><tab>', builtin.commands,opts)
vim.keymap.set('n', '<leader>pf',    builtin.find_files, opts)
vim.keymap.set('n', '<leader>vh',    builtin.help_tags, opts)
vim.keymap.set('n', '<Leader>bf',    builtin.git_files,opts)
vim.keymap.set('n', '<Leader>bb',    builtin.buffers,opts)
vim.keymap.set('n', '<Leader>bo',    builtin.oldfiles,opts)
vim.keymap.set('n', '<Leader>bg',    builtin.live_grep,opts)
vim.keymap.set('n', '<Leader>gb',    builtin.git_branches,opts)
vim.keymap.set('n', '<leader>dtc',   dap.commands, opts)
vim.keymap.set('n', '<leader>dto',   dap.configurations,opts)
vim.keymap.set('n', '<leader>dtb',   dap.list_breakpoints,opts)
vim.keymap.set('n', '<leader>dtv',   dap.variables, opts)
vim.keymap.set('n', '<leader>dtf',   dap.frames,opts)
vim.keymap.set('v', '<leader>rr',    refactoring.refactors,{ noremap = true })
