data merge entity @s {NoAI:0b}
tag @s remove PowpeterCharging
scoreboard players set @s PowpeterCharge 0

playsound minecraft:block.anvil.place voice @a ~ ~ ~ 160 1.2
execute at @s run particle angry_villager ~ ~1 ~ 0.5 0.5 0.5 0 80 normal
