-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'tokyonight_night'
config.window_decorations = 'RESIZE'
config.hide_tab_bar_if_only_one_tab = true

-- and finally, return the configuration to wezterm
return config