return {
  "echasnovski/mini.nvim",
  version = "*",
  config = function()
    -- general setup
    require("mini.comment").setup()
    require("mini.pairs").setup()
    require("mini.ai").setup()
    require("mini.statusline").setup()
    require("mini.splitjoin").setup()

    -- mappings
    local keymap = vim.keymap
  end,
}
