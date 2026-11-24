# ==================================================
#  JACKPOT TRINITY HUD
#  [ Ball | Door | Guard ]
# ==================================================

# 1. PRIORITY STATE: ROYAL GUARD ACTIVE
# If the guard stance is up, override everything else to show the active status.
execute if score @s akasword_cnt_active matches 1.. run title @s actionbar [{"text":"<<< ","color":"gold"},{"text":"DOOR GUARD","color":"yellow","bold":true},{"text":" >>>","color":"gold"}]
execute if score @s akasword_cnt_active matches 1.. run return 1

# ==================================================
#  2. MATH: CALCULATE SECONDS
# ==================================================

# Slot 1: Ball Throw
scoreboard players operation @s jackpot_ui_cd = @s akasword_jackpot_cd
scoreboard players add @s jackpot_ui_cd 19
scoreboard players operation @s jackpot_ui_cd /= #const20 akasword_const

# Slot 2: Door Crush (NEW)
# We use a new temp variable 'door_ui_cd'
scoreboard players operation @s door_ui_cd = @s akasword_door_cd
scoreboard players add @s door_ui_cd 19
scoreboard players operation @s door_ui_cd /= #const20 akasword_const

# Slot 3: Royal Guard
# We reuse 'akasword_ui_slot'
scoreboard players operation @s akasword_ui_slot = @s akasword_cnt_cd
scoreboard players add @s akasword_ui_slot 19
scoreboard players operation @s akasword_ui_slot /= #const20 akasword_const

# ==================================================
#  3. DISPLAY STATES (The 8 Combinations)
# ==================================================

# 1. ALL READY (Green / Green / Green)
execute if score @s akasword_jackpot_cd matches 0 if score @s akasword_door_cd matches 0 if score @s akasword_cnt_cd matches 0 run title @s actionbar ["",{"text":"[ ","color":"dark_gray"},{"text":"Ball: ","color":"gold"},{"text":"READY","color":"green","bold":true},{"text":" | ","color":"dark_gray"},{"text":"Shutter Doors: ","color":"gold"},{"text":"READY","color":"green","bold":true},{"text":" | ","color":"dark_gray"},{"text":"Door Guard: ","color":"gold"},{"text":"READY","color":"green","bold":true},{"text":" ]","color":"dark_gray"}]

# 2. BALL CD (Red / Green / Green)
execute if score @s akasword_jackpot_cd matches 1.. if score @s akasword_door_cd matches 0 if score @s akasword_cnt_cd matches 0 run title @s actionbar ["",{"text":"[ ","color":"dark_gray"},{"text":"Ball: ","color":"red"},{"score":{"name":"@s","objective":"jackpot_ui_cd"},"color":"red"},{"text":"s","color":"red"},{"text":" | ","color":"dark_gray"},{"text":"Shutter Doors: ","color":"gold"},{"text":"READY","color":"green","bold":true},{"text":" | ","color":"dark_gray"},{"text":"Door Guard: ","color":"gold"},{"text":"READY","color":"green","bold":true},{"text":" ]","color":"dark_gray"}]

# 3. DOOR CD (Green / Red / Green)
execute if score @s akasword_jackpot_cd matches 0 if score @s akasword_door_cd matches 1.. if score @s akasword_cnt_cd matches 0 run title @s actionbar ["",{"text":"[ ","color":"dark_gray"},{"text":"Ball: ","color":"gold"},{"text":"READY","color":"green","bold":true},{"text":" | ","color":"dark_gray"},{"text":"Shutter Doors: ","color":"red"},{"score":{"name":"@s","objective":"door_ui_cd"},"color":"red"},{"text":"s","color":"red"},{"text":" | ","color":"dark_gray"},{"text":"Door Guard: ","color":"gold"},{"text":"READY","color":"green","bold":true},{"text":" ]","color":"dark_gray"}]

# 4. GUARD CD (Green / Green / Red)
execute if score @s akasword_jackpot_cd matches 0 if score @s akasword_door_cd matches 0 if score @s akasword_cnt_cd matches 1.. run title @s actionbar ["",{"text":"[ ","color":"dark_gray"},{"text":"Ball: ","color":"gold"},{"text":"READY","color":"green","bold":true},{"text":" | ","color":"dark_gray"},{"text":"Shutter Doors: ","color":"gold"},{"text":"READY","color":"green","bold":true},{"text":" | ","color":"dark_gray"},{"text":"Door Guard: ","color":"red"},{"score":{"name":"@s","objective":"akasword_ui_slot"},"color":"red"},{"text":"s","color":"red"},{"text":" ]","color":"dark_gray"}]

# 5. BALL + DOOR CD (Red / Red / Green)
execute if score @s akasword_jackpot_cd matches 1.. if score @s akasword_door_cd matches 1.. if score @s akasword_cnt_cd matches 0 run title @s actionbar ["",{"text":"[ ","color":"dark_gray"},{"text":"Ball: ","color":"red"},{"score":{"name":"@s","objective":"jackpot_ui_cd"},"color":"red"},{"text":"s","color":"red"},{"text":" | ","color":"dark_gray"},{"text":"Shutter Doors: ","color":"red"},{"score":{"name":"@s","objective":"door_ui_cd"},"color":"red"},{"text":"s","color":"red"},{"text":" | ","color":"dark_gray"},{"text":"Door Guard: ","color":"gold"},{"text":"READY","color":"green","bold":true},{"text":" ]","color":"dark_gray"}]

# 6. BALL + GUARD CD (Red / Green / Red)
execute if score @s akasword_jackpot_cd matches 1.. if score @s akasword_door_cd matches 0 if score @s akasword_cnt_cd matches 1.. run title @s actionbar ["",{"text":"[ ","color":"dark_gray"},{"text":"Ball: ","color":"red"},{"score":{"name":"@s","objective":"jackpot_ui_cd"},"color":"red"},{"text":"s","color":"red"},{"text":" | ","color":"dark_gray"},{"text":"Shutter Doors: ","color":"gold"},{"text":"READY","color":"green","bold":true},{"text":" | ","color":"dark_gray"},{"text":"Door Guard: ","color":"red"},{"score":{"name":"@s","objective":"akasword_ui_slot"},"color":"red"},{"text":"s","color":"red"},{"text":" ]","color":"dark_gray"}]

# 7. DOOR + GUARD CD (Green / Red / Red)
execute if score @s akasword_jackpot_cd matches 0 if score @s akasword_door_cd matches 1.. if score @s akasword_cnt_cd matches 1.. run title @s actionbar ["",{"text":"[ ","color":"dark_gray"},{"text":"Ball: ","color":"gold"},{"text":"READY","color":"green","bold":true},{"text":" | ","color":"dark_gray"},{"text":"Shutter Doors: ","color":"red"},{"score":{"name":"@s","objective":"door_ui_cd"},"color":"red"},{"text":"s","color":"red"},{"text":" | ","color":"dark_gray"},{"text":"Door Guard: ","color":"red"},{"score":{"name":"@s","objective":"akasword_ui_slot"},"color":"red"},{"text":"s","color":"red"},{"text":" ]","color":"dark_gray"}]

# 8. ALL CD (Red / Red / Red)
execute if score @s akasword_jackpot_cd matches 1.. if score @s akasword_door_cd matches 1.. if score @s akasword_cnt_cd matches 1.. run title @s actionbar ["",{"text":"[ ","color":"dark_gray"},{"text":"Ball: ","color":"red"},{"score":{"name":"@s","objective":"jackpot_ui_cd"},"color":"red"},{"text":"s","color":"red"},{"text":" | ","color":"dark_gray"},{"text":"Shutter Doors: ","color":"red"},{"score":{"name":"@s","objective":"door_ui_cd"},"color":"red"},{"text":"s","color":"red"},{"text":" | ","color":"dark_gray"},{"text":"Door Guard: ","color":"red"},{"score":{"name":"@s","objective":"akasword_ui_slot"},"color":"red"},{"text":"s","color":"red"},{"text":" ]","color":"dark_gray"}]
