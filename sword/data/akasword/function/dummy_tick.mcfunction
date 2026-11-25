execute as @e[tag=dps_dummy] store result score @s current_hp run data get entity @s Health

execute as @e[tag=dps_dummy,scores={dummy_hp=0}] run scoreboard players operation @s dummy_hp = @s current_hp

execute as @e[tag=dps_dummy] run scoreboard players operation @s dmg_taken = @s dummy_hp
execute as @e[tag=dps_dummy] run scoreboard players operation @s dmg_taken -= @s current_hp

execute as @e[tag=dps_dummy,scores={dmg_taken=1..}] run scoreboard players operation @s dummy_dps += @s dmg_taken

execute as @e[tag=dps_dummy] run scoreboard players operation @s dummy_hp = @s current_hp

execute as @e[tag=dps_dummy] run scoreboard players add @s dummy_timer 1

execute as @e[tag=dps_dummy,scores={dummy_timer=20..}] run execute store result storage akasword:dps value int 1 run scoreboard players get @s dummy_dps
execute as @e[tag=dps_dummy,scores={dummy_timer=20..}] at @s run function akasword:update_dps_macro with storage akasword:dps

execute as @e[tag=dps_dummy,scores={dummy_timer=20..}] run scoreboard players set @s dummy_dps 0
execute as @e[tag=dps_dummy,scores={dummy_timer=20..}] run scoreboard players set @s dummy_timer 0

execute as @e[tag=dps_dummy] run data modify entity @s Health set value 1000f
execute as @e[tag=dps_dummy] run scoreboard players set @s dummy_hp 1000
