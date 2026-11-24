# --- NEW: Tag this mob as the active victim for the Ultimate ---
tag @s add current_jackpot

# --- Existing Score Logic ---
scoreboard players add @s jackpotsurge 1
scoreboard players set @s jackpotsurge_timer 0
execute as @s at @a[tag=luckybastard_jackpot] run tellraw @a[tag=luckybastard_jackpot] [{"text":"Energy Surge:","color":"green"},{"text":" ","color":"yellow"},{"score":{"name":"@s","objective":"jackpotsurge"},"color":"yellow"}]

execute if score @s jackpotsurge matches 3.. run function akasword:jackpot_hour_surge



