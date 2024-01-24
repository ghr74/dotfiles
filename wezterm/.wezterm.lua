-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = "Monokai Pro (Gogh)"
-- config.font = wezterm.font("CaskaydiaCove NF")
config.font = wezterm.font("Fira Code")

-- Background config
-- config.window_background_opacity = 0
-- config.win32_system_backdrop = "Acrylic"
-- config.background = {
-- 	{
-- 		source = { File = "c:/users/nex/gauss.png" },
-- 		height = 256,
-- 		width = 256,
-- 		repeat_x = "Repeat",
-- 		repeat_y = "Repeat",
-- 		opacity = 0.3,
-- 		hsb = { brightness = 0.6 },
-- 	},
-- 	{
-- 		source = { Color = "#001a4d" },
-- 		height = "100%",
-- 		width = "100%",
-- 		opacity = 0.75,
-- 	},
-- 	{
-- 		source = { File = "c:/users/nex/blur.png" },
-- 		height = 256,
-- 		width = 256,
-- 		repeat_x = "Repeat",
-- 		repeat_y = "Repeat",
-- 		opacity = 0.1,
-- 		hsb = { brightness = 0.2 },
-- 	},
-- }

-- Configure key bindings (hopefully)
local act = wezterm.action

config.keys = {
	{
		key = "c",
		mods = "CTRL",
		action = act.SendKey({
			key = "Escape",
		}),
	},
	{
		key = "Escape",
		action = act.SendKey({
			key = "c",
			mods = "CTRL",
		}),
	},
}

-- and finally, return the configuration to wezterm
return config
