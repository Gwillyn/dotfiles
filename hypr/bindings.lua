-- ~/.config/hypr/bindings.lua

local terminal = "kitty"
local menu = "tofi-drun"
local mainMod = "SUPER"

-- Helpers for old Hyprland dispatches when the Lua helper name is uncertain.
local function dispatch(cmd)
	return hl.dsp.exec_cmd("hyprctl dispatch " .. cmd)
end

-- Hold Super and drag with left mouse button
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })

-- Optional: Super + right mouse resize, from the default Lua config
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- App / system keybinds
hl.bind(mainMod .. " + RETURN", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + M", dispatch("exit"))
hl.bind(mainMod .. " + W", hl.dsp.window.close())

hl.bind(mainMod .. " + SHIFT + F", hl.dsp.exec_cmd("kitty -e yazi"))
hl.bind(mainMod .. " + SPACE", hl.dsp.exec_cmd(menu))
hl.bind(mainMod .. " + SHIFT + N", hl.dsp.exec_cmd("kitty -e nvim"))
hl.bind(mainMod .. " + SHIFT + A", hl.dsp.exec_cmd("gtk-launch chatgpt"))
hl.bind(mainMod .. " + SHIFT + X", hl.dsp.exec_cmd("gtk-launch x"))
hl.bind(mainMod .. " + CTRL + B", hl.dsp.exec_cmd("kitty --class float -e bluetui"))
hl.bind(mainMod .. " + CTRL + X", hl.dsp.exec_cmd("kitty --class float -e wifitui"))
hl.bind(mainMod .. " + SHIFT + O", hl.dsp.exec_cmd("eclipse"))
hl.bind(mainMod .. " + CTRL + M", hl.dsp.exec_cmd("~/.local/bin/toggle-touchpad"))
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.exec_cmd("spotify-launcher"))
hl.bind(mainMod .. " + CTRL + V", hl.dsp.exec_cmd("kitty --class float -e vpn-connect"))
hl.bind(mainMod .. " + CTRL + P", hl.dsp.exec_cmd("kitty -e eat-food"))
hl.bind(mainMod .. " + CTRL + G", hl.dsp.exec_cmd("~/.local/bin/brightness-lower"))
hl.bind(mainMod .. " + SHIFT + P", hl.dsp.exec_cmd("kitty -e nvim-projects"))
hl.bind(mainMod .. " + Escape", hl.dsp.exec_cmd("kitty --class float -e power-select"))
hl.bind(mainMod .. " + SHIFT + Z", hl.dsp.exec_cmd("zeditor"))

-- Window actions
hl.bind(mainMod .. " + T", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen({ action = "toggle" }))

-- Focus windows with vim keys
hl.bind(mainMod .. " + H", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + J", hl.dsp.focus({ direction = "down" }))
hl.bind(mainMod .. " + K", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + L", hl.dsp.focus({ direction = "right" }))

-- Move windows with vim keys
-- If these don't work on your build, use the fallback lines below.
hl.bind(mainMod .. " + SHIFT + H", hl.dsp.window.move({ direction = "left" }))
hl.bind(mainMod .. " + SHIFT + J", hl.dsp.window.move({ direction = "down" }))
hl.bind(mainMod .. " + SHIFT + K", hl.dsp.window.move({ direction = "up" }))
hl.bind(mainMod .. " + SHIFT + L", hl.dsp.window.move({ direction = "right" }))

-- Fallback version for move-window binds:
-- hl.bind(mainMod .. " + SHIFT + H", dispatch("movewindow l"))
-- hl.bind(mainMod .. " + SHIFT + J", dispatch("movewindow d"))
-- hl.bind(mainMod .. " + SHIFT + K", dispatch("movewindow u"))
-- hl.bind(mainMod .. " + SHIFT + L", dispatch("movewindow r"))

-- Workspaces 1-5
for i = 1, 5 do
	hl.bind(mainMod .. " + " .. i, hl.dsp.focus({ workspace = i }))
	hl.bind(mainMod .. " + SHIFT + " .. i, hl.dsp.window.move({ workspace = i }))
end

-- Extra apps
hl.bind(mainMod .. " + CTRL + T", hl.dsp.exec_cmd("kitty --class float -e btop"))
hl.bind(mainMod .. " + SHIFT + E", hl.dsp.exec_cmd("chromium"))

-- Volume
hl.bind(
	"XF86AudioRaiseVolume",
	hl.dsp.exec_cmd("wpctl set-volume -l 1.0 @DEFAULT_AUDIO_SINK@ 5%+"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioLowerVolume",
	hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),
	{ locked = true, repeating = true }
)
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), { locked = true })
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"), { locked = true })

-- Brightness
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl set 5%+"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl set 5%-"), { locked = true, repeating = true })

-- Media
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl pause"), { locked = true })
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })
hl.bind("XF86AudioStop", hl.dsp.exec_cmd("playerctl stop"), { locked = true })

-- Screenshots
hl.bind("XF86Launch7", hl.dsp.exec_cmd([[grim -g "$(slurp)" - | wl-copy --type image/png]]))
hl.bind("SHIFT + XF86Launch7", hl.dsp.exec_cmd([[grim - | wl-copy --type image/png]]))

-- Other special keys
hl.bind("XF86Calculator", hl.dsp.exec_cmd("gnome-calculator"))
hl.bind("XF86Explorer", hl.dsp.exec_cmd("thunar"))
hl.bind("XF86HomePage", hl.dsp.exec_cmd("xdg-open https://google.com"))
