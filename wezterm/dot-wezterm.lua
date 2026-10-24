-- Pull in the wezterm API
local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.initial_cols = 160
config.initial_rows = 30
config.enable_kitty_keyboard = true
config.audible_bell = "Disabled"


-- or, changing the font size and color scheme.
config.font_size = 10
config.color_scheme = 'Apprentice (Gogh)'


config.keys = {
  {
    key = 'f',
    mods = 'SUPER',
    action = wezterm.action.DisableDefaultAssignment,
  },
}

wezterm.on("format-tab-title", function(tab, tabs, panes, config, hover, max_width)
  return tostring(tab.tab_index + 1)
end)


local function ligatures(on)
  local v = on and '1' or '0'
  return { 'calt=' .. v, 'clig=' .. v, 'liga=' .. v, 'ss01=' .. v }
end

local ligatures_off, ligatures_on = ligatures(false), ligatures(true)
-- Off by default; enabled for ligature_procs.
config.harfbuzz_features = ligatures_off

-- Process names that should get ligatures enabled.
local ligature_procs = { 'emacs', 'emacs-desktop', 'emacsclient', 'et' }

-- Enable ligatures only while the active pane is running emacs/emacsclient.
wezterm.on("update-status", function(window, pane)
  local proc = pane:get_foreground_process_name() or ""
  local name = proc:match("[^/\\]+$") or proc
  local emacs = false
  for _, p in ipairs(ligature_procs) do
    if name == p then
      emacs = true
      break
    end
  end

  -- Override present -> ligatures on; absent -> base config (off).
  local overrides = window:get_config_overrides() or {}
  if (overrides.harfbuzz_features ~= nil) ~= emacs then
    overrides.harfbuzz_features = emacs and ligatures_on or nil
    window:set_config_overrides(overrides)
  end
end)




-- Finally, return the configuration to wezterm:
return config
