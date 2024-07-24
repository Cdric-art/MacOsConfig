local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.font = wezterm.font("Hack Nerd Font Mono", { weight = "Bold" })
config.font_size = 14

config.color_scheme = "Catppuccin Mocha"
config.window_background_opacity = 0.9
config.macos_window_background_blur = 6

config.enable_tab_bar = false
config.window_decorations = "RESIZE"

return config
