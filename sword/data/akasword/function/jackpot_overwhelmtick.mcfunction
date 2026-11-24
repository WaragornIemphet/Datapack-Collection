# PHASE 1: First 3 seconds (Ticks 120 down to 60) - Deal 5 damage to nearby targets
execute if score @s vortex_time matches 100..160 as @e[distance=..1.5,sort=nearest,type=!interaction,type=!#redirectable_projectile,type=!item,type=!experience_orb,tag=!luckybastard,type=!armor_stand,type=!mannequin,type=!text_display] run damage @s 10 player_attack

# PHASE 2 TAGGING: Between 3 and 4 seconds (Ticks 40 to 60) - Tag new targets within 4 blocks
execute if score @s vortex_time matches 40..100 as @e[distance=..1.5,sort=nearest,type=!interaction,type=!#redirectable_projectile,type=!item,type=!experience_orb,tag=!luckybastard,type=!armor_stand,type=!mannequin,type=!text_display,tag=!vortex_trapped] run tag @s add vortex_trapped

# PHASE 2 DRAGGING: From second 3 all the way to the end (Ticks 1 to 60) - Keep tagged targets glued to the user

execute if score @s vortex_time matches 10..100 as @e[tag=vortex_trapped] run tp @s ~ ~ ~
execute if score @s vortex_time matches 10..100 as @e[tag=vortex_trapped] run execute as @e[tag=vortex_trapped] at @s run damage @s 15 player_attack

execute if score @s vortex_time matches 1..5 as @e[tag=vortex_trapped] run execute as @e[tag=vortex_trapped] at @s run damage @s 25 player_attack
execute if score @s vortex_time matches 1..5 as @e[tag=vortex_trapped] run execute as @e[tag=vortex_trapped] at @s run effect give @s levitation 1 12 true
# Count down the user's master skill timer by 1 tick
scoreboard players remove @s vortex_time 1

# CLEANUP: Exactly at 6 seconds (when timer hits 0), clear all trapped tags
execute if score @s vortex_time matches 0 run tag @e[tag=vortex_trapped] remove vortex_trapped
execute if score @s vortex_time matches 0 run tag @e[tag=overwhelm] remove overwhelm

execute if score @s vortex_time matches 1.. run effect give @s minecraft:speed 1 5 true
execute if score @s vortex_time matches 1.. at @s run particle dust_color_transition{from_color:[0.0,1.0,0.33],to_color:[0.0,1.0,0.33],scale:2} ^ ^0.5 ^-0.5 0.5 1 0.5 5 30 force