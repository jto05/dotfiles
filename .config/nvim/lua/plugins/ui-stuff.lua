return {
  -- { -- Bufferline
  --   'akinsho/bufferline.nvim',
  --   version = "*",
  --   enbaled = false,
  --   dependencies = 'nvim-tree/nvim-web-devicons',
  --   config = function()
  --     require("bufferline").setup()
  --   end
  -- },
  { -- Better command prompt
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      -- add any options here
    },
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      "MunifTanjim/nui.nvim",
    }
  },
  { -- Better todo comments
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  },
  { -- Shows keybindings visually
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 500
    end,
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
  },
  { -- Indent lines (DISABLED)
    "lukas-reineke/indent-blankline.nvim",
    main = 'ibl',
    enabled = false,
    opts = {},
    config = function()
      require('ibl').setup()
    end

  }

}
