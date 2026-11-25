
scoreboard players operation @s akasword_ui_bb = @s akasword_blockbreak_cd
scoreboard players add @s akasword_ui_bb 19
scoreboard players operation @s akasword_ui_bb /= #const20 akasword_const

scoreboard players operation @s akasword_ui_cnt = @s akasword_cd
scoreboard players add @s akasword_ui_cnt 19
scoreboard players operation @s akasword_ui_cnt /= #const20 akasword_const

execute if entity @s[tag=akasword_counter_active] run scoreboard players operation @s akasword_ui_cnt = @s akasword_counter_timer
execute if entity @s[tag=akasword_counter_active] run scoreboard players add @s akasword_ui_cnt 19
execute if entity @s[tag=akasword_counter_active] run scoreboard players operation @s akasword_ui_cnt /= #const20 akasword_const

execute if entity @s[tag=akasword_counter_success] run scoreboard players operation @s akasword_ui_cnt = @s akasword_counter_timer
execute if entity @s[tag=akasword_counter_success] run scoreboard players add @s akasword_ui_cnt 19
execute if entity @s[tag=akasword_counter_success] run scoreboard players operation @s akasword_ui_cnt /= #const20 akasword_const



execute if score @s akasword_blockbreak_cd matches 1.. run data modify storage akasword:display bb_status set value [{"text":"Block Break: ","color":"red"},{"score":{"name":"@s","objective":"akasword_ui_bb"},"color":"red"},{"text":"s","color":"red"}]
execute if score @s akasword_blockbreak_cd matches 0 run data modify storage akasword:display bb_status set value [{"text":"Block Break: ","color":"gold"},{"text":"READY","color":"green","bold":true}]

execute if score @s akasword_cd matches 1.. run data modify storage akasword:display cnt_status set value [{"text":" | ","color":"dark_gray"},{"text":"Parry/TP: ","color":"red"},{"score":{"name":"@s","objective":"akasword_ui_cnt"},"color":"red"},{"text":"s","color":"red"}]

execute if score @s akasword_cd matches 0 if entity @s[tag=!akasword_counter_active,tag=!akasword_counter_success] run data modify storage akasword:display cnt_status set value [{"text":" | ","color":"dark_gray"},{"text":"Parry: ","color":"gold"},{"text":"READY","color":"green","bold":true}]

execute if entity @s[tag=akasword_counter_active] run data modify storage akasword:display cnt_status set value [{"text":" | ","color":"dark_gray"},{"text":"Blink: ","color":"aqua","bold":true},{"score":{"name":"@s","objective":"akasword_ui_cnt"},"color":"white"},{"text":"s","color":"white"}]

execute if entity @s[tag=akasword_counter_success] run data modify storage akasword:display cnt_status set value [{"text":" | ","color":"dark_gray"},{"text":"Teleportation: ","color":"light_purple","bold":true},{"text":"READY ","color":"green","bold":true},{"text":"(","color":"gray"},{"score":{"name":"@s","objective":"akasword_ui_cnt"},"color":"white"},{"text":"s)","color":"white"}]



title @s actionbar ["",{"nbt":"bb_status","storage":"akasword:display","interpret":true},{"nbt":"cnt_status","storage":"akasword:display","interpret":true}]
