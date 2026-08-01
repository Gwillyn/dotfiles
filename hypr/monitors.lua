hl.monitor({
	output = "eDP-1",
	mode = "1920x1200@60",
	position = "0x864",
	scale = 1,
})
hl.monitor({
	output = "HDMI-A-1",
	mode = "1920x1080@120",
	position = "0x0",
	scale = 1.25,
})
hl.config({
	xwayland = {
		force_zero_scaling = true,
	},
})
