local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.keys = {
	{
		key = "d",
		mods = "CMD",
		action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "d",
		mods = "CMD|SHIFT",
		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "w",
		mods = "CMD",
		action = wezterm.action.CloseCurrentPane({ confirm = false }),
	},
	{
		key = "w",
		mods = "CMD|SHIFT",
		action = wezterm.action.CloseCurrentTab({ confirm = false }),
	},
}

config.hide_tab_bar_if_only_one_tab = true
config.window_close_confirmation = "NeverPrompt"
config.skip_close_confirmation_for_processes_named = {
	"zsh",
	"tmux",
	"nvim",
}
config.exit_behavior = "Close"
config.color_scheme = "Catppuccin Mocha"
config.colors = {
	background = "#0F0F10",
}

config.font = wezterm.font_with_fallback({
	{
		family = "Cascadia Code",
		weight = "Regular",
		style = "Normal",
		freetype_render_target = "Light",
		freetype_load_flags = "NO_HINTING",
	},
	"CaskaydiaCove Nerd Font",
})

config.font_rules = {
	{
		italic = true,
		font = wezterm.font("Cascadia Code", {
			weight = "Regular",
			style = "Italic",
		}),
	},
}

config.font_size = 13.0

return config
