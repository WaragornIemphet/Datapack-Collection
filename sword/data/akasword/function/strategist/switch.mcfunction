# 1. Apply a 10-tick (0.5s) cooldown so the mode doesn't spin wildly
scoreboard players set @s tabletswitch_cd 10

# 2. Cycle logic
execute if score @s tabletmode matches ..0 run scoreboard players set @s tabletmode 1
scoreboard players add @s tabletmode 1
execute if score @s tabletmode matches 4.. run scoreboard players set @s tabletmode 1

# 3. Audio feedback
playsound minecraft:ui.button.click voice @a[distance=..16] ~ ~ ~ 100 1.2