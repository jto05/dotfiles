-- Pull in the wezterm API
local wezterm = require 'wezterm'

local config = wezterm.config_builder()

-- font and color scheme
config.font = wezterm.font("CaskaydiaMono Nerd Font", {weight="Regular", stretch="Normal", style="Normal"})
config.font_size = 15
config.color_scheme = 'Gruvbox Dark (Gogh)'
config.window_background_opacity = 0.9
config.initial_cols = 67
config.initial_rows = 50

-- window
config.enable_tab_bar = false
config.window_decorations = 'RESIZE'

-- cursor
config.default_cursor_style = 'SteadyBlock'

-- Finally, return the configuration to wezterm:
return config
