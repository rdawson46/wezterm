local wezterm = require("wezterm")
local config = wezterm.config_builder()

local theme = wezterm.plugin.require("https://github.com/neapsix/wezterm").main

config.colors = theme.colors()
config.colors.background = '#232323'

config.font = wezterm.font('JetBrains Mono')
config.font_size = 12


config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true

-- hide if using image
--[[
config.window_background_opacity = 0.85
config.text_background_opacity = 0.9
]]--

--[[
-- astronaut
config.window_background_image = "/home/ryan/.config/wezterm/backgrounds/astro-jelly.jpg"
-- spaceship
config.window_background_image = "/home/ryan/.config/wezterm/backgrounds/voyage.jpg"
-- planets
config.window_background_image = "/home/ryan/.config/wezterm/backgrounds/space.jpg"
-- japan
config.window_background_image = "/home/ryan/.config/wezterm/backgrounds/fuji.jpg"
]]--

config.window_background_image_hsb = {
    brightness = 0.2,
    hue = 1,
    --saturation = 0.8,
}

config.window_decorations = "NONE"

config.window_padding = {
    left = 2,
    right = 2,
    top = 2,
    bottom = 2,
}

if wezterm.target_triple == "x86_64-pc-windows-msvc" then
    config.default_prog = { "powershell.exe" }
    --[[
    -- astronaut
    config.window_background_image = "C:/Users/Ryan Crooks/.config/wezterm/backgrounds/astro-jelly.jpg"
    -- spaceship
    config.window_background_image = "C:/Users/Ryan Crooks/.config/wezterm/backgrounds/voyage.jpg"
    -- planets
    config.window_background_image = "C:/Users/Ryan Crooks/.config/wezterm/backgrounds/space.jpg"
    ]]--
    -- japan
    config.window_background_image = "C:/Users/Ryan Crooks/.config/wezterm/backgrounds/fuji.jpg"
end

return config
