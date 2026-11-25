
scoreboard players operation @s disp_sec = @s move_timer
scoreboard players operation @s disp_sec /= #const 20
scoreboard players operation @s disp_dec = @s move_timer
scoreboard players operation @s disp_dec %= #const 20
scoreboard players operation @s disp_dec /= #const 2

scoreboard players operation @s cd_sec = @s skill_cd
scoreboard players add @s cd_sec 19
scoreboard players operation @s cd_sec /= #const 20
execute if score @s skill_active matches 1.. run scoreboard players operation @s cd_sec = @s skill_active
execute if score @s skill_active matches 1.. run scoreboard players add @s cd_sec 19
execute if score @s skill_active matches 1.. run scoreboard players operation @s cd_sec /= #const 20

scoreboard players operation @s ui_ult = @s mih_ult_cd
scoreboard players add @s ui_ult 19
scoreboard players operation @s ui_ult /= #const 20

execute if score @s knife_reload matches 1.. run scoreboard players operation @s ui_knife = @s knife_reload
execute if score @s knife_reload matches 1.. run scoreboard players add @s ui_knife 19
execute if score @s knife_reload matches 1.. run scoreboard players operation @s ui_knife /= #const 20



execute if score @s mih_ult_cd matches 1.. run data modify storage akasword:display ult_status set value [{"text":" | ","color":"dark_gray"},{"text":"Ult: ","color":"red"},{"score":{"name":"@s","objective":"ui_ult"},"color":"red"},{"text":"s","color":"red"}]
execute if score @s mih_ult_cd matches 0 run data modify storage akasword:display ult_status set value [{"text":" | ","color":"dark_gray"},{"text":"Ult: ","color":"gold"},{"text":"READY","color":"green","bold":true}]

execute if score @s knife_reload matches 1.. run data modify storage akasword:display knife_status set value [{"text":" | ","color":"dark_gray"},{"text":"Knives: ","color":"red"},{"score":{"name":"@s","objective":"ui_knife"},"color":"red"},{"text":"s","color":"red"}]
execute if score @s knife_reload matches 0 run data modify storage akasword:display knife_status set value [{"text":" | ","color":"dark_gray"},{"text":"Knives: ","color":"gold"},{"score":{"name":"@s","objective":"knife_ammo"},"color":"yellow"},{"text":"/6","color":"gold"}]



execute if score @s skill_active matches 1.. if score @s speed_stage matches ..19 run title @s actionbar ["",{"text":"Accel: ","color":"gold","bold":true},{"score":{"name":"@s","objective":"speed_stage"},"color":"aqua"},{"text":" [PAUSED]","color":"gray"},{"text":" | ","color":"dark_gray"},{"text":"TIME WARP: ","color":"light_purple","bold":true},{"score":{"name":"@s","objective":"cd_sec"},"color":"white"},{"text":"s","color":"white"},{"nbt":"knife_status","storage":"akasword:display","interpret":true},{"nbt":"ult_status","storage":"akasword:display","interpret":true}]
execute if score @s skill_active matches 1.. if score @s speed_stage matches 20.. run title @s actionbar ["",{"text":"Accel: ","color":"gold","bold":true},{"text":"MAX","color":"red","bold":true},{"text":" [PAUSED]","color":"gray"},{"text":" | ","color":"dark_gray"},{"text":"TIME WARP: ","color":"light_purple","bold":true},{"score":{"name":"@s","objective":"cd_sec"},"color":"white"},{"text":"s","color":"white"},{"nbt":"knife_status","storage":"akasword:display","interpret":true},{"nbt":"ult_status","storage":"akasword:display","interpret":true}]

execute if score @s skill_active matches 0 if score @s skill_cd matches 1.. if score @s speed_stage matches ..19 run title @s actionbar ["",{"text":"Accel: ","color":"gold","bold":true},{"score":{"name":"@s","objective":"speed_stage"},"color":"aqua"},{"text":" . ","color":"gray"},{"score":{"name":"@s","objective":"disp_sec"},"color":"yellow"},{"text":".","color":"yellow"},{"score":{"name":"@s","objective":"disp_dec"},"color":"yellow"},{"text":" | ","color":"dark_gray"},{"text":"Skill: ","color":"red"},{"score":{"name":"@s","objective":"cd_sec"},"color":"red"},{"text":"s","color":"red"},{"nbt":"knife_status","storage":"akasword:display","interpret":true},{"nbt":"ult_status","storage":"akasword:display","interpret":true}]
execute if score @s skill_active matches 0 if score @s skill_cd matches 1.. if score @s speed_stage matches 20.. run title @s actionbar ["",{"text":"Accel: ","color":"gold","bold":true},{"text":"MAX","color":"aqua","bold":true},{"text":" | ","color":"dark_gray"},{"text":"Skill: ","color":"red"},{"score":{"name":"@s","objective":"cd_sec"},"color":"red"},{"text":"s","color":"red"},{"nbt":"knife_status","storage":"akasword:display","interpret":true},{"nbt":"ult_status","storage":"akasword:display","interpret":true}]

execute if score @s skill_active matches 0 if score @s skill_cd matches 0 if score @s speed_stage matches ..19 run title @s actionbar ["",{"text":"Accel: ","color":"gold","bold":true},{"score":{"name":"@s","objective":"speed_stage"},"color":"aqua"},{"text":" . ","color":"gray"},{"score":{"name":"@s","objective":"disp_sec"},"color":"yellow"},{"text":".","color":"yellow"},{"score":{"name":"@s","objective":"disp_dec"},"color":"yellow"},{"text":" | ","color":"dark_gray"},{"text":"Skill: ","color":"gold"},{"text":"READY","color":"green","bold":true},{"nbt":"knife_status","storage":"akasword:display","interpret":true},{"nbt":"ult_status","storage":"akasword:display","interpret":true}]
execute if score @s skill_active matches 0 if score @s skill_cd matches 0 if score @s speed_stage matches 20.. run title @s actionbar ["",{"text":"Accel: ","color":"gold","bold":true},{"text":"MAX","color":"aqua","bold":true},{"text":" | ","color":"dark_gray"},{"text":"Skill: ","color":"gold"},{"text":"READY","color":"green","bold":true},{"nbt":"knife_status","storage":"akasword:display","interpret":true},{"nbt":"ult_status","storage":"akasword:display","interpret":true}]

execute if score @s mih_ult_active matches 1.. run title @s actionbar ["",{"text":">> AWAITING IMPACT <<","color":"red","bold":true}]
execute if score @s mih_accel_stage matches 1.. run title @s actionbar ["",{"text":"ACCELERATING TIME: ","color":"light_purple","bold":true},{"score":{"name":"@s","objective":"mih_accel_stage"},"color":"gold"},{"text":" days per second","color":"gray"}]
