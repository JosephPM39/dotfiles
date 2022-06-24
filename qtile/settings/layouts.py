from libqtile import layout
from libqtile.config import Match
from settings.palette import *

layouts = [
    #layout.Columns(border_focus_stack=['#0090ff', '#0083e8'], border_width=5, margin=4, single_margin=0,),
    layout.Max(),
    # Try more layouts by unleashing below layouts.
    # layout.Stack(num_stacks=2),
    # layout.Bsp(),
    # layout.Matrix(),
    layout.MonadTall(
        border_normal=background,
        border_focus=textColor,
        border_width=2,
        margin=10,
        single_border_width=0,
        single_margin=0,
    ),
    # layout.MonadWide(),
    # layout.RatioTile(),
    # layout.Tile(),
    # layout.Floating(),
    # layout.TreeTab(),
    # layout.VerticalTile(),
    # layout.Zoomy(),
]

floating_layout = layout.Floating(float_rules=[
    # Run the utility of `xprop` to see the wm class and name of an X client.
    *layout.Floating.default_float_rules,
    Match(wm_class='confirmreset'),  # gitk
    Match(wm_class='makebranch'),  # gitk
    Match(wm_class='maketag'),  # gitk
    Match(wm_class='ssh-askpass'),  # ssh-askpass
    Match(title='branchdialog'),  # gitk
    Match(title='pinentry'),  # GPG key password entry
])
