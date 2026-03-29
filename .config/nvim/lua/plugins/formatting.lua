return {
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
}
