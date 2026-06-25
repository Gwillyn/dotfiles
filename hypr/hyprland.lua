-- ~/.config/hypr/hyprland.lua
-- Main Hyprland Lua config.
-- Split version matching your old file layout.

require("monitors")
require("bindings")
require("yazi")

-- Environment
hl.env("EDITOR", "nvim")
hl.env("VISUAL", "nvim")

-- Autostart
hl.on("hyprland.start", function()
	hl.exec_cmd("waybar")
	hl.exec_cmd("nm-applet --indicator")
	hl.exec_cmd("swaybg -i ~/.config/aether/theme/backgrounds/wall.jpg -m fill")
	hl.exec_cmd("gsettings set org.gnome.desktop.interface color-scheme prefer-dark")
end)

-- Main settings
hl.config({
	exec_once = {
		"gnome-keyring-daemon --start --components=secrets,ssh",
	},
	general = {
		gaps_in = 2,
		gaps_out = 4,
		border_size = 1,
		resize_on_border = true,

		col = {
			active_border = "rgb(ffffff)",
		},
	},

	group = {
		col = {
			border_active = "rgb(ffffff)",
		},
	},

	input = {
		repeat_rate = 80,
		repeat_delay = 180,
		kb_layout = "us",
		kb_options = "altwin:swap_alt_win",
		follow_mouse = 1,

		touchpad = {
			natural_scroll = false,
			tap_to_click = true,
		},
	},

	decoration = {
		-- rounding = 8,
	},

	animations = {
		enabled = false,
	},

	cursor = {
		no_warps = true,
	},
})
