hl.monitor({
	output = "eDP-1",
	mode = "1920x1200@60",
	position = "0x1080",
	scale = 1,
})
hl.monitor({
	output = "HDMI-A-1",
	mode = "1920x1080@110",
	position = "0x0",
	scale = 1,
})
hl.config({
	xwayland = {
		force_zero_scaling = true,
	},
})

-- Turn off laptop display upon closing the lid
hl.bind("switch:on:Lid Switch", function()
	os.execute('hyprctl keyword monitor "eDP-1, disable"')
end)
hl.bind("switch:off:Lid Switch", function()
	os.execute('hyprctl keyword monitor "eDP-1,1920x1200@60,0x1080,1"')
end)
