return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- Mason
  use {
    "williamboman/mason.nvim"
    --commit = '9048bdb97b53210bd19c6423e13e9945b424693a'
  }
  use {
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  }

  -- Telescope
  use { "nvim-telescope/telescope.nvim",
    requires = {
      { 'nvim-lua/plenary.nvim' },
      { "nvim-telescope/telescope-dap.nvim" }
    }
  }
  use {
    "folke/trouble.nvim",
    config = function()
      require("trouble").setup {
        icons = false,
      }
    end
  }
  use { "terrortylor/nvim-comment",
    config = function()
      require('nvim_comment').setup()
    end
  }
  use { "folke/which-key.nvim",
    config = function()
      require('which-key').setup()
    end
  }
  use { "mxsdev/nvim-dap-vscode-js", module = { "dap-vscode-js" } }
  use {
      "microsoft/vscode-js-debug",
      opt = true,
      run = "npm install --legacy-peer-deps && npx gulp vsDebugServerBundle && mv dist out" 
  }
  use {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"}
  use {
    "folke/tokyonight.nvim",
    "nvim-treesitter/nvim-treesitter-context",
    "tpope/vim-fugitive",
    "laytan/cloak.nvim",
    "junegunn/vim-easy-align",
    "folke/todo-comments.nvim",
    "numtostr/FTerm.nvim",
    "lewis6991/gitsigns.nvim",

    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-cmdline",
    "hrsh7th/nvim-cmp",

    "SirVer/ultisnips",
    "quangnguyen30192/cmp-nvim-ultisnips",
    "jose-elias-alvarez/null-ls.nvim",

    "theprimeagen/refactoring.nvim",
    "ray-x/lsp_signature.nvim",

    "mfussenegger/nvim-dap",
    "rcarriga/nvim-dap-ui",
    "theHamsta/nvim-dap-virtual-text",
    "nvim-telescope/telescope-dap.nvim",

    "ray-x/go.nvim",
    "leoluz/nvim-dap-go"
  }
end)
