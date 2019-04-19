local gfs = require("gears.filesystem")
local themes_path = gfs.get_themes_dir()
--local gtk = require("beautiful.gtk")
local dpi = require("beautiful.xresources").apply_dpi

-- Load default gtk theme
local theme = dofile(themes_path .. "gtk/theme.lua")
local path = '~/.sau/awesome/'

theme.wallpaper = path .. '/image/wallpaper.jpg'
theme.border_width = dpi(0)
theme.useless_gap = dpi(10)


return theme
