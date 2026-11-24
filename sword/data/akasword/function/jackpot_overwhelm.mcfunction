execute if score @s overwhelm_cd matches 1.. run return 0

scoreboard players set @s overwhelm_cd 400

tag @s add overwhelm
# Start the 6-second timer
scoreboard players set @s vortex_time 160
