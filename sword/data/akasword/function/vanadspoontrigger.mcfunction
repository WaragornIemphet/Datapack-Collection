# --- EFFECTS ---
particle electric_spark ^ ^0.01 ^ 1.5 3 1.5 0.01 100
playsound minecraft:block.anvil.place voice @a[distance=..100] ~ ~ ~ 300 1 1
damage @s 15 player_attack
effect give @s slowness 2 255 true
effect give @s weakness 2 255 true
effect give @s blindness 2 0 true
effect give @s glowing 2 0 true

# --- RESET THE MOB ---
scoreboard players set @s vanad_combohits 0

# --- OVERWRITE ACTIONBAR ---
title @p[tag=current_bonker] actionbar {"text":"B O N K !","color":"gold","bold":true}














