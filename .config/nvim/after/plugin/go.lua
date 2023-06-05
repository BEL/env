-- ray-x/go.nvim
require("go").setup()

-- leoluz/nvim-dap-go
local dap = require("dap-go")
dap.setup {
  dap_configurations = {
    {
      type = "go",
      name = "Attach remote",
      mode = "remote",
      request = "attach",
    },
    {
      name = "Connect to external session",
      type = "go",
      debugAdapter = "dlv-dap", -- `legacy` by default
      request = "attach",
      mode = "remote",
      port = 38697,
      host = "", -- can skip for localhost
    },
  }
}
