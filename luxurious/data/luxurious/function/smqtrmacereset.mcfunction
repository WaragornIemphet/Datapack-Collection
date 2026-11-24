execute at @e[tag=smq2,tag=smqtr_stunned] as @a[distance=..50] run playsound block.glass.break voice @s ~ ~ ~ 160 0.7 1
execute at @e[tag=smq2,tag=smqtr_stunned] run particle flame ^ ^ ^ 2 2 2 0 150 normal

tag @s remove smqtr_air_attack
tag @s remove smqtr_stunned
tag @s remove smqtr_landed

scoreboard players set @s SmqtrSkillTimer 0
scoreboard players set @s SmqtrStunTimer 0

effect clear @s levitation
effect clear @s slowness
effect clear @s weakness
effect clear @s jump_boost

data merge entity @s {NoAI:0b}
data merge entity @s {Invulnerable:0b}