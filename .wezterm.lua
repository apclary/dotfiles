local wezterm = require("wezterm")

return {
	keys = { {
		key = "w",
		mods = "CMD",
		action = wezterm.action.CloseCurrentTab({ confirm = false }),
	} },
	hide_tab_bar_if_only_one_tab = true,
	window_close_confirmation = "NeverPrompt",
	skip_close_confirmation_for_processes_named = {
		"zsh",
		"tmux",
		"nvim",
	},
	font = wezterm.font_with_fallback({
		{
			family = "Cascadia Code",
			weight = "Regular",
			style = "Normal",
			freetype_render_target = "Light",
			freetype_load_flags = "NO_HINTING",
		},
		"CaskaydiaCove Nerd Font",
	}),
	font_rules = {
		{
			italic = true,
			font = wezterm.font("Cascadia Code", {
				weight = "Regular",
				style = "Italic",
			}),
		},
	},
	--Uncomment below for cursive italics
	--harfbuzz_features = { "ss01" }, -- Enable stylistic set 1 globally
	font_size = 14.0,
}
