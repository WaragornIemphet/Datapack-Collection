execute as @e[tag=powp2p2] run tag @s add PowpeterCharging
execute as @e[tag=powp2p2] run data merge entity @s {NoAI:1b}
execute as @e[tag=powp2p2] run scoreboard players set @s PowpeterCharge 60
