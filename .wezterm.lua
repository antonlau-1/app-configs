local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.font = wezterm.font("BlexMono Nerd Font Mono")
config.font_size = 11

config.window_background_opacity = 0.7
config.macos_window_background_blur = 10

return config
