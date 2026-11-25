summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",count:1},Tags:["lb_swap_temp"]}
item replace entity @e[type=minecraft:item,tag=lb_swap_temp,limit=1] contents from entity @s weapon.offhand
item replace entity @s weapon.offhand from entity @s weapon.mainhand
item replace entity @s weapon.mainhand from entity @e[type=minecraft:item,tag=lb_swap_temp,limit=1] contents
kill @e[type=minecraft:item,tag=lb_swap_temp]

execute if score @s lb_mode matches 0 if score @s lb_rop_cd matches 1.. run playsound minecraft:block.note_block.bass voice @s ~ ~ ~ 1.0 0.6
execute if score @s lb_mode matches 0 unless score @s lb_rop_cd matches 1.. run return run function akasword:rite_of_passage

execute if score @s lb_mode matches 1 if score @s lb_atone_cd matches 1.. run playsound minecraft:block.note_block.bass voice @s ~ ~ ~ 1.0 0.6
execute if score @s lb_mode matches 1 unless score @s lb_atone_cd matches 1.. if score @s ult_charge matches ..9 run playsound minecraft:block.note_block.bass voice @s ~ ~ ~ 1.0 0.6
execute if score @s lb_mode matches 1 unless score @s lb_atone_cd matches 1.. if score @s ult_charge matches 10.. run return run function akasword:atonement

execute if score @s lb_mode matches 2 if score @s lb_ss_active matches 1.. run playsound minecraft:block.note_block.bass voice @s ~ ~ ~ 1.0 0.5
execute if score @s lb_mode matches 2 if score @s lb_ss_active matches 1.. run return 0

execute if score @s lb_mode matches 2 if score @s lb_hd_cd matches 1.. run playsound minecraft:block.note_block.bass voice @s ~ ~ ~ 1.0 0.6
execute if score @s lb_mode matches 2 unless score @s lb_hd_cd matches 1.. if score @s ult_charge matches ..49 run playsound minecraft:block.note_block.bass voice @s ~ ~ ~ 1.0 0.6
execute if score @s lb_mode matches 2 unless score @s lb_hd_cd matches 1.. if score @s ult_charge matches 50.. run return run function akasword:heavens_decree
