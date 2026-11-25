execute if score @s vortex_time matches 100..160 as @e[distance=..1.5,sort=nearest,type=!interaction,type=!#redirectable_projectile,type=!item,type=!experience_orb,tag=!luckybastard,type=!armor_stand,type=!mannequin,type=!text_display] run damage @s 10 player_attack

execute if score @s vortex_time matches 40..100 as @e[distance=..1.5,sort=nearest,type=!interaction,type=!#redirectable_projectile,type=!item,type=!experience_orb,tag=!luckybastard,type=!armor_stand,type=!mannequin,type=!text_display,tag=!vortex_trapped] run tag @s add vortex_trapped


execute if score @s vortex_time matches 10..100 as @e[tag=vortex_trapped] run tp @s ~ ~ ~
execute if score @s vortex_time matches 10..100 as @e[tag=vortex_trapped] run execute as @e[tag=vortex_trapped] at @s run damage @s 15 player_attack

execute if score @s vortex_time matches 1..5 as @e[tag=vortex_trapped] run execute as @e[tag=vortex_trapped] at @s run damage @s 25 player_attack
execute if score @s vortex_time matches 1..5 as @e[tag=vortex_trapped] run execute as @e[tag=vortex_trapped] at @s run effect give @s levitation 1 12 true
scoreboard players remove @s vortex_time 1

execute if score @s vortex_time matches 0 run tag @e[tag=vortex_trapped] remove vortex_trapped
execute if score @s vortex_time matches 0 run tag @e[tag=overwhelm] remove overwhelm

execute if score @s vortex_time matches 1.. run effect give @s minecraft:speed 1 5 true
execute if score @s vortex_time matches 1.. at @s run particle dust_color_transition{from_color:[0.0,1.0,0.33],to_color:[0.0,1.0,0.33],scale:2} ^ ^0.5 ^-0.5 0.5 1 0.5 5 30 force
