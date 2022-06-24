from libqtile import bar, widget
from libqtile.config import Screen
from settings.palette import *

def detect_screens(qtile):
    while len(screens) < len(qtile.conn.pseudoscreens):
        screens.append(Screen(
        top=bar.Bar([
            widget.GroupBox(
                disable_drag=True,
                this_current_screen_border=primary,
                this_screen_border=primary,
                ),
            widget.CurrentLayout(),
            widget.TaskList(
                font='JetBrainsMono',
                border=primary,
                highlight_method='block',
                max_title_width=800,
                urgent_border=warning,
                ),
            ], 32, ), ))

separatorStyles = {
        "arrows": ["", "", 32, -4],
        "flames": ["", "", 25, -2],
        "triangleBottom": ["", "", 20, -2],
        "triangleTop": ["", "", 20, -2],
        "trapezoid": ["", "", 25, -3]
}

def separator(fg='#FFFFFF',style="triangleTop", bg='#00000000', close = False):
    return widget.TextBox(
        separatorStyles[style][0] if close else separatorStyles[style][1],
        foreground=fg,
        background=bg,
        fontsize=separatorStyles[style][2],
        padding=separatorStyles[style][3],
    )

screens = [
    Screen(
        top=bar.Bar(
            [
                widget.CurrentLayoutIcon(background=primary),
                widget.GroupBox(inactive=background, block_highlight_text_color=textColor, this_current_screen_border=textColor, this_screen_border=background, other_current_screen_border=secondary, other_screen_border=secondary, active=secondary, background=primary, padding_x=4),
                separator(fg=primary, close=True),
                widget.Prompt(),
                widget.WindowName(),
                widget.Chord(
                    chords_colors={
                        'launch': ("#ff0000", "#ffffff"),
                    },
                    name_transform=lambda name: name.upper(),
                ),
                separator(fg=primary),
                widget.Net(interface="enp5s0", foreground=textColor, background=primary),
                separator(fg=secondary, bg=primary),
                widget.TextBox("CPU:", name="default", foreground=textColor, background=secondary),
                widget.CPUGraph(background=secondary),
                widget.TextBox("RAM:", name="ram", foreground=textColor, background=secondary),
                widget.Memory(measure_mem='G',foreground=textColor, background=secondary),
                separator(fg=tertiary, bg=secondary),
                widget.ThermalSensor(foreground=textColor, background=tertiary, foreground_alert=primary),
                widget.NvidiaSensors(threshold=60, foreground=textColor, background=tertiary, foreground_alert=primary),
                separator(fg=info, bg=tertiary),
                #widget.TextBox("Press &lt;M-r&gt; to spawn", foreground="#d75f5f"),
                widget.Systray(),
                # widget.Clock(format='%Y-%m-%d %a %I:%M %p', foreground="#ffaa00"),
                widget.Clock(format='%d/%m/%y %H:%M', foreground=textColor, background=info),
                widget.QuickExit(foreground=textColor, background=info),
                # widget.Memory(foreground="#ff0000")
            ],
            22,
            background="00000000",
        ),
    ),
]
