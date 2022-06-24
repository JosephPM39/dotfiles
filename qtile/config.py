from typing import List
from libqtile import bar, layout, widget
from libqtile.config import Click, Drag, Group, Key, Match, Screen
from libqtile.lazy import lazy
from settings.screens import screens, detect_screens
from settings.keys import keys, mod, terminal
from settings.groups import *
from settings.layouts import layouts, floating_layout
from settings.mouse import mouse
from settings.widgets import widget_defaults, extension_defaults
import os

dgroups_key_binder = None
dgroups_app_rules = []  # type: List
follow_mouse_focus = True
bring_front_click = False
cursor_warp = False
auto_fullscreen = True
focus_on_window_activation = "smart"
reconfigure_screens = True
auto_minimize = True
wmname = "LG3D"

def main(qtile):
    detect_screens(qtile)

os.system("bash /home/josephpm/.config/qtile/autostart.sh")