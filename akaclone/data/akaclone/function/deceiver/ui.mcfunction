# ==================================================
#  PRIORITY STATE: RAM ACTIVE OVERRIDE
# ==================================================
execute if score @s ramactive matches 1.. run title @s actionbar [{"text":"<<< ","color":"gold"},{"text":"RAMMING","color":"yellow","bold":true},{"text":" >>>","color":"gold"}]
execute if score @s ramactive matches 1.. run return 1

# ==================================================
#  1. MATH: CALCULATE SECONDS
# ==================================================
scoreboard players operation @s fireui = @s firecd
scoreboard players add @s fireui 19
scoreboard players operation @s fireui /= #const20 akaconst

scoreboard players operation @s flameui = @s flamecd
scoreboard players add @s flameui 19
scoreboard players operation @s flameui /= #const20 akaconst

scoreboard players operation @s disruptui = @s disruptcd
scoreboard players add @s disruptui 19
scoreboard players operation @s disruptui /= #const20 akaconst

scoreboard players operation @s disruptwinui = @s disruptwin
scoreboard players add @s disruptwinui 19
scoreboard players operation @s disruptwinui /= #const20 akaconst

# ==================================================
#  2. DISPLAY STATES (12 Combinations)
# ==================================================

# 1. Fire READY | Flame READY | Disrupt READY
execute if score @s firecd matches 0 if score @s flamecd matches 0 if score @s disruptcd matches 0 if score @s disruptuse matches 0 run title @s actionbar ["",{"text":"[ ","color":"dark_gray"},{"text":"Aka Fire: ","color":"gold"},{"text":"READY","color":"green","bold":true},{"text":" | ","color":"dark_gray"},{"text":"Akaflames: ","color":"gold"},{"text":"READY","color":"green","bold":true},{"text":" | ","color":"dark_gray"},{"text":"Disruption: ","color":"gold"},{"text":"READY","color":"green","bold":true},{"text":" ]","color":"dark_gray"}]

# 2. Fire READY | Flame READY | Disrupt COMBO (1..2 uses)
execute if score @s firecd matches 0 if score @s flamecd matches 0 if score @s disruptcd matches 0 if score @s disruptuse matches 1.. run title @s actionbar ["",{"text":"[ ","color":"dark_gray"},{"text":"Aka Fire: ","color":"gold"},{"text":"READY","color":"green","bold":true},{"text":" | ","color":"dark_gray"},{"text":"Akaflames: ","color":"gold"},{"text":"READY","color":"green","bold":true},{"text":" | ","color":"dark_gray"},{"text":"Disruption: ","color":"gold"},{"text":"READY ","color":"green","bold":true},{"text":"[","color":"gray"},{"score":{"name":"@s","objective":"disruptuse"},"color":"white"},{"text":"/3 - ","color":"gray"},{"score":{"name":"@s","objective":"disruptwinui"},"color":"yellow"},{"text":"s]","color":"gray"},{"text":" ]","color":"dark_gray"}]

# 3. Fire READY | Flame READY | Disrupt CD
execute if score @s firecd matches 0 if score @s flamecd matches 0 if score @s disruptcd matches 1.. run title @s actionbar ["",{"text":"[ ","color":"dark_gray"},{"text":"Aka Fire: ","color":"gold"},{"text":"READY","color":"green","bold":true},{"text":" | ","color":"dark_gray"},{"text":"Akaflames: ","color":"gold"},{"text":"READY","color":"green","bold":true},{"text":" | ","color":"dark_gray"},{"text":"Disruption: ","color":"red"},{"score":{"name":"@s","objective":"disruptui"},"color":"red"},{"text":"s","color":"red"},{"text":" ]","color":"dark_gray"}]

# 4. Fire CD | Flame READY | Disrupt READY
execute if score @s firecd matches 1.. if score @s flamecd matches 0 if score @s disruptcd matches 0 if score @s disruptuse matches 0 run title @s actionbar ["",{"text":"[ ","color":"dark_gray"},{"text":"Aka Fire: ","color":"red"},{"score":{"name":"@s","objective":"fireui"},"color":"red"},{"text":"s","color":"red"},{"text":" | ","color":"dark_gray"},{"text":"Akaflames: ","color":"gold"},{"text":"READY","color":"green","bold":true},{"text":" | ","color":"dark_gray"},{"text":"Disruption: ","color":"gold"},{"text":"READY","color":"green","bold":true},{"text":" ]","color":"dark_gray"}]

# 5. Fire CD | Flame READY | Disrupt COMBO
execute if score @s firecd matches 1.. if score @s flamecd matches 0 if score @s disruptcd matches 0 if score @s disruptuse matches 1.. run title @s actionbar ["",{"text":"[ ","color":"dark_gray"},{"text":"Aka Fire: ","color":"red"},{"score":{"name":"@s","objective":"fireui"},"color":"red"},{"text":"s","color":"red"},{"text":" | ","color":"dark_gray"},{"text":"Akaflames: ","color":"gold"},{"text":"READY","color":"green","bold":true},{"text":" | ","color":"dark_gray"},{"text":"Disruption: ","color":"gold"},{"text":"READY ","color":"green","bold":true},{"text":"[","color":"gray"},{"score":{"name":"@s","objective":"disruptuse"},"color":"white"},{"text":"/3 - ","color":"gray"},{"score":{"name":"@s","objective":"disruptwinui"},"color":"yellow"},{"text":"s]","color":"gray"},{"text":" ]","color":"dark_gray"}]

# 6. Fire CD | Flame READY | Disrupt CD
execute if score @s firecd matches 1.. if score @s flamecd matches 0 if score @s disruptcd matches 1.. run title @s actionbar ["",{"text":"[ ","color":"dark_gray"},{"text":"Aka Fire: ","color":"red"},{"score":{"name":"@s","objective":"fireui"},"color":"red"},{"text":"s","color":"red"},{"text":" | ","color":"dark_gray"},{"text":"Akaflames: ","color":"gold"},{"text":"READY","color":"green","bold":true},{"text":" | ","color":"dark_gray"},{"text":"Disruption: ","color":"red"},{"score":{"name":"@s","objective":"disruptui"},"color":"red"},{"text":"s","color":"red"},{"text":" ]","color":"dark_gray"}]

# 7. Fire READY | Flame CD | Disrupt READY
execute if score @s firecd matches 0 if score @s flamecd matches 1.. if score @s disruptcd matches 0 if score @s disruptuse matches 0 run title @s actionbar ["",{"text":"[ ","color":"dark_gray"},{"text":"Aka Fire: ","color":"gold"},{"text":"READY","color":"green","bold":true},{"text":" | ","color":"dark_gray"},{"text":"Akaflames: ","color":"red"},{"score":{"name":"@s","objective":"flameui"},"color":"red"},{"text":"s","color":"red"},{"text":" | ","color":"dark_gray"},{"text":"Disruption: ","color":"gold"},{"text":"READY","color":"green","bold":true},{"text":" ]","color":"dark_gray"}]

# 8. Fire READY | Flame CD | Disrupt COMBO
execute if score @s firecd matches 0 if score @s flamecd matches 1.. if score @s disruptcd matches 0 if score @s disruptuse matches 1.. run title @s actionbar ["",{"text":"[ ","color":"dark_gray"},{"text":"Aka Fire: ","color":"gold"},{"text":"READY","color":"green","bold":true},{"text":" | ","color":"dark_gray"},{"text":"Akaflames: ","color":"red"},{"score":{"name":"@s","objective":"flameui"},"color":"red"},{"text":"s","color":"red"},{"text":" | ","color":"dark_gray"},{"text":"Disruption: ","color":"gold"},{"text":"READY ","color":"green","bold":true},{"text":"[","color":"gray"},{"score":{"name":"@s","objective":"disruptuse"},"color":"white"},{"text":"/3 - ","color":"gray"},{"score":{"name":"@s","objective":"disruptwinui"},"color":"yellow"},{"text":"s]","color":"gray"},{"text":" ]","color":"dark_gray"}]

# 9. Fire READY | Flame CD | Disrupt CD
execute if score @s firecd matches 0 if score @s flamecd matches 1.. if score @s disruptcd matches 1.. run title @s actionbar ["",{"text":"[ ","color":"dark_gray"},{"text":"Aka Fire: ","color":"gold"},{"text":"READY","color":"green","bold":true},{"text":" | ","color":"dark_gray"},{"text":"Akaflames: ","color":"red"},{"score":{"name":"@s","objective":"flameui"},"color":"red"},{"text":"s","color":"red"},{"text":" | ","color":"dark_gray"},{"text":"Disruption: ","color":"red"},{"score":{"name":"@s","objective":"disruptui"},"color":"red"},{"text":"s","color":"red"},{"text":" ]","color":"dark_gray"}]

# 10. Fire CD | Flame CD | Disrupt READY
execute if score @s firecd matches 1.. if score @s flamecd matches 1.. if score @s disruptcd matches 0 if score @s disruptuse matches 0 run title @s actionbar ["",{"text":"[ ","color":"dark_gray"},{"text":"Aka Fire: ","color":"red"},{"score":{"name":"@s","objective":"fireui"},"color":"red"},{"text":"s","color":"red"},{"text":" | ","color":"dark_gray"},{"text":"Akaflames: ","color":"red"},{"score":{"name":"@s","objective":"flameui"},"color":"red"},{"text":"s","color":"red"},{"text":" | ","color":"dark_gray"},{"text":"Disruption: ","color":"gold"},{"text":"READY","color":"green","bold":true},{"text":" ]","color":"dark_gray"}]

# 11. Fire CD | Flame CD | Disrupt COMBO
execute if score @s firecd matches 1.. if score @s flamecd matches 1.. if score @s disruptcd matches 0 if score @s disruptuse matches 1.. run title @s actionbar ["",{"text":"[ ","color":"dark_gray"},{"text":"Aka Fire: ","color":"red"},{"score":{"name":"@s","objective":"fireui"},"color":"red"},{"text":"s","color":"red"},{"text":" | ","color":"dark_gray"},{"text":"Akaflames: ","color":"red"},{"score":{"name":"@s","objective":"flameui"},"color":"red"},{"text":"s","color":"red"},{"text":" | ","color":"dark_gray"},{"text":"Disruption: ","color":"gold"},{"text":"READY ","color":"green","bold":true},{"text":"[","color":"gray"},{"score":{"name":"@s","objective":"disruptuse"},"color":"white"},{"text":"/3 - ","color":"gray"},{"score":{"name":"@s","objective":"disruptwinui"},"color":"yellow"},{"text":"s]","color":"gray"},{"text":" ]","color":"dark_gray"}]

# 12. Fire CD | Flame CD | Disrupt CD
execute if score @s firecd matches 1.. if score @s flamecd matches 1.. if score @s disruptcd matches 1.. run title @s actionbar ["",{"text":"[ ","color":"dark_gray"},{"text":"Aka Fire: ","color":"red"},{"score":{"name":"@s","objective":"fireui"},"color":"red"},{"text":"s","color":"red"},{"text":" | ","color":"dark_gray"},{"text":"Akaflames: ","color":"red"},{"score":{"name":"@s","objective":"flameui"},"color":"red"},{"text":"s","color":"red"},{"text":" | ","color":"dark_gray"},{"text":"Disruption: ","color":"red"},{"score":{"name":"@s","objective":"disruptui"},"color":"red"},{"text":"s","color":"red"},{"text":" ]","color":"dark_gray"}]