# Restore AI, remove charging tag, and reset timer
data merge entity @s {NoAI:0b}
tag @s remove PowpeterCharging
scoreboard players set @s PowpeterCharge 0

# Optional sound effect when interrupted
playsound minecraft:block.anvil.place voice @a ~ ~ ~ 160 1.2
execute at @s run particle angry_villager ~ ~1 ~ 0.5 0.5 0.5 0 80 normal