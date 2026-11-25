execute at @e[tag=powp2_stunned] as @e[tag=joor2] run tp @s ^1 ^ ^2
execute at @e[tag=powp2_stunned] as @e[tag=sett2] run tp @s ^-1 ^ ^2
execute at @e[tag=powp2_stunned] as @e[tag=joorshadow] run tp @s ^ ^ ^3
execute at @e[tag=powp2_stunned] as @a[distance=..50] run playsound entity.wither.hurt voice @s ~ ~ ~ 160 0.7 1
execute at @e[tag=powp2_stunned] run particle copper_fire_flame ^ ^ ^ 2 2 2 0 150 normal

tag @s remove powp2_air_attack
tag @s remove powp2_stunned
scoreboard players set @s Powp2SkillTimer 0
scoreboard players set @s Powp2TrackTimer 0
scoreboard players set @s Powp2StunTimer 0

effect clear @s levitation
effect clear @s slowness
effect clear @s weakness
effect clear @s jump_boost

data merge entity @s {NoAI:0b}
data merge entity @s {Invulnerable:0b}

