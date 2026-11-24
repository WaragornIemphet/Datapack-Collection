# ==================================================
#  QUAD SKILL HUD
#  [ Surge | Rush | Volley | Overwhelm ]
# ==================================================

# 1. MATH: CALCULATE SECONDS
# ==================================================

# Surge
scoreboard players operation @s ui_surge = @s jackpotsurge_cd
scoreboard players add @s ui_surge 19
scoreboard players operation @s ui_surge /= #const20 akasword_const

# Rush
scoreboard players operation @s ui_rush = @s luckyrush_cd
scoreboard players add @s ui_rush 19
scoreboard players operation @s ui_rush /= #const20 akasword_const

# Volley
scoreboard players operation @s ui_volley = @s luckyvolley_cd
scoreboard players add @s ui_volley 19
scoreboard players operation @s ui_volley /= #const20 akasword_const

# Overwhelm
scoreboard players operation @s ui_over = @s overwhelm_cd
scoreboard players add @s ui_over 19
scoreboard players operation @s ui_over /= #const20 akasword_const

# ==================================================
#  2. DISPLAY STATES (16 Permutations)
# ==================================================
# 0 = READY (Green)
# 1 = COOLDOWN (Red)

# --------------------------------------------------
# GROUP A: ALL READY (0000)
# --------------------------------------------------
execute if score @s jackpotsurge_cd matches 0 if score @s luckyrush_cd matches 0 if score @s luckyvolley_cd matches 0 if score @s overwhelm_cd matches 0 run title @s actionbar ["",{"text":"[ ","color":"dark_gray"},{"text":"Surge: ","color":"gold"},{"text":"READY","color":"green","bold":true},{"text":" | ","color":"dark_gray"},{"text":"Rush: ","color":"gold"},{"text":"READY","color":"green","bold":true},{"text":" | ","color":"dark_gray"},{"text":"Volley: ","color":"gold"},{"text":"READY","color":"green","bold":true},{"text":" | ","color":"dark_gray"},{"text":"Overwhelm: ","color":"gold"},{"text":"READY","color":"green","bold":true},{"text":" ]","color":"dark_gray"}]

# --------------------------------------------------
# GROUP B: SINGLE COOLDOWN (1000, 0100, 0010, 0001)
# --------------------------------------------------
# Surge CD
execute if score @s jackpotsurge_cd matches 1.. if score @s luckyrush_cd matches 0 if score @s luckyvolley_cd matches 0 if score @s overwhelm_cd matches 0 run title @s actionbar ["",{"text":"[ ","color":"dark_gray"},{"text":"Surge: ","color":"red"},{"score":{"name":"@s","objective":"ui_surge"},"color":"red"},{"text":"s","color":"red"},{"text":" | ","color":"dark_gray"},{"text":"Rush: ","color":"gold"},{"text":"READY","color":"green","bold":true},{"text":" | ","color":"dark_gray"},{"text":"Volley: ","color":"gold"},{"text":"READY","color":"green","bold":true},{"text":" | ","color":"dark_gray"},{"text":"Overwhelm: ","color":"gold"},{"text":"READY","color":"green","bold":true},{"text":" ]","color":"dark_gray"}]

# Rush CD
execute if score @s jackpotsurge_cd matches 0 if score @s luckyrush_cd matches 1.. if score @s luckyvolley_cd matches 0 if score @s overwhelm_cd matches 0 run title @s actionbar ["",{"text":"[ ","color":"dark_gray"},{"text":"Surge: ","color":"gold"},{"text":"READY","color":"green","bold":true},{"text":" | ","color":"dark_gray"},{"text":"Rush: ","color":"red"},{"score":{"name":"@s","objective":"ui_rush"},"color":"red"},{"text":"s","color":"red"},{"text":" | ","color":"dark_gray"},{"text":"Volley: ","color":"gold"},{"text":"READY","color":"green","bold":true},{"text":" | ","color":"dark_gray"},{"text":"Overwhelm: ","color":"gold"},{"text":"READY","color":"green","bold":true},{"text":" ]","color":"dark_gray"}]

# Volley CD
execute if score @s jackpotsurge_cd matches 0 if score @s luckyrush_cd matches 0 if score @s luckyvolley_cd matches 1.. if score @s overwhelm_cd matches 0 run title @s actionbar ["",{"text":"[ ","color":"dark_gray"},{"text":"Surge: ","color":"gold"},{"text":"READY","color":"green","bold":true},{"text":" | ","color":"dark_gray"},{"text":"Rush: ","color":"gold"},{"text":"READY","color":"green","bold":true},{"text":" | ","color":"dark_gray"},{"text":"Volley: ","color":"red"},{"score":{"name":"@s","objective":"ui_volley"},"color":"red"},{"text":"s","color":"red"},{"text":" | ","color":"dark_gray"},{"text":"Overwhelm: ","color":"gold"},{"text":"READY","color":"green","bold":true},{"text":" ]","color":"dark_gray"}]

# Overwhelm CD
execute if score @s jackpotsurge_cd matches 0 if score @s luckyrush_cd matches 0 if score @s luckyvolley_cd matches 0 if score @s overwhelm_cd matches 1.. run title @s actionbar ["",{"text":"[ ","color":"dark_gray"},{"text":"Surge: ","color":"gold"},{"text":"READY","color":"green","bold":true},{"text":" | ","color":"dark_gray"},{"text":"Rush: ","color":"gold"},{"text":"READY","color":"green","bold":true},{"text":" | ","color":"dark_gray"},{"text":"Volley: ","color":"gold"},{"text":"READY","color":"green","bold":true},{"text":" | ","color":"dark_gray"},{"text":"Overwhelm: ","color":"red"},{"score":{"name":"@s","objective":"ui_over"},"color":"red"},{"text":"s","color":"red"},{"text":" ]","color":"dark_gray"}]

# --------------------------------------------------
# GROUP C: DOUBLE COOLDOWN (6 Variants)
# --------------------------------------------------
# Surge + Rush
execute if score @s jackpotsurge_cd matches 1.. if score @s luckyrush_cd matches 1.. if score @s luckyvolley_cd matches 0 if score @s overwhelm_cd matches 0 run title @s actionbar ["",{"text":"[ ","color":"dark_gray"},{"text":"Surge: ","color":"red"},{"score":{"name":"@s","objective":"ui_surge"},"color":"red"},{"text":"s","color":"red"},{"text":" | ","color":"dark_gray"},{"text":"Rush: ","color":"red"},{"score":{"name":"@s","objective":"ui_rush"},"color":"red"},{"text":"s","color":"red"},{"text":" | ","color":"dark_gray"},{"text":"Volley: ","color":"gold"},{"text":"READY","color":"green","bold":true},{"text":" | ","color":"dark_gray"},{"text":"Overwhelm: ","color":"gold"},{"text":"READY","color":"green","bold":true},{"text":" ]","color":"dark_gray"}]

# Surge + Volley
execute if score @s jackpotsurge_cd matches 1.. if score @s luckyrush_cd matches 0 if score @s luckyvolley_cd matches 1.. if score @s overwhelm_cd matches 0 run title @s actionbar ["",{"text":"[ ","color":"dark_gray"},{"text":"Surge: ","color":"red"},{"score":{"name":"@s","objective":"ui_surge"},"color":"red"},{"text":"s","color":"red"},{"text":" | ","color":"dark_gray"},{"text":"Rush: ","color":"gold"},{"text":"READY","color":"green","bold":true},{"text":" | ","color":"dark_gray"},{"text":"Volley: ","color":"red"},{"score":{"name":"@s","objective":"ui_volley"},"color":"red"},{"text":"s","color":"red"},{"text":" | ","color":"dark_gray"},{"text":"Overwhelm: ","color":"gold"},{"text":"READY","color":"green","bold":true},{"text":" ]","color":"dark_gray"}]

# Surge + Overwhelm
execute if score @s jackpotsurge_cd matches 1.. if score @s luckyrush_cd matches 0 if score @s luckyvolley_cd matches 0 if score @s overwhelm_cd matches 1.. run title @s actionbar ["",{"text":"[ ","color":"dark_gray"},{"text":"Surge: ","color":"red"},{"score":{"name":"@s","objective":"ui_surge"},"color":"red"},{"text":"s","color":"red"},{"text":" | ","color":"dark_gray"},{"text":"Rush: ","color":"gold"},{"text":"READY","color":"green","bold":true},{"text":" | ","color":"dark_gray"},{"text":"Volley: ","color":"gold"},{"text":"READY","color":"green","bold":true},{"text":" | ","color":"dark_gray"},{"text":"Overwhelm: ","color":"red"},{"score":{"name":"@s","objective":"ui_over"},"color":"red"},{"text":"s","color":"red"},{"text":" ]","color":"dark_gray"}]

# Rush + Volley
execute if score @s jackpotsurge_cd matches 0 if score @s luckyrush_cd matches 1.. if score @s luckyvolley_cd matches 1.. if score @s overwhelm_cd matches 0 run title @s actionbar ["",{"text":"[ ","color":"dark_gray"},{"text":"Surge: ","color":"gold"},{"text":"READY","color":"green","bold":true},{"text":" | ","color":"dark_gray"},{"text":"Rush: ","color":"red"},{"score":{"name":"@s","objective":"ui_rush"},"color":"red"},{"text":"s","color":"red"},{"text":" | ","color":"dark_gray"},{"text":"Volley: ","color":"red"},{"score":{"name":"@s","objective":"ui_volley"},"color":"red"},{"text":"s","color":"red"},{"text":" | ","color":"dark_gray"},{"text":"Overwhelm: ","color":"gold"},{"text":"READY","color":"green","bold":true},{"text":" ]","color":"dark_gray"}]

# Rush + Overwhelm
execute if score @s jackpotsurge_cd matches 0 if score @s luckyrush_cd matches 1.. if score @s luckyvolley_cd matches 0 if score @s overwhelm_cd matches 1.. run title @s actionbar ["",{"text":"[ ","color":"dark_gray"},{"text":"Surge: ","color":"gold"},{"text":"READY","color":"green","bold":true},{"text":" | ","color":"dark_gray"},{"text":"Rush: ","color":"red"},{"score":{"name":"@s","objective":"ui_rush"},"color":"red"},{"text":"s","color":"red"},{"text":" | ","color":"dark_gray"},{"text":"Volley: ","color":"gold"},{"text":"READY","color":"green","bold":true},{"text":" | ","color":"dark_gray"},{"text":"Overwhelm: ","color":"red"},{"score":{"name":"@s","objective":"ui_over"},"color":"red"},{"text":"s","color":"red"},{"text":" ]","color":"dark_gray"}]

# Volley + Overwhelm
execute if score @s jackpotsurge_cd matches 0 if score @s luckyrush_cd matches 0 if score @s luckyvolley_cd matches 1.. if score @s overwhelm_cd matches 1.. run title @s actionbar ["",{"text":"[ ","color":"dark_gray"},{"text":"Surge: ","color":"gold"},{"text":"READY","color":"green","bold":true},{"text":" | ","color":"dark_gray"},{"text":"Rush: ","color":"gold"},{"text":"READY","color":"green","bold":true},{"text":" | ","color":"dark_gray"},{"text":"Volley: ","color":"red"},{"score":{"name":"@s","objective":"ui_volley"},"color":"red"},{"text":"s","color":"red"},{"text":" | ","color":"dark_gray"},{"text":"Overwhelm: ","color":"red"},{"score":{"name":"@s","objective":"ui_over"},"color":"red"},{"text":"s","color":"red"},{"text":" ]","color":"dark_gray"}]

# --------------------------------------------------
# GROUP D: TRIPLE COOLDOWN (4 Variants)
# --------------------------------------------------
# Surge + Rush + Volley
execute if score @s jackpotsurge_cd matches 1.. if score @s luckyrush_cd matches 1.. if score @s luckyvolley_cd matches 1.. if score @s overwhelm_cd matches 0 run title @s actionbar ["",{"text":"[ ","color":"dark_gray"},{"text":"Surge: ","color":"red"},{"score":{"name":"@s","objective":"ui_surge"},"color":"red"},{"text":"s","color":"red"},{"text":" | ","color":"dark_gray"},{"text":"Rush: ","color":"red"},{"score":{"name":"@s","objective":"ui_rush"},"color":"red"},{"text":"s","color":"red"},{"text":" | ","color":"dark_gray"},{"text":"Volley: ","color":"red"},{"score":{"name":"@s","objective":"ui_volley"},"color":"red"},{"text":"s","color":"red"},{"text":" | ","color":"dark_gray"},{"text":"Overwhelm: ","color":"gold"},{"text":"READY","color":"green","bold":true},{"text":" ]","color":"dark_gray"}]

# Surge + Rush + Overwhelm
execute if score @s jackpotsurge_cd matches 1.. if score @s luckyrush_cd matches 1.. if score @s luckyvolley_cd matches 0 if score @s overwhelm_cd matches 1.. run title @s actionbar ["",{"text":"[ ","color":"dark_gray"},{"text":"Surge: ","color":"red"},{"score":{"name":"@s","objective":"ui_surge"},"color":"red"},{"text":"s","color":"red"},{"text":" | ","color":"dark_gray"},{"text":"Rush: ","color":"red"},{"score":{"name":"@s","objective":"ui_rush"},"color":"red"},{"text":"s","color":"red"},{"text":" | ","color":"dark_gray"},{"text":"Volley: ","color":"gold"},{"text":"READY","color":"green","bold":true},{"text":" | ","color":"dark_gray"},{"text":"Overwhelm: ","color":"red"},{"score":{"name":"@s","objective":"ui_over"},"color":"red"},{"text":"s","color":"red"},{"text":" ]","color":"dark_gray"}]

# Surge + Volley + Overwhelm
execute if score @s jackpotsurge_cd matches 1.. if score @s luckyrush_cd matches 0 if score @s luckyvolley_cd matches 1.. if score @s overwhelm_cd matches 1.. run title @s actionbar ["",{"text":"[ ","color":"dark_gray"},{"text":"Surge: ","color":"red"},{"score":{"name":"@s","objective":"ui_surge"},"color":"red"},{"text":"s","color":"red"},{"text":" | ","color":"dark_gray"},{"text":"Rush: ","color":"gold"},{"text":"READY","color":"green","bold":true},{"text":" | ","color":"dark_gray"},{"text":"Volley: ","color":"red"},{"score":{"name":"@s","objective":"ui_volley"},"color":"red"},{"text":"s","color":"red"},{"text":" | ","color":"dark_gray"},{"text":"Overwhelm: ","color":"red"},{"score":{"name":"@s","objective":"ui_over"},"color":"red"},{"text":"s","color":"red"},{"text":" ]","color":"dark_gray"}]

# Rush + Volley + Overwhelm
execute if score @s jackpotsurge_cd matches 0 if score @s luckyrush_cd matches 1.. if score @s luckyvolley_cd matches 1.. if score @s overwhelm_cd matches 1.. run title @s actionbar ["",{"text":"[ ","color":"dark_gray"},{"text":"Surge: ","color":"gold"},{"text":"READY","color":"green","bold":true},{"text":" | ","color":"dark_gray"},{"text":"Rush: ","color":"red"},{"score":{"name":"@s","objective":"ui_rush"},"color":"red"},{"text":"s","color":"red"},{"text":" | ","color":"dark_gray"},{"text":"Volley: ","color":"red"},{"score":{"name":"@s","objective":"ui_volley"},"color":"red"},{"text":"s","color":"red"},{"text":" | ","color":"dark_gray"},{"text":"Overwhelm: ","color":"red"},{"score":{"name":"@s","objective":"ui_over"},"color":"red"},{"text":"s","color":"red"},{"text":" ]","color":"dark_gray"}]

# --------------------------------------------------
# GROUP E: ALL COOLDOWN (1111)
# --------------------------------------------------
execute if score @s jackpotsurge_cd matches 1.. if score @s luckyrush_cd matches 1.. if score @s luckyvolley_cd matches 1.. if score @s overwhelm_cd matches 1.. run title @s actionbar ["",{"text":"[ ","color":"dark_gray"},{"text":"Surge: ","color":"red"},{"score":{"name":"@s","objective":"ui_surge"},"color":"red"},{"text":"s","color":"red"},{"text":" | ","color":"dark_gray"},{"text":"Rush: ","color":"red"},{"score":{"name":"@s","objective":"ui_rush"},"color":"red"},{"text":"s","color":"red"},{"text":" | ","color":"dark_gray"},{"text":"Volley: ","color":"red"},{"score":{"name":"@s","objective":"ui_volley"},"color":"red"},{"text":"s","color":"red"},{"text":" | ","color":"dark_gray"},{"text":"Overwhelm: ","color":"red"},{"score":{"name":"@s","objective":"ui_over"},"color":"red"},{"text":"s","color":"red"},{"text":" ]","color":"dark_gray"}]
