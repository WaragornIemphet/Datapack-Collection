execute at @e[tag=chay2,tag=chay_stunned] as @a[distance=..50] run playsound entity.wither.break_block voice @s ~ ~ ~ 160 0.7 1
execute at @e[tag=chay2,tag=chay_stunned] run particle soul_fire_flame ^ ^ ^ 2 2 2 0 150 normal

tag @s remove chay_air_attack
tag @s remove chay_stunned
scoreboard players set @s ChaySkillTimer 0
scoreboard players set @s ChayStunTimer 0

effect clear @s levitation
effect clear @s slowness
effect clear @s weakness
effect clear @s jump_boost

data merge entity @s {NoAI:0b}
data merge entity @s {Invulnerable:0b}
