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

-- Lid closed
hl.bind("switch:on:Lid Switch", function()
	hl.monitor({
		output = "eDP-1",
		disabled = true,
	})
end)

-- Lid opened
hl.bind("switch:off:Lid Switch", function()
	hl.monitor({
		output = "eDP-1",
		mode = "1920x1200@60",
		position = "0x1080",
		scale = 1,
	})
end)
