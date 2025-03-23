local wezterm = require("wezterm")

local config = wezterm.config_builder()

config = {
	font = wezterm.font("BlexMono Nerd Font Mono", { weight = "Regular" }),
	font_size = 11,
	window_background_opacity = 0.7,
	macos_window_background_blur = 10,
	enable_tab_bar = false,
}

return config
