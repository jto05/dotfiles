return {
  {
    "stevearc/conform.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      local conform = require("conform")

      conform.setup({
        formatteres_by_ft = {
          lua = { "stylua" },
          go = { "gofumpt" },
          python = { "ruff" },
        },

        format_on_save = {
          lsp_fallback = true,
          async = false,
          timeout_ms = 1000,
        }
      })
    end
  },

  {
    "kevinhwang91/nvim-ufo",
    dependencies = {
      { "kevinhwang91/promise-async" },
    },

    config = function()
      vim.o.foldlevel = 99
      vim.o.foldlevelstart = 99
      vim.o.foldenable = true
      require('ufo').setup({
          provider_selector = function(bufnr, filetype, buftype)
              return {'treesitter', 'indent'}
          end
      })
    end
  }

}
