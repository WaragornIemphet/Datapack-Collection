scoreboard players remove @s akasword_cnt_active 1

effect give @s minecraft:resistance 1 255 true
effect give @s minecraft:slowness 1 255 true
effect give @s minecraft:weakness 1 255 true


execute if score @s akasword_cnt_active matches 15 run playsound minecraft:block.beacon.ambient player @s ~ ~ ~ 1 2


execute if score @s akasword_take_dmg matches 1.. run function akasword:jackpot_counter_retaliate
execute if score @s akasword_res_dmg matches 1.. run function akasword:jackpot_counter_retaliate
execute if score @s akasword_abs_dmg matches 1.. run function akasword:jackpot_counter_retaliate

execute if score @s akasword_cnt_active matches ..1 if items entity @s weapon.offhand *[custom_data~{shut:1}] run item replace entity @s weapon.offhand with air
