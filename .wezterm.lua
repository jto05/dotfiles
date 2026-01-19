-- Pull in the wezterm API
local wezterm = require 'wezterm'

local config = wezterm.config_builder()

-- STYLE
config.window_decorations = 'NONE'
config.font_size = 14
config.color_scheme = 'catppuccin-mocha'

-- Finally, return the configuration to wezterm:
return config
