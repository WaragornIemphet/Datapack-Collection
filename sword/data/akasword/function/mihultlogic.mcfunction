

execute as @s[tag=mih_counter_stance] if score @s mih_damage matches 1.. run tag @s add counter_success
execute as @s[tag=mih_counter_stance] if score @s mih_damage1 matches 1.. run tag @s add counter_success
execute as @s[tag=mih_counter_stance] if score @s mih_damage2 matches 1.. run tag @s add counter_success

execute as @s[tag=counter_success] run tag @s add mih_attacker
execute as @s[tag=counter_success] at @s on attacker run tag @s add mih_victim

execute as @s[tag=counter_success] run scoreboard players set @s cutscene_timer 1

execute as @s[tag=counter_success] run scoreboard players set @s mih_ult_active 0
execute as @s[tag=counter_success] run scoreboard players set @s mih_ult_cd 6000

scoreboard players set @s[tag=counter_success] mih_damage 0
scoreboard players set @s[tag=counter_success] mih_damage1 0
scoreboard players set @s[tag=counter_success] mih_damage2 0

tag @s[tag=counter_success] remove mih_counter_stance
tag @s remove counter_success


execute if score @s mih_ult_active matches 1.. run scoreboard players remove @s mih_ult_active 1

execute if score @s mih_ult_active matches 0 as @s[tag=mih_counter_stance] run scoreboard players set @s mih_ult_cd 1600
execute if score @s mih_ult_active matches 0 as @s[tag=mih_counter_stance] run tag @s remove mih_counter_stance

execute as @s[tag=mih_counter_stance] run scoreboard players set @s mih_damage 0
execute as @s[tag=mih_counter_stance] run scoreboard players set @s mih_damage1 0
execute as @s[tag=mih_counter_stance] run scoreboard players set @s mih_damage2 0


execute if score @s mih_accel_seq matches 1.. run scoreboard players add @s mih_accel_seq 1
execute if score @s mih_accel_seq matches 60.. run scoreboard players add @s mih_accel_stage 1
execute if score @s mih_accel_seq matches 60.. run scoreboard players set @s mih_accel_seq 1

execute if score @s mih_accel_seq matches 1.. if score @s mih_accel_stage matches 1..30 run function akasword:calc_tick_time
execute if score @s mih_accel_stage matches 31.. run function akasword:universe_reset_final

execute if score @s mih_ult_active matches 1.. run title @s actionbar ["",{"text":">> AWAITING COUNTER <<","color":"red","bold":true}]
