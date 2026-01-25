-- Pull in the wezterm API
local wezterm = require 'wezterm'

local config = wezterm.config_builder()

-- font and color scheme
config.font_size = 14
config.color_scheme = 'Gruvbox Dark (Gogh)'
config.window_background_opacity = 0.9

-- window
config.enable_tab_bar = false
config.window_decorations = 'RESIZE'

-- cursor
config.default_cursor_style = 'SteadyBlock'

-- Finally, return the configuration to wezterm:
return config
