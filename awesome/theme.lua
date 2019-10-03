local gfs = require("gears.filesystem")
local themes_path = gfs.get_themes_dir()
--local gtk = require("beautiful.gtk")
local dpi = require("beautiful.xresources").apply_dpi

-- Load default gtk theme
local theme = dofile(themes_path .. "gtk/theme.lua")
local path = '~/.sau/awesome/'

local font_size = 10

theme.font			= theme.gtk.font_family .. ' ' .. font_size
theme.gtk.bold_font = theme.gtk.font_family .. ' Bold ' .. font_size

theme.wallpaper		= path .. '/image/wallpaper.jpg'
theme.border_width	= dpi(3)
theme.useless_gap	= dpi(1)

return theme
