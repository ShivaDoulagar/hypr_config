------------------
---- MONITORS ----
------------------

-- See https://wiki.hypr.land/Configuring/Basics/Monitors/
-- hl.monitor({
-- 	output = "HDMI-A-1",
-- 	mode = "1920x1080@100",
-- 	position = "1920x0",
-- 	scale = "1",
-- })
-- hl.monitor({
-- 	output = "edp-1",
-- 	mode = "2560x1600@120",
-- 	position = "0x0",
-- 	scale = "1",
-- })

hl.monitor({
	output = "HDMI-A-1",
	mode = "1920x1080@100",
	position = "0x0",
	scale = "1",
})

hl.monitor({
	output = "eDP-1",
	mode = "2560x1600@120",
	position = "0x1080",
	scale = "1.6",
})
