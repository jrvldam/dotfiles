local wezterm = require("wezterm")

local config = wezterm.config_builder()

-- Window
-- window tab bar
config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.window_decorations = "RESIZE|INTEGRATED_BUTTONS"
config.window_padding = { top = 23 }
-- window background
config.window_background_opacity = 0.85
config.macos_window_background_blur = 20
-- window start size
config.initial_cols = 120
config.initial_rows = 28

config.max_fps = 240 -- hack for smoothness
config.enable_kitty_graphics = true

-- Font
-- JetBrains Mono
config.cell_width = 1.1
config.line_height = 1.5
config.font_size = 14
config.font = wezterm.font("Lilex Nerd Font")
-- OpenDyslexic
-- config.font = wezterm.font("OpenDyslexicM Nerd Font Mono")
-- config.line_height = 1.1
-- config.font_size = 14
-- Annotation Mono
-- config.font = wezterm.font("Annotation Mono")
-- config.line_height = 1.5
-- config.font_size = 14

-- Theme
local function get_appearance()
	if wezterm.gui then
		return wezterm.gui.get_appearance()
	end
	return "Dark"
end

local function scheme_for_appearance(appearance)
	if appearance:find("Dark") then
		-- return "tokyonight"
		return "Kanagawa (Gogh)"
	else
		return "tokyonight-day"
	end
end

config.color_scheme = scheme_for_appearance(get_appearance())

local scheme = wezterm.color.get_builtin_schemes()[config.color_scheme]
scheme.cursor_fg = scheme.background
config.color_schemes = {
	[config.color_scheme] = scheme,
}

local act = wezterm.action

config.keys = {
	-- Vimmode
	{ key = "x", mods = "SUPER|ALT", action = act.ActivateCopyMode },

	-- Pane
	{ key = "d", mods = "SUPER", action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }) },
	{ key = "d", mods = "SHIFT|SUPER", action = act.SplitVertical({ domain = "CurrentPaneDomain" }) },
	{ key = "LeftArrow", mods = "SUPER|ALT", action = act.ActivatePaneDirection("Left") },
	{ key = "RightArrow", mods = "SUPER|ALT", action = act.ActivatePaneDirection("Right") },
	{ key = "UpArrow", mods = "SUPER|ALT", action = act.ActivatePaneDirection("Up") },
	{ key = "DownArrow", mods = "SUPER|ALT", action = act.ActivatePaneDirection("Down") },

	{ key = "Enter", mods = "SHIFT|SUPER", action = act.TogglePaneZoomState },
	{ key = "w", mods = "SUPER|ALT", action = act.RotatePanes("Clockwise") },
	{ key = "s", mods = "SUPER|ALT", action = act.PaneSelect({ mode = "SwapWithActive" }) },

	{ key = "DownArrow", mods = "SUPER|CTRL", action = act.AdjustPaneSize({ "Down", 1 }) },
	{ key = "LeftArrow", mods = "SUPER|CTRL", action = act.AdjustPaneSize({ "Left", 1 }) },
	{ key = "UpArrow", mods = "SUPER|CTRL", action = act.AdjustPaneSize({ "Up", 1 }) },
	{ key = "RightArrow", mods = "SUPER|CTRL", action = act.AdjustPaneSize({ "Right", 1 }) },

	{ key = "k", mods = "SUPER", action = act.ClearScrollback("ScrollbackAndViewport") },

	-- Disalbe default assigments
	{ key = "k", mods = "SHIFT|CTRL", action = act.DisableDefaultAssignment },
	{ key = "+", mods = "CTRL", action = act.DisableDefaultAssignment },
	{ key = "+", mods = "SHIFT|CTRL", action = act.DisableDefaultAssignment },
	{ key = "-", mods = "CTRL", action = act.DisableDefaultAssignment },
	{ key = "-", mods = "SHIFT|CTRL", action = act.DisableDefaultAssignment },
	{ key = "-", mods = "SUPER", action = act.DisableDefaultAssignment },
	-- For ClaudeIA requirement
	{ key = "Enter", mods = "SHIFT", action = wezterm.action({ SendString = "\x1b\r" }) },
}

-- Finally, return the configuration to wezterm:
return config
