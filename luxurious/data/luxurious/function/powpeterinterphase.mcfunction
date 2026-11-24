execute as @e[tag=powp2] at @s unless entity @e[tag=powp2p2] run function luxurious:powpeterphase2
execute at @e[tag=powp] run tellraw @a[distance=..128] [{"text":"<powpeter1> ","color":"green"},{"text":"Parry this you filthy casuals","color":"white"}]
execute at @e[tag=powp] run playsound minecraft:entity.villager.hurt voice @a[distance=..128] ~ ~ ~ 250 0.9 1
scoreboard players set world PowpeterPatience 0
execute as @e[tag=powpeterdown] at @s run tag @s remove powpeterdown
execute as @e[tag=powp2] run data merge entity @s {Invulnerable:0b}
execute as @e[tag=powp2] run data merge entity @s {NoAI:0b}

execute as @e[tag=powp2] at @s run tp @s @p[distance=..128,sort=nearest]


