return {
  cmd = { 'clangd', '--background-index' },
  root_markers = { 'compile_commands.json', 'compile_flags.txt' },
  filetypes = { 'c', 'cpp', 'objc', 'objcpp' },
  -- Further settings can be added here, e.g., for specific clangd options
  -- settings = {
  --   Clangd = {
  --     arguments = {
  --       '-std=c++20',
  --     },
  --   },
  -- },
}
