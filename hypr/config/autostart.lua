-------------------
---- AUTOSTART ----
-------------------

-- See https://wiki.hypr.land/Configuring/Basics/Autostart/

-- Autostart necessary processes (like notifications daemons, status bars, etc.)
-- Or execute your favorite apps at launch like this

local function set_wallpaper(path)
	os.execute(string.format('hyprctl hyprpaper preload "%s"', path))
	os.execute(string.format('hyprctl hyprpaper wallpaper "%s,%s"', "", path))
end

set_wallpaper("/home/shiva/data/arch_files/Wallpapers/car_on_mars.jpg")

hl.on("hyprland.start", function()
	hl.exec_cmd("nm-applet")
	hl.exec_cmd("swww-daemon")
	hl.exec_cmd("waybar & hyprpaper")
	set_wallpaper("/home/shiva/data/arch_files/Wallpapers/astronaut2.png")
end)
