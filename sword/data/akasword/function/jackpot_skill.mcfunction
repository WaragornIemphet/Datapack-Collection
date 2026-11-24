# ==================================================
#  JACKPOT HOUR: SKILL TRIGGER
#  Owner: [tag=luckybastard]
# ==================================================

# 1. COOLDOWN GATE

execute if score @s akasword_jackpot_cd matches 1.. run return 0
scoreboard players add @a[tag=luckybastard] jackpot_skill_uses 1
# ==================================================
#  2. SUMMON & ALIGNMENT (FIXED)
# ==================================================
# A. Summon Invisible Armor Stand
# We spawn it at the player's feet first
execute at @s anchored eyes run summon armor_stand ^ ^0.5 ^ {Invisible:1b,NoBasePlate:1b,Small:1b,Health:998,Invulnerable:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b,Tags:["jackpot_ball","new_ball"],equipment:{head:{id:"minecraft:player_head",components:{"minecraft:custom_name":{text:"Gold Block — 25058",color:gold,underlined:true,bold:true,italic:false},"minecraft:lore":[{text:"Head ID: 19969",color:gray,italic:false},{text:"mcheads.ru",color:blue,italic:false}],profile:{properties:[{name:textures,value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzFhNzg1OTE2ZDJkMTdjYTBlYTJhZDIzZDgwMjQ3YzdjNTAyMTQ0MzkwM2JiYWI3YjI0Yjc5MzRiNmEzNjFhYiJ9fX0="}]}}}},attributes:[{id:max_health,base:998f}]}

# B. Sync Position (Player Eyes)
# CRITICAL FIX: Added 'at @s' before 'anchored eyes'. 
# This forces the game to calculate position relative to YOU, not the server console.
execute at @s anchored eyes run tp @e[tag=new_ball,limit=1,sort=nearest] ~ ~1 ~ ~ ~

# C. Offset Forward
# Move it 0.5 blocks in front of your face so you don't get stuck in it
execute at @s as @e[tag=new_ball,limit=1] run tp @s ^ ^0.75 ^0.5

# D. Init Lifespan & Cleanup
scoreboard players set @e[tag=new_ball] akasword_ball_life 0
tag @e[tag=new_ball] remove new_ball

# ==================================================
#  3. STATS & EFFECTS
# ==================================================
# Audio & Visuals
execute at @s run playsound minecraft:block.iron_door.open voice @a[distance=..60] ~ ~ ~ 100 2
execute at @s run playsound minecraft:block.iron_door.open voice @a[distance=..60] ~ ~ ~ 100 2
execute at @s run playsound minecraft:block.amethyst_block.chime voice @a[distance=..60] ~ ~ ~ 200 2
execute at @s run particle minecraft:electric_spark ^ ^1.75 ^1 0.2 0.2 0.2 0.1 10 force

# Set Cooldown (7.5s = 150 Ticks)
scoreboard players set @s akasword_jackpot_cd 170
