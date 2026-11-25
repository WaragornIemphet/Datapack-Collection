

execute if score @s speed_stage matches ..19 run tag @s add mih_counter_stance
execute if score @s speed_stage matches ..19 run scoreboard players set @s mih_ult_active 60

execute if score @s speed_stage matches ..19 run scoreboard players set @s mih_damage 0
execute if score @s speed_stage matches ..19 run scoreboard players set @s mih_damage1 0
execute if score @s speed_stage matches ..19 run scoreboard players set @s mih_damage2 0

execute if score @s speed_stage matches ..19 run title @s actionbar ["",{"text":">> AWAITING COUNTER <<","color":"red","bold":true}]
execute if score @s speed_stage matches ..19 run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 1 2
execute if score @s speed_stage matches ..19 run particle cloud ^ ^1 ^ 1 1 1 0 10 force

execute if score @s speed_stage matches 20.. run scoreboard players set @s mih_accel_seq 1
execute if score @s speed_stage matches 20.. run scoreboard players set @s mih_accel_stage 1
execute if score @s speed_stage matches 20.. run stopsound @a voice music_disc.bank3
execute if score @s speed_stage matches 20.. run stopsound @a voice music_disc.mihskill
execute if score @s speed_stage matches 20.. at @s run playsound music_disc.bank2 voice @a ~ ~ ~ 600 1 1
