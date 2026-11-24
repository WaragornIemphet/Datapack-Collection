# ==================================================
#  1. TIME PARSING MATH (ROUND UP SECONDS)
# ==================================================

# --- A. BLOCK BREAK COOLDOWN ---
scoreboard players operation @s akasword_ui_bb = @s akasword_blockbreak_cd
scoreboard players add @s akasword_ui_bb 19
scoreboard players operation @s akasword_ui_bb /= #const20 akasword_const

# --- B. COUNTER COOLDOWN OR ACTIVE TIMERS ---
# Default State: Convert the standard 30-second skill cooldown timer
scoreboard players operation @s akasword_ui_cnt = @s akasword_cd
scoreboard players add @s akasword_ui_cnt 19
scoreboard players operation @s akasword_ui_cnt /= #const20 akasword_const

# Guard Stance State: Swap to display the active 3-second guard countdown (Only when tag is present)
execute if entity @s[tag=akasword_counter_active] run scoreboard players operation @s akasword_ui_cnt = @s akasword_counter_timer
execute if entity @s[tag=akasword_counter_active] run scoreboard players add @s akasword_ui_cnt 19
execute if entity @s[tag=akasword_counter_active] run scoreboard players operation @s akasword_ui_cnt /= #const20 akasword_const

# Teleportation State: Swap to display the 1-minute expiration window (Only when tag is present)
execute if entity @s[tag=akasword_counter_success] run scoreboard players operation @s akasword_ui_cnt = @s akasword_counter_timer
execute if entity @s[tag=akasword_counter_success] run scoreboard players add @s akasword_ui_cnt 19
execute if entity @s[tag=akasword_counter_success] run scoreboard players operation @s akasword_ui_cnt /= #const20 akasword_const


# ==================================================
#  2. CONSTRUCT DYNAMIC COMPONENTS (COMPACT STORAGE)
# ==================================================

# --- MODULE A: BLOCK BREAK COMPONENT ---
execute if score @s akasword_blockbreak_cd matches 1.. run data modify storage akasword:display bb_status set value [{"text":"Block Break: ","color":"red"},{"score":{"name":"@s","objective":"akasword_ui_bb"},"color":"red"},{"text":"s","color":"red"}]
execute if score @s akasword_blockbreak_cd matches 0 run data modify storage akasword:display bb_status set value [{"text":"Block Break: ","color":"gold"},{"text":"READY","color":"green","bold":true}]

# --- MODULE B: COUNTER / TELEPORTATION COMPONENT ---
# Condition 1: Skill is on hard cooldown (Displays "Counter: Xs")
execute if score @s akasword_cd matches 1.. run data modify storage akasword:display cnt_status set value [{"text":" | ","color":"dark_gray"},{"text":"Parry/TP: ","color":"red"},{"score":{"name":"@s","objective":"akasword_ui_cnt"},"color":"red"},{"text":"s","color":"red"}]

# Condition 2: Skill is fully available and player is idle (Displays "Counter: READY")
execute if score @s akasword_cd matches 0 if entity @s[tag=!akasword_counter_active,tag=!akasword_counter_success] run data modify storage akasword:display cnt_status set value [{"text":" | ","color":"dark_gray"},{"text":"Parry: ","color":"gold"},{"text":"READY","color":"green","bold":true}]

# Condition 3: Guarding stance is currently active (Displays "Counter: 3s" in aqua)
execute if entity @s[tag=akasword_counter_active] run data modify storage akasword:display cnt_status set value [{"text":" | ","color":"dark_gray"},{"text":"Blink: ","color":"aqua","bold":true},{"score":{"name":"@s","objective":"akasword_ui_cnt"},"color":"white"},{"text":"s","color":"white"}]

# Condition 4: Counter succeeded! (Changes string to "Teleportation: READY" in light purple)
execute if entity @s[tag=akasword_counter_success] run data modify storage akasword:display cnt_status set value [{"text":" | ","color":"dark_gray"},{"text":"Teleportation: ","color":"light_purple","bold":true},{"text":"READY ","color":"green","bold":true},{"text":"(","color":"gray"},{"score":{"name":"@s","objective":"akasword_ui_cnt"},"color":"white"},{"text":"s)","color":"white"}]


# ==================================================
#  3. MAIN DISPLAY PRINT
# ==================================================

# Blits both parsed components cleanly side-by-side onto the hotbar HUD
title @s actionbar ["",{"nbt":"bb_status","storage":"akasword:display","interpret":true},{"nbt":"cnt_status","storage":"akasword:display","interpret":true}]
