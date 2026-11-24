
scoreboard players operation @s vanadium_ui_dash = @s vanadium_dash_cd
scoreboard players add @s vanadium_ui_dash 19
scoreboard players operation @s vanadium_ui_dash /= #const20 akasword_const


scoreboard players operation @s vanadium_ui_res = @s vanadium_resist_cd
scoreboard players add @s vanadium_ui_res 19
scoreboard players operation @s vanadium_ui_res /= #const20 akasword_const

execute if score @s vanadium_dash_cd matches 1.. run data modify storage akasword:display dash_status set value [{"text":"Dash: ","color":"red"},{"score":{"name":"@s","objective":"vanadium_ui_dash"},"color":"red"},{"text":"s","color":"red"}]
execute if score @s vanadium_dash_cd matches 0 run data modify storage akasword:display dash_status set value [{"text":"Dash: ","color":"gold"},{"text":"READY","color":"green","bold":true}]


execute if score @s vanadium_resist_cd matches 1.. run data modify storage akasword:display res_status set value [{"text":" | ","color":"dark_gray"},{"text":"Guard: ","color":"red"},{"score":{"name":"@s","objective":"vanadium_ui_res"},"color":"red"},{"text":"s","color":"red"}]
execute if score @s vanadium_resist_cd matches 0 run data modify storage akasword:display res_status set value [{"text":" | ","color":"dark_gray"},{"text":"Guard: ","color":"gold"},{"text":"READY","color":"green","bold":true}]


title @s actionbar ["",{"nbt":"dash_status","storage":"akasword:display","interpret":true},{"nbt":"res_status","storage":"akasword:display","interpret":true}]
