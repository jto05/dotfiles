return {
  "Shatur/neovim-session-manager",
  config = function()
    local config = require('session_manager.config')

    require('session_manager').setup({
      autoload_mode = config.AutoloadMode.Disabled,
      autosave_last_session = false,
      set_cwd = false,
    })

    local keymap = vim.keymap

    keymap.set("n", "<leader>ws", ":SessionManager save_current_session<CR>", { desc = "Save current session in CWR" })
    keymap.set("n", "<leader>wr", ":SessionManager load_last_session<CR>", { desc = "Load last session" })
    keymap.set("n", "<leader>wl", ":SessionManager load_session<CR>", { desc = "Load session" })
    keymap.set("n", "<leader>wd", ":SessionManager delete_session<CR>", { desc = "Delete session" })
  end
}
