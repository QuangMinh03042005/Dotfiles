# -*- coding: utf-8 -*-
from libqtile.dgroups import simple_key_binder
import os
import re
import socket
import subprocess
from libqtile import qtile
from libqtile.config import Click, Drag, Group, KeyChord, Key, Match, Screen
from libqtile.command import lazy
from libqtile import layout, bar, widget, hook
from libqtile.lazy import lazy
from libqtile.utils import guess_terminal
from typing import List  # noqa: F401from typing import List  # noqa: F401
from plasma import Plasma
from libqtile.command import lazy
from libqtile.config import EzKey

mod = "mod4"  # Sets mod key to SUPER/WINDOWS
myTerm = "alacritty"  # My terminal of choice
myBrowser = "firefox"  # My browser of choice

keys = [
    # Key(["mod1", "shift"], "q", lazy.shutdown()),
    # The essentials
    Key([mod], "Return", lazy.spawn(myTerm + ""), desc="Launches My Terminal"),
    Key(["control"], "r", lazy.spawn("dmenu_run"), desc="Run Launcher"),
    Key([mod], "b", lazy.spawn(myBrowser), desc="Qutebrowser"),
    Key([mod], "Tab", lazy.next_layout(), desc="Toggle through layouts"),
    Key([mod], "q", lazy.window.kill(), desc="Kill active window"),
    Key([mod, "shift"], "r", lazy.restart(), desc="Restart Qtile"),
    # Plasma
    Key(
        [mod],
        "h",
        lazy.layout.left(),
    ),
    Key(
        [mod],
        "j",
        lazy.layout.down(),
    ),
    Key(
        [mod],
        "k",
        lazy.layout.up(),
    ),
    Key(
        [mod],
        "l",
        lazy.layout.right(),
    ),
    Key(
        [mod, "shift"],
        "h",
        lazy.layout.move_left(),
    ),
    Key(
        [mod, "shift"],
        "j",
        lazy.layout.move_down(),
    ),
    Key(
        [mod, "shift"],
        "k",
        lazy.layout.move_up(),
    ),
    Key(
        [mod, "shift"],
        "l",
        lazy.layout.move_right(),
    ),
    Key(
        [mod, "mod1"],
        "h",
        lazy.layout.integrate_left(),
    ),
    Key(
        [mod, "mod1"],
        "j",
        lazy.layout.integrate_down(),
    ),
    Key(
        [mod, "mod1"],
        "k",
        lazy.layout.integrate_up(),
    ),
    Key(
        [mod, "mod1"],
        "l",
        lazy.layout.integrate_right(),
    ),
    Key(
        [mod],
        "d",
        lazy.layout.mode_horizontal(),
    ),
    Key(
        [mod],
        "v",
        lazy.layout.mode_vertical(),
    ),
    Key([mod, "shift"], "d", lazy.layout.mode_horizontal_split()),
    Key([mod, "shift"], "v", lazy.layout.mode_vertical_split()),
    Key(
        ["control", "shift"],
        "h",
        lazy.layout.grow_width(-20),
    ),
    Key(
        ["control", "shift"],
        "l",
        lazy.layout.grow_width(20),
    ),
    Key(
        ["control", "shift"],
        "j",
        lazy.layout.grow_height(-20),
    ),
    Key(
        ["control", "shift"],
        "k",
        lazy.layout.grow_height(20),
    ),
    Key(
        ["control", "shift"],
        "n",
        lazy.layout.reset_size(),
    ),
    # Window controls
    Key([mod, "shift"], "space", lazy.window.toggle_floating(), desc="toggle floating"),
    Key([mod], "f", lazy.window.toggle_fullscreen(), desc="toggle fullscreen"),
    Key([mod], "w", lazy.spawn("rofi -show window")),
]

groups = [
    Group("1", layout="Plasma"),
    Group("2", layout="Plasma"),
    Group("3", layout="Plasma"),
    Group("4", layout="Plasma"),
    Group("5", layout="Plasma"),
    Group("6", layout="Plasma"),
    Group("7", layout="Plasma"),
    Group("8", layout="Plasma"),
    Group("9", layout="Plasma"),

    # Group("WWW", layout="Plasma"),
    # Group("DEV", layout="Plasma"),
    # Group("SYS", layout="Plasma"),
    # Group("SYS", layout="Plasma"),
    # Group("DOC", layout="Plasma"),
    # Group("VBOX", layout="Plasma"),
    # Group("CHAT", layout="Plasma"),
    # Group("MUS", layout="Plasma"),
    # Group("VID", layout="Plasma"),
    # Group("GFX", layout="Plasma"),
]

# Allow MODKEY+[0 through 9] to bind to groups, see https://docs.qtile.org/en/stable/manual/config/groups.html
# MOD4 + index Number : Switch to Group[index]
# MOD4 + shift + index Number : Send active window to another Group

dgroups_key_binder = simple_key_binder("mod4")

layout_theme = {
    "border_width": 1,
    "margin": 2,
    "border_focus": "#B7BDF8",
    "border_normal": "#1c1f24",
    "border_width_single": 1,
}

layouts = [
    Plasma(
        **layout_theme
        # border_normal='#1D2330',
        # border_focus='#e1acff',
        # border_normal_fixed='#006863',
        # border_focus_fixed='#00e8dc',
        # border_width=1,
        # border_width_single=1,
        # margin=
    ),
    # layout.MonadWide(**layout_theme),
    # layout.Bsp(**layout_theme),
    # layout.Stack(stacks=2, **layout_theme),
    # layout.Columns(**layout_theme),
    # layout.RatioTile(**layout_theme),
    # layout.Tile(shift_windows=True, **layout_theme),
    # layout.VerticalTile(**layout_theme),
    # layout.Matrix(**layout_theme),
    # layout.Zoomy(**layout_theme),
    # layout.MonadTall(**layout_theme),
    # layout.Max(**layout_theme),
    # layout.Stack(num_stacks=2),
    # layout.RatioTile(**layout_theme),
    # layout.TreeTab(
    #      font = "Ubuntu",
    #      fontsize = 10,
    #      sections = ["FIRST", "SECOND", "THIRD", "FOURTH"],
    #      section_fontsize = 10,
    #      border_width = 2,
    #      bg_color = "1c1f24",
    #      active_bg = "c678dd",
    #      active_fg = "000000",
    #      inactive_bg = "a9a1e1",
    #      inactive_fg = "1c1f24",
    #      padding_left = 0,
    #      padding_x = 0,
    #      padding_y = 5,
    #      section_top = 10,
    #      section_bottom = 20,
    #      level_shift = 8,
    #      vspace = 3,
    #      panel_width = 200
    #      ),
    # layout.Floating(**layout_theme)
]

# colors = [
#     ["#282c34", "#282c34"],
#     ["#1c1f24", "#1c1f24"],
#     ["#dfdfdf", "#dfdfdf"],
#     ["#ff6c6b", "#ff6c6b"],
#     ["#98be65", "#98be65"],
#     ["#da8548", "#da8548"],
#     ["#51afef", "#51afef"],
#     ["#c678dd", "#c678dd"],
#     ["#46d9ff", "#46d9ff"],
#     ["#a9a1e1", "#a9a1e1"],
# ]

colors = [
    ["#494D64", "#494D64"],
    ["#24273A", "#24273A"],
    ["#CAD3F5", "#CAD3F5"],
    ["#ED8796", "#ED8796"],
    ["#A6DA95", "#A6DA95"],
    ["#F5A97F", "#F5A97F"],
    ["#8AADF4", "#8AADF4"],
    ["#C6A0F6", "#C6A0F6"],
    ["#8BD5CA", "#8BD5CA"],
    ["#B7BDF8", "#B7BDF8"],
]

prompt = "{0}@{1}: ".format(os.environ["USER"], socket.gethostname())

##### DEFAULT WIDGET SETTINGS #####
widget_defaults = dict(font="Ubuntu Bold", fontsize=10, padding=2, background=colors[2])
extension_defaults = widget_defaults.copy()


def init_widgets_list():
    widgets_list = [
        widget.Sep(linewidth=0, padding=6, foreground=colors[2], background=colors[0]),
        widget.Image(
            filename="~/.config/qtile/icons/python.png",
            scale="False",
            mouse_callbacks={"Button1": lambda: qtile.cmd_spawn("rofi -show drun")},
        ),
        widget.Sep(linewidth=0, padding=6, foreground=colors[2], background=colors[0]),
        widget.GroupBox(
            font="Ubuntu Bold",
            fontsize=9,
            margin_y=3,
            margin_x=0,
            padding_y=5,
            padding_x=3,
            borderwidth=3,
            active=colors[2],
            inactive=colors[7],
            rounded=False,
            highlight_color=colors[1],
            highlight_method="line",
            this_current_screen_border=colors[6],
            this_screen_border=colors[4],
            other_current_screen_border=colors[6],
            other_screen_border=colors[4],
            foreground=colors[2],
            background=colors[0],
        ),
        widget.TextBox(
            text="|",
            font="Ubuntu Mono",
            background=colors[0],
            foreground="474747",
            padding=2,
            fontsize=14,
        ),
        widget.CurrentLayoutIcon(
            custom_icon_paths=[os.path.expanduser("~/.config/qtile/icons")],
            foreground=colors[2],
            background=colors[0],
            padding=0,
            scale=0.7,
        ),
        widget.CurrentLayout(foreground=colors[2], background=colors[0], padding=5),
        widget.TextBox(
            text="|",
            font="Ubuntu Mono",
            background=colors[0],
            foreground="474747",
            padding=2,
            fontsize=14,
        ),
        widget.WindowName(foreground=colors[6], background=colors[0], padding=0),
        widget.Sep(linewidth=0, padding=6, foreground=colors[0], background=colors[0]),
        # widget.TextBox(
        #          text = '',
        #          font = "Ubuntu Mono",
        #          background = colors[0],
        #          foreground = colors[3],
        #          padding = 0,
        #          fontsize = 37
        #          ),
        # widget.Net(
        #           interface = "enp5s0",
        #           format = 'Net: {down} ↓↑ {up}',
        #           foreground = colors[1],
        #           background = colors[3],
        #           padding = 5
        #           ),
        # widget.ThermalSensor(
        #          foreground = colors[1],
        #          background = colors[4],
        #          threshold = 90,
        #          fmt = 'Temp: {}',
        #          padding = 5
        #          ),
        widget.TextBox(
            text="",
            font="Ubuntu Mono",
            background=colors[0],
            foreground=colors[5],
            padding=0,
            fontsize=37,
        ),
        # widget.CheckUpdates(
        #          update_interval = 1800,
        #          distro = "Arch_checkupdates",
        #          display_format = "Updates: {updates} ",
        #          foreground = colors[1],
        #          colour_have_updates = colors[1],
        #          colour_no_updates = colors[1],
        #          mouse_callbacks = {'Button1': lambda: qtile.cmd_spawn(myTerm + ' -e sudo pacman -Syu')},
        #          padding = 5,
        #          background = colors[5]
        #          ),
        widget.CPU(
            format="Cpu:{load_percent:5.1f}%",
            foreground=colors[1],
            background=colors[5],
            padding=5,
        ),
        widget.TextBox(
            text="",
            font="Ubuntu Mono",
            foreground=colors[6],
            background=colors[5],
            padding=0,
            fontsize=37,
        ),
        widget.Memory(
            foreground=colors[1],
            background=colors[6],
            mouse_callbacks={"Button1": lambda: qtile.cmd_spawn(myTerm + " -e htop")},
            fmt="Mem: {}",
            padding=5,
        ),
        widget.TextBox(
            text="",
            font="Ubuntu Mono",
            background=colors[6],
            foreground=colors[7],
            padding=0,
            fontsize=37,
        ),
        widget.Volume(
            foreground=colors[1], background=colors[7], fmt="Vol: {}", padding=5
        ),
        widget.TextBox(
            text="",
            font="Ubuntu Mono",
            background=colors[7],
            foreground=colors[8],
            padding=0,
            fontsize=37,
        ),
        widget.KeyboardLayout(
            foreground=colors[1], background=colors[8], fmt="Keyboard: {}", padding=5
        ),
        widget.TextBox(
            text="",
            font="Ubuntu Mono",
            background=colors[8],
            foreground=colors[9],
            padding=0,
            fontsize=37,
        ),
        widget.Clock(
            foreground=colors[1], background=colors[9], format="%A, %B %d - %H:%M "
        ),
        widget.TextBox(
            text="",
            font="Ubuntu Mono",
            background=colors[9],
            foreground=colors[0],
            padding=0,
            fontsize=37,
        ),
        widget.Systray(background=colors[0], padding=5),
        # widget.Systray(background=colors[0], padding=5),
    ]
    return widgets_list


def init_widgets_screen1():
    widgets_screen1 = init_widgets_list()
    del widgets_screen1[
        9:10
    ]  # Slicing removes unwanted widgets (systray) on Monitors 1,3
    return widgets_screen1


def init_widgets_screen2():
    widgets_screen2 = init_widgets_list()
    return widgets_screen2  # Monitor 2 will display all widgets in widgets_list


def init_screens():
    return [
        Screen(top=bar.Bar(widgets=init_widgets_screen1(), opacity=1.0, size=20)),
        Screen(top=bar.Bar(widgets=init_widgets_screen2(), opacity=1.0, size=20)),
        Screen(top=bar.Bar(widgets=init_widgets_screen1(), opacity=1.0, size=20)),
    ]


if __name__ in ["config", "__main__"]:
    screens = init_screens()
    widgets_list = init_widgets_list()
    widgets_screen1 = init_widgets_screen1()
    widgets_screen2 = init_widgets_screen2()


def window_to_prev_group(qtile):
    if qtile.currentWindow is not None:
        i = qtile.groups.index(qtile.currentGroup)
        qtile.currentWindow.togroup(qtile.groups[i - 1].name)


def window_to_next_group(qtile):
    if qtile.currentWindow is not None:
        i = qtile.groups.index(qtile.currentGroup)
        qtile.currentWindow.togroup(qtile.groups[i + 1].name)


def window_to_previous_screen(qtile):
    i = qtile.screens.index(qtile.current_screen)
    if i != 0:
        group = qtile.screens[i - 1].group.name
        qtile.current_window.togroup(group)


def window_to_next_screen(qtile):
    i = qtile.screens.index(qtile.current_screen)
    if i + 1 != len(qtile.screens):
        group = qtile.screens[i + 1].group.name
        qtile.current_window.togroup(group)


def switch_screens(qtile):
    i = qtile.screens.index(qtile.current_screen)
    group = qtile.screens[i - 1].group
    qtile.current_screen.set_group(group)


mouse = [
    Drag(
        [mod],
        "Button1",
        lazy.window.set_position_floating(),
        start=lazy.window.get_position(),
    ),
    Drag(
        [mod], "Button3", lazy.window.set_size_floating(), start=lazy.window.get_size()
    ),
    Click([mod], "Button2", lazy.window.bring_to_front()),
]

dgroups_app_rules = []  # type: List
follow_mouse_focus = True
bring_front_click = False
cursor_warp = False

auto_fullscreen = True
focus_on_window_activation = "smart"
reconfigure_screens = True

# If things like steam games want to auto-minimize themselves when losing
# focus, should we respect this or not?
auto_minimize = True


@hook.subscribe.startup_once
def start_once():
    home = os.path.expanduser("~")
    subprocess.call([home + "/.config/qtile/autostart.sh"])


# XXX: Gasp! We're lying here. In fact, nobody really uses or cares about this
# string besides java UI toolkits; you can see several discussions on the
# mailing lists, GitHub issues, and other WM documentation that suggest setting
# this string if your java app doesn't work correctly. We may as well just lie
# and say that we're a working one by default.
#
# We choose LG3D to maximize irony: it is a 3D non-reparenting WM written in
# java that happens to be on java's whitelist.
wmname = "qtile"
