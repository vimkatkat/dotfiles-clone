local wezterm = require("wezterm")
local act = wezterm.action

-- The filled in variant of the > symbol
local SOLID_LEFT_ARROW = wezterm.nerdfonts.pl_right_hard_divider
local SOLID_RIGHT_ARROW = wezterm.nerdfonts.pl_left_hard_divider

return {
	-- Wayland
	enable_wayland = true, -- default: true
	-- front_end = "OpenGL",
	-- front_end = "WebGpu",
	-- front_end = "Software",

	-- Font
	-- font = wezterm.font("RobotoMono Nerd Font Mono", { weight = "Bold" }),
	-- font = wezterm.font("FiraCode Nerd Font Mono SemBd", { weight = "Bold" }),
	-- font = wezterm.font("BitstromWera Nerd Font", { weight = "Bold" }),
	-- font = wezterm.font("Hasklug Nerd Font Mono", { weight = "Bold" }),
	-- font = wezterm.font("Hurmit Nerd Font Mono", { weight = "Bold" }),
	-- font = wezterm.font("Inconsolata Nerd Font Mono", { weight = "Bold" }),
	-- font = wezterm.font("GoMono Nerd Font Mono", { weight = "Bold" }),
	-- font = wezterm.font("Monoid Nerd Font Mono", { weight = "Bold" }),
	font = wezterm.font("FiraCode Nerd Font Mono", { weight = "Regular" }),

	font_size = 9,

	-- Appearance
	color_scheme = "astromouse (terminal.sexy)",
	enable_tab_bar = true,
	use_fancy_tab_bar = false,
	enable_scroll_bar = false,
	warn_about_missing_glyphs = false,
	hide_tab_bar_if_only_one_tab = true,
	-- Window layout
	window_padding = {
		left = "1.5cell",
		right = "0.5cell",
		top = "0.5cell",
		bottom = "0.5cell",
	},

	-- Background opacity
	window_background_opacity = 0.9,
	text_background_opacity = 0.6,

	-- Term cursor blink
	default_cursor_style = "BlinkingUnderline",
	cursor_blink_rate = 1000,

	-- Close confirmation
	window_close_confirmation = "NeverPrompt",

	-- Visual bell
	visual_bell = {
		fade_in_function = "EaseIn",
		fade_in_duration_ms = 250,
		fade_out_function = "EaseOut",
		fade_out_duration_ms = 250,
	},
	colors = {
		visual_bell = "#dc143c",
	},

	launch_menu = {
		-- {
		-- 	args = { 'nvim' },
		-- },
		-- { label = "bash", args = { "bash", "-l" } },
		-- { label = "fish", args = { "fish", "-l" } },
		-- {
		-- 	-- Optional label to show in the launcher. If omitted, a label
		-- 	-- is derived from the `args`
		-- 	label = 'Bash',
		-- 	-- The argument array to spawn.  If omitted the default program
		-- 	-- will be used as described in the documentation above
		-- 	args = { 'bash', '-l' },
		--
		-- 	-- You can specify an alternative current working directory;
		-- 	-- if you don't specify one then a default based on the OSC 7
		-- 	-- escape sequence will be used (see the Shell Integration
		-- 	-- docs), falling back to the home directory.
		-- 	-- cwd = "/some/path"
		--
		-- 	-- You can override environment variables just for this command
		-- 	-- by setting this here.  It has the same semantics as the main
		-- 	-- set_environment_variables configuration option described above
		-- 	-- set_environment_variables = { FOO = "bar" },
		-- },
	},

	-- Disable default keybindings
	disable_default_key_bindings = true,
	-- debug_key_events = true,

	leader = { key = 'a', mods = 'CTRL', timeout_milliseconds = 1000 },

	-- Keyboard shortcuts
	keys = {
		-- General
		{ key = 'w',          mods = 'LEADER|CTRL',  action = wezterm.action.SendKey { key = 'w', mods = 'CTRL' }, },
		{ key = "x",          mods = "LEADER",       action = act.ShowLauncherArgs({ flags = "FUZZY|WORKSPACES" }) },
		{ key = "i",          mods = "LEADER",       action = act.ShowLauncherArgs({ flags = "FUZZY|DOMAINS|TABS" }) },
		-- Config
		{ key = 'c',          mods = 'LEADER',
			                                             action = wezterm.action.SpawnCommandInNewWindow { args = {
				'/usr/bin/nvim', '~/.config/hypr/conf.d' }, }, },
		-- Panes
		{ key = "-",          mods = "LEADER",       action = wezterm.action { SplitVertical = { domain = "CurrentPaneDomain" } } },
		{ key = "_",          mods = "LEADER|SHIFT",
			                                             action = wezterm.action { SplitHorizontal = {
				domain = "CurrentPaneDomain" } } },
		{ key = "f",          mods = "LEADER",       action = "TogglePaneZoomState" },
		{ key = "h",          mods = "LEADER",       action = wezterm.action { ActivatePaneDirection = "Left" } },
		{ key = "j",          mods = "LEADER",       action = wezterm.action { ActivatePaneDirection = "Down" } },
		{ key = "k",          mods = "LEADER",       action = wezterm.action { ActivatePaneDirection = "Up" } },
		{ key = "l",          mods = "LEADER",       action = wezterm.action { ActivatePaneDirection = "Right" } },
		{ key = "H",          mods = "LEADER|SHIFT", action = wezterm.action { AdjustPaneSize = { "Left", 5 } } },
		{ key = "J",          mods = "LEADER|SHIFT", action = wezterm.action { AdjustPaneSize = { "Down", 5 } } },
		{ key = "K",          mods = "LEADER|SHIFT", action = wezterm.action { AdjustPaneSize = { "Up", 5 } } },
		{ key = "L",          mods = "LEADER|SHIFT", action = wezterm.action { AdjustPaneSize = { "Right", 5 } } },
		{ key = "1",          mods = "LEADER",       action = wezterm.action { ActivateTab = 0 } },
		{ key = "2",          mods = "LEADER",       action = wezterm.action { ActivateTab = 1 } },
		{ key = "3",          mods = "LEADER",       action = wezterm.action { ActivateTab = 2 } },
		{ key = "4",          mods = "LEADER",       action = wezterm.action { ActivateTab = 3 } },
		{ key = "5",          mods = "LEADER",       action = wezterm.action { ActivateTab = 4 } },
		{ key = "6",          mods = "LEADER",       action = wezterm.action { ActivateTab = 5 } },
		{ key = "7",          mods = "LEADER",       action = wezterm.action { ActivateTab = 6 } },
		{ key = "8",          mods = "LEADER",       action = wezterm.action { ActivateTab = 7 } },
		{ key = "9",          mods = "LEADER",       action = wezterm.action { ActivateTab = 8 } },
		{ key = "d",          mods = "LEADER",       action = wezterm.action { CloseCurrentTab = { confirm = true } } },
		{ key = "x",          mods = "LEADER",       action = wezterm.action { CloseCurrentPane = { confirm = true } } },
		{ key = "phys:Space", mods = "CTRL",         action = act.ActivateCopyMode },
		-- { key = "phys:Space", mods = "RightAlt",         action = act.ActivateCopyMode },
		-- { key = "phys:Space", mods = "AltGr",         action = act.ActivateCopyMode },

		-- { key = "c", mods = "LEADER",       action = wezterm.action { SpawnTab = "CurrentPaneDomain" } },

		-- Changing the active window
		-- 	-- Creating a separate mode for resizing the panes
		-- 	{ key = "r",          mods = "LEADER",       action = act.ActivateKeyTable({ name = "resize_panes", one_shot = false }) },
		-- 	-- Tabs Keybindings
		-- 	{ key = "c",          mods = "LEADER",       action = act.SpawnTab("CurrentPaneDomain") },
		-- 	{ key = "n",          mods = "LEADER",       action = act.ActivateTabRelative(1) },
		-- 	{ key = "p",          mods = "LEADER",       action = act.ActivateTabRelative(-1) },
		-- 	{ key = "i",          mods = "LEADER",       action = act.ShowTabNavigator },
		--
		-- 	-- Creating a separate mode to move the tabs from one location to another
		-- 	{ key = "m",          mods = "LEADER",       action = act.ActivateKeyTable({ name = "move_tabs", one_shot = false }) },
		--
		-- 	-- Now the workspace
		{ key = "x",          mods = "LEADER",       action = act.ShowLauncherArgs({ flags = "FUZZY|WORKSPACES" }) },
			{ key = "V",          mods = "CTRL",         action = act.PasteFrom("Clipboard") },
			{ key = "p",          mods = "CTRL",         action = act.PasteFrom("Clipboard") },
			{ key = "R",          mods = "CTRL",         action = act.ReloadConfiguration },
			{ key = "y",          mods = "CTRL",         action = act.CopyTo("ClipboardAndPrimarySelection") },
		-- 	{ key = "f",          mods = "CTRL",         action = act.Search("CurrentSelectionOrEmptyString") },
		-- 	{ key = "/",          mods = "SHIFT|CTRL",   action = act.Search("CurrentSelectionOrEmptyString") },
		{ key = "+",          mods = "CTRL",         action = act.IncreaseFontSize },
		{ key = "-",          mods = "CTRL",         action = act.DecreaseFontSize },
			{ key = "0",          mods = "CTRL",         action = act.ResetFontSize },
		-- 	{ key = "phys:Space", mods = "CTRL",         action = act.ActivateCopyMode },
			{ key = "phys:Space", mods = "SHIFT|CTRL",   action = act.QuickSelect },
		-- 	{ key = "j",          mods = "CTRL",         action = act.ActivatePaneDirection("Prev") },
		-- 	{ key = "k",          mods = "CTRL",         action = act.ActivatePaneDirection("Next") },
	},

	key_tables = {
		search_mode = {
			{ key = "Enter",  mods = "NONE", action = act.CopyMode("NextMatch") },
			{ key = "Escape", mods = "NONE", action = act.CopyMode("Close") },
			{ key = "N",      mods = "CTRL", action = act.CopyMode("PriorMatch") },
			{ key = "n",      mods = "CTRL", action = act.CopyMode("NextMatch") },
			{ key = "p",      mods = "CTRL", action = act.CopyMode("PriorMatch") },
			{ key = "r",      mods = "CTRL", action = act.CopyMode("CycleMatchType") },
			{ key = "u",      mods = "CTRL", action = act.CopyMode("ClearPattern") },
		},

		copy_mode = {
			{ key = "o",      mods = "NONE", action = act.CopyMode("MoveToStartOfNextLine") },
			{ key = "Escape", mods = "NONE", action = act.CopyMode("Close") },
			{ key = "v",      mods = "NONE", action = act.CopyMode({ SetSelectionMode = "Cell" }) },
			{ key = "v",      mods = "CTRL", action = act.CopyMode({ SetSelectionMode = "Block" }) },
			{ key = "V",      mods = "NONE", action = act.CopyMode({ SetSelectionMode = "Line" }) },
			{ key = "$",      mods = "NONE", action = act.CopyMode("MoveToEndOfLineContent") },
			{ key = "0",      mods = "NONE", action = act.CopyMode("MoveToStartOfLine") },
			{ key = "G",      mods = "NONE", action = act.CopyMode("MoveToScrollbackBottom") },
			{ key = "h",      mods = "NONE", action = act.CopyMode("MoveLeft") },
			{ key = "j",      mods = "NONE", action = act.CopyMode("MoveDown") },
			{ key = "k",      mods = "NONE", action = act.CopyMode("MoveUp") },
			{ key = "l",      mods = "NONE", action = act.CopyMode("MoveRight") },
			{ key = "w",      mods = "NONE", action = act.CopyMode("MoveForwardWord") },
			{
				key = "y",
				mods = "NONE",
				action = act.Multiple({ { CopyTo = "ClipboardAndPrimarySelection" },
					{ CopyMode = "Close" } }),
			},
			{ key = "y",          mods = "CTRL", action = act.CopyTo("ClipboardAndPrimarySelection") },
			{ key = "LeftArrow",  mods = "NONE", action = act.CopyMode("MoveLeft") },
			{ key = "RightArrow", mods = "NONE", action = act.CopyMode("MoveRight") },
			{ key = "UpArrow",    mods = "NONE", action = act.CopyMode("MoveUp") },
			{ key = "DownArrow",  mods = "NONE", action = act.CopyMode("MoveDown") },
			--   { key = '$', mods = 'SHIFT', action = act.CopyMode 'MoveToEndOfLineContent' },
			--   { key = ',', mods = 'NONE', action = act.CopyMode 'JumpReverse' },
			--   { key = ';', mods = 'NONE', action = act.CopyMode 'JumpAgain' },
			--   { key = 'F', mods = 'NONE', action = act.CopyMode{ JumpBackward = { prev_char = false } } },
			--   { key = 'F', mods = 'SHIFT', action = act.CopyMode{ JumpBackward = { prev_char = false } } },
			--   { key = 'O', mods = 'NONE', action = act.CopyMode 'MoveToSelectionOtherEndHoriz' },
			--   { key = 'O', mods = 'SHIFT', action = act.CopyMode 'MoveToSelectionOtherEndHoriz' },
			--   { key = 'V', mods = 'SHIFT', action = act.CopyMode{ SetSelectionMode =  'Line' } },
			--   { key = '^', mods = 'NONE', action = act.CopyMode 'MoveToStartOfLineContent' },
			--   { key = '^', mods = 'SHIFT', action = act.CopyMode 'MoveToStartOfLineContent' },
			--   { key = 'b', mods = 'NONE', action = act.CopyMode 'MoveBackwardWord' },
			--   { key = 'b', mods = 'ALT', action = act.CopyMode 'MoveBackwardWord' },
			--   { key = 'b', mods = 'CTRL', action = act.CopyMode 'PageUp' },
			--   { key = 'c', mods = 'CTRL', action = act.CopyMode 'Close' },
			--   { key = 't', mods = 'NONE', action = act.CopyMode{ JumpForward = { prev_char = true } } },
		},
	},
}
