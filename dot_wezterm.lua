local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.color_scheme = "catppuccin-mocha"
config.window_decorations = "RESIZE"
config.enable_tab_bar = false
config.font_size = 13
config.keys = {
	-- Make Option-Left equivalent to Alt-b which many line editors interpret as backward-word
	{ key = "LeftArrow", mods = "CMD", action = wezterm.action({ SendString = "\x1bb" }) },
	-- Make Option-Right equivalent to Alt-f; forward-word
	{ key = "RightArrow", mods = "CMD", action = wezterm.action({ SendString = "\x1bf" }) },
}

return config
