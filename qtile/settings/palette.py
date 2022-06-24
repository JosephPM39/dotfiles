import json
import sys
sys.path.insert(0, '..')
from settings.path import qtileSettingsPath


tp = qtileSettingsPath + '/colors/tailwind_colors.json'
with open(tp) as file:
    TAILWIND_COLORS = json.load(file)

textColor = TAILWIND_COLORS['gray']['50'] 
primary = TAILWIND_COLORS['azure']['500']
secondary = TAILWIND_COLORS['cerise']['500']
tertiary = TAILWIND_COLORS['gray']['500']
warning = TAILWIND_COLORS['pumpkin']['500']
success = TAILWIND_COLORS['chartreuse']['500'] 
danger = TAILWIND_COLORS['coral']['500']
info = TAILWIND_COLORS['blue']['500'] 
background = TAILWIND_COLORS['gray']['800']
