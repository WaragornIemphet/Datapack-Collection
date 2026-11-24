# 1. Summon your named anchor with a temporary tag to guarantee perfect targeting
summon marker ~ ~ ~ {Tags:["beano_anchor","this_beano"],CustomName:{"text":"BEANO T-13 Impact Grenade"}}

# 2. Visuals and Audio
particle minecraft:large_smoke ^ ^0.1 ^ 1 1 1 0.2 150 force
particle minecraft:explosion ^ ^0.5 ^ 0.5 0.5 0.5 0 5 force
playsound minecraft:entity.generic.explode block @a[distance=..100] ~ ~ ~ 300 1.2
summon breeze_wind_charge ~ ~ ~ {Motion:[0d,-1d,0]}
summon breeze_wind_charge ~ ~ ~ {Motion:[0d,-1d,0]}

# 3. Deal the damage. 
# Looping through victims (your correct logic!) and attributing it to the specific anchor.
execute at @e[tag=this_beano,limit=1] as @e[type=!item,type=!marker,type=!armor_stand,type=!mannequin,distance=..3.2] run damage @s 40 minecraft:player_explosion by @e[tag=this_beano,limit=1]

execute at @e[tag=this_beano,limit=1] as @e[type=!item,type=!marker,type=!armor_stand,type=!mannequin,distance=3.21..6.2] run damage @s 15 minecraft:player_explosion by @e[tag=this_beano,limit=1]

execute at @e[tag=this_beano,limit=1] as @e[type=!item,type=!marker,type=!armor_stand,type=!mannequin,distance=6.21..8.2] run damage @s 7.5 minecraft:player_explosion by @e[tag=this_beano,limit=1]

# 4. Clean up the anchor and the snowball
kill @e[tag=this_beano]
kill @s