# 1. Apply Extreme Regeneration (Regen 50 makes you nearly immortal for the duration)
# 30 Seconds
effect give @s minecraft:regeneration 30 50 true
effect give @s minecraft:saturation 30 50 true
effect give @s minecraft:absorption 30 48 true
effect give @s minecraft:strength 30 2 true
effect give @s minecraft:speed 30 1 true
effect give @s minecraft:jump_boost 30 1 true
# 2. Consolation Message
tellraw @s {"text":"Jackpot!","color":"green"}
playsound minecraft:block.beacon.power_select player @s ~ ~ ~ 1 1
