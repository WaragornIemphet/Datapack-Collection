
execute if entity @s[nbt={HurtTime:10s}] run function luxurious:clearcharge

execute if entity @s[tag=PowpeterCharging] if score @s PowpeterCharge matches 0.. run effect give @s slowness 1 255 true
execute if entity @s[tag=PowpeterCharging] if score @s PowpeterCharge matches 0.. run effect give @e[tag=powp] glowing 1 255 true
execute if entity @s[tag=PowpeterCharging] if score @s PowpeterCharge matches 0.. run effect give @s weakness 1 255 true

execute as @s at @s if entity @s[tag=PowpeterCharging] if score @s PowpeterCharge matches 60 run particle happy_villager ^ ^1 ^ 0.5 0.5 0.5 0 100
execute as @s at @s if entity @s[tag=PowpeterCharging] if score @s PowpeterCharge matches 60 run playsound block.anvil.destroy voice @a[distance=..128] ~ ~1 ~ 200 0.8 1
execute as @s at @s if entity @s[tag=PowpeterCharging] if score @s PowpeterCharge matches 40 run particle sculk_soul ^ ^1 ^ 0.5 0.5 0.5 0 150
execute as @s at @s if entity @s[tag=PowpeterCharging] if score @s PowpeterCharge matches 40 run playsound block.anvil.destroy voice @a[distance=..128] ~ ~1 ~ 200 1 1
execute as @s at @s if entity @s[tag=PowpeterCharging] if score @s PowpeterCharge matches 20 run particle end_rod ^ ^1 ^ 0.5 0.5 0.5 0 200
execute as @s at @s if entity @s[tag=PowpeterCharging] if score @s PowpeterCharge matches 20 run playsound block.anvil.destroy voice @a[distance=..128] ~ ~1 ~ 200 1.2 1
execute as @s at @s if entity @s[tag=PowpeterCharging] run scoreboard players remove @s PowpeterCharge 1

execute if entity @s[tag=PowpeterCharging] if score @s PowpeterCharge matches ..0 run function luxurious:completecharge
