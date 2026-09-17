-- COLORS
package.path = package.path
    .. ";" .. os.getenv("HOME") .. "/.cache/wal/colors.lua"

local colors = require("colors")

-- MONITORS
hl.monitor({
    output = "",
    mode = "prefered",
    position = "auto",
    scale = 1,
})

-- CONFIG VARIABLES
hl.config(
  {
    input = {
      follow_mouse = 2,

      touchpad = {
        natural_scroll = true
      }
    },

    general = {
      -- Border gaps and border size
      gaps_in = 5,
      gaps_out = 15,
      border_size = 4,
      layout = "master",


      -- Border colors
      col = {
        inactive_border = colors.color11,

        active_border = {
          colors = {
            colors.color1,
            colors.color4,
          },
          angle = 45,
        },
      },
    },

    master = {
      mfact = 0.5,
    },

    decoration = {
      rounding = 18,
      active_opacity =  1.0,
      inactive_opacity =  0.7,
      fullscreen_opacity =  1.0,

      blur = {
        enabled =  true,
        size =  3,
        passes =  5,
        new_optimizations =  on,
      },

      shadow = {
        enabled = true,
        offset = {2, 2},
        range = 4,
        render_power = 2,
        color = 0x66000000,
      },
    }
    
  }
)

-- ANIMAIONS
-- hl.animation({})

-- WINDOW & LAYER RULES
local no_anim = hl.layer_rule({
    name = "no-animation",
    match = {namespace = "^(swww,rofi)"},
    no_anim = true
})

local waybar_blur = hl.layer_rule({
    name = "waybar-blur",
    match = {namespace = "waybar"},
    blur = true,
})

-- GESTURES
hl.gesture({
    fingers = 3,
    direction = "horizontal",
    action = "workspace"
})

-- KEYBINDINGS
local S  = "SUPER"
local SS = "SUPER + SHIFT"
local SA = "SUPER + ALT"
local A  = "ALT"

-- General
hl.bind(SS .. " + Q",     hl.dsp.window.close())
hl.bind(S  .. " + Space", hl.dsp.window.float({ action = "toggle" }))

-- Rofi
for key, cmd in pairs({
    RETURN = "~/.config/rofi/scripts/drun",
    R      = "~/.config/rofi/scripts/run",
    W      = "~/.config/rofi/scripts/window",
    E      = "~/.config/rofi/scripts/emoji",
    P      = "~/.config/rofi/scripts/powermenu",
    X      = "~/.config/rofi/scripts/kill",
    S      = "~/.config/rofi/scripts/scripts",
}) do
    hl.bind(SS .. " + " .. key, hl.dsp.exec_cmd(cmd))
end

hl.bind("Print",
    hl.dsp.exec_cmd("~/scripts/rofi-scripts/full-screenshot"))

-- Apps
for key, cmd in pairs({
    RETURN = "kitty",
    B      = "zen-browser",
    F      = "kitty -e yazi",
    P      = "nemo",
    O      = "systune",
    T      = "thunderbird",
    E      = "emacsclient --create-frame",
}) do
    hl.bind(S .. " + " .. key, hl.dsp.exec_cmd(cmd))
end

hl.bind(SS .. " + B", hl.dsp.exec_cmd("floorp"))
hl.bind(SS .. " + T", hl.dsp.exec_cmd("Telegram"))

-- Mouse
hl.bind(
    S .. " + mouse:272",
    hl.dsp.window.drag(),
    { mouse = true }
)

hl.bind(
    S .. " + mouse:273",
    hl.dsp.window.resize(),
    { mouse = true }
)

-- Workspaces
for i = 1, 9 do
    local ws = tostring(i)

    hl.bind(S .. " + " .. ws, hl.dsp.focus({workspace = ws}))
    hl.bind(SS .. " + " .. ws, hl.dsp.window.move({workspace = ws}))
end

hl.bind(S  .. " + 0", hl.dsp.focus({workspace = "10"}))
hl.bind(SS .. " + 0", hl.dsp.window.move({workspace = "10"}))

-- Workspace navigation
hl.bind(S .. " + Escape", hl.dsp.focus({workspace = "previous"}))
hl.bind(S .. " + mouse_down", hl.dsp.focus({workspace = "e-1"}))
hl.bind(S .. " + mouse_up", hl.dsp.focus({workspace = "e+1"}))
hl.bind(S .. " + H", hl.dsp.focus({workspace = "e-1"}))
hl.bind(S .. " + L", hl.dsp.focus({workspace = "e+1"}))
hl.bind(S .. " + Left", hl.dsp.focus({workspace = "e-1"}))
hl.bind(S .. " + Right", hl.dsp.focus({workspace = "e+1"}))

-- Layout
hl.bind(S  .. " + J", hl.dsp.layout("cyclenext"))
hl.bind(S  .. " + K", hl.dsp.layout("cycleprev"))
hl.bind(SS .. " + J", hl.dsp.layout("swapnext"))
hl.bind(SS .. " + K", hl.dsp.layout("swapprev"))

-- Fullscreen
hl.bind(SS .. " + F", hl.dsp.window.fullscreen({mode = "fullscreen", action = "toggle"}))
hl.bind(SS .. " + M", hl.dsp.window.fullscreen({mode = "maximized", action= "toggle"}))

-- Alt/Super tab
for _, mod in ipairs({ S, A }) do
    hl.bind(mod .. " + Tab", function()
        hl.dispatch(hl.dsp.window.cycle_next())
        hl.dispatch(hl.dsp.window.bring_to_top())
    end)
end

-- Volume
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("swayosd-client --output-volume mute-toggle"), { locked = true })

hl.bind(
  "XF86AudioRaiseVolume",
  hl.dsp.exec_cmd(
    "swayosd-client --output-volume +10"
  ),
  { repeating = true, locked = true }
)

hl.bind(
  "XF86AudioLowerVolume",
  hl.dsp.exec_cmd(
    "swayosd-client --output-volume -10"
  ),
  { repeating = true, locked = true }
)


hl.bind(S .. " + Up", hl.dsp.exec_cmd("swayosd-client --output-volume +10"), { repeating = true })
hl.bind(S .. " + Down", hl.dsp.exec_cmd("swayosd-client --output-volume -10"), { repeating = true })

-- Brightness
hl.bind(
    "XF86MonBrightnessUp",
    hl.dsp.exec_cmd(
        "swayosd-client --brightness +10"
    ),
    { repeating = true, locked = true }
)

hl.bind(
    "XF86MonBrightnessDown",
    hl.dsp.exec_cmd(
        "swayosd-client --brightness -10"
    ),
    { repeating = true, locked = true }
)

hl.bind(SA .. " + Up", hl.dsp.exec_cmd("swayosd-client --brightness +10"), { repeating = true })
hl.bind(SA .. " + Down", hl.dsp.exec_cmd("swayosd-client --brightness -10"), { repeating = true })

-- Media
hl.bind(
    "XF86AudioPlay",
    hl.dsp.exec_cmd(
        "swayosd-client --playerctl play-pause"
    ),
    { locked = true }
)

hl.bind(
    "XF86AudioNext",
    hl.dsp.exec_cmd(
        "swayosd-client --playerctl next"
    )
)

hl.bind(
    "XF86AudioPrev",
    hl.dsp.exec_cmd(
        "swayosd-client --playerctl prev"
    )
)

-- Caps
hl.bind(
    "CAPS + Caps_Lock",
    hl.dsp.exec_cmd(
        "swayosd-client --caps-lock"
    ),
    { release = true }
)

-- ENVIRONMENT VARIABLES
hl.env("QT_QPA_PLATFORM","wayland")
hl.env("QT_QPA_PLATFORMTHEME","qt6ct")
hl.env("HYPRCURSOR_THEME","/usr/share/icons/Bibata-Modern-Classic/cursor.theme")
hl.env("HYPRCURSOR_SIZE","24")

-- AUTOSTART
local startup_apps = {
    "emacs --daemon",
    "awww-daemon",
    "waybar",
    "dunst",
    "nm-applet --indicator",
    "udiskie -A -t",
    "blueman-applet",
    "lxsession",
    "swayosd-server",
    "wl-paste --type text --watch cliphist store",
    "wl-paste --type image --watch cliphist store",
}

hl.on("hyprland.start", function()
    for _, cmd in ipairs(startup_apps) do
        hl.exec_cmd(cmd)
    end
end)
