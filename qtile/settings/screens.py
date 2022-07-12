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
        "circles": ["", "", 32, -4],
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
                separator(fg=primary, style="triangleBottom"),
                widget.CurrentLayoutIcon(background=primary, padding=1, scale=0.8),
                widget.GroupBox(
                    inactive=background,
                    block_highlight_text_color=textColor,
                    this_current_screen_border=textColor,
                    this_screen_border=background,
                    other_current_screen_border=secondary,
                    other_screen_border=secondary,
                    active=secondary,
                    background=primary,
                    padding_x=4
                ),
                separator(fg=primary, close=True),
                widget.Prompt(foreground=textColor),
                #widget.WindowName(),
                #widget.Chord(
                #    chords_colors={
                #        'launch': ("#ff0000", "#ffffff"),
                #    },
                #    name_transform=lambda name: name.upper(),
                #),
                widget.Spacer(),
                separator(fg=textColor, style="flames"),
                separator(fg=textColor, bg=background, close=True, style="arrows"),
                widget.Clock(format='%H:%M %d/%m/%y', foreground=textColor, background=background),
                separator(fg=textColor, bg=background, style="arrows"),
                separator(fg=textColor, close=True, style="flames"),
                widget.Spacer(),

                separator(fg=primary),
                widget.Net(interface="enp5s0", format="歷{down} ↓↑ {up}", foreground=textColor, background=primary),
                separator(fg=secondary, bg=primary),
                widget.CPU(format=':{freq_current}GHz {load_percent}%', background=secondary),
                widget.ThermalSensor(foreground=textColor, background=secondary, foreground_alert=primary),
                widget.Memory(
                    format=":{MemUsed: .0f}{mm}/{MemTotal: .0f}{mm}",
                    measure_mem='G',
                    foreground=textColor,
                    background=secondary
                ),
                separator(fg=background, bg=secondary),
                widget.TextBox("﬙", background=background, foreground=textColor),
                widget.NvidiaSensors(
                    threshold=60,
                    foreground=textColor,
                    background=background,
                    foreground_alert=primary
                ),
                separator(fg=background, close=True, style="triangleBottom"),
                widget.Systray(),
                # widget.Clock(format='%Y-%m-%d %a %I:%M %p', foreground="#ffaa00"),
                                # widget.Memory(foreground="#ff0000")
            ],
            22,
            background="00000000",
            border_color="00000000",
            border_width=6,
        ),
    ),
]
