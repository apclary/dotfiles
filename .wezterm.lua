local wezterm = require("wezterm")

return {
	keys = { {
		key = "w",
		mods = "CMD",
		action = wezterm.action.CloseCurrentTab({ confirm = false }),
	} },
	window_close_confirmation = "NeverPrompt",
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
	--harfbuzz_features = { "ss01" }, -- Enable stylistic set 1 globally
	font_size = 14.0,
}
