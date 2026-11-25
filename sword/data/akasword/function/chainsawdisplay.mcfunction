scoreboard players operation @s chainsaw_ui = @s chain_cooldown
scoreboard players add @s chainsaw_ui 19
scoreboard players operation @s chainsaw_ui /= #const20 akasword_const



execute if score @s chainsaw_timer matches 1.. run data modify storage chainsaw:display chainsaw_status set value {"text":"[SAWING] ","color":"red","bold":true}

execute if score @s chainsaw_timer matches 0 if score @s chain_cooldown matches 1.. run data modify storage chainsaw:display chainsaw_status set value [{"text":"Chainsaw: ","color":"red"},{"score":{"name":"@s","objective":"chainsaw_ui"},"color":"red"},{"text":"s","color":"red"}]

execute if score @s chainsaw_timer matches 0 if score @s chain_cooldown matches 0 run data modify storage chainsaw:display chainsaw_status set value [{"text":"Chainsaw: ","color":"gold"},{"text":"READY","color":"green","bold":true}]


title @s actionbar [{"nbt":"chainsaw_status","storage":"chainsaw:display","interpret":true}]
