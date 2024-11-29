-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
    config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'AdventureTime'
config.font = wezterm.font 'Cascadia Code'
config.default_prog = { 'powershell.exe','-NoLogo'}


-- window settings
config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"
config.window_background_opacity = 0
config.win32_system_backdrop = 'Acrylic'


-- tab bar
config.hide_tab_bar_if_only_one_tab = false
config.tab_bar_at_bottom = false
config.use_fancy_tab_bar = false
config.tab_and_split_indices_are_zero_based = true


-- title bar
config.integrated_title_button_style = "Windows"
config.integrated_title_buttons = {}


-- and finally, return the configuration to wezterm
return config