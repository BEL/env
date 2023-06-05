require("trouble").setup {
  auto_fold = true,
  auto_preview = false,
}
vim.keymap.set("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>",
  {silent = true, noremap = true}
)
