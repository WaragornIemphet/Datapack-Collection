tag @s remove smqtr_air_attack
tag @s remove smqtr_landed
tag @s add smqtr_stunned
scoreboard players set @s SmqtrStunTimer 10

data merge entity @s {NoAI:1b}
tp @s ^ ^-0.15 ^

execute at @s as @a[distance=..50] run playsound minecraft:entity.iron_golem.damage master @a ~ ~ ~ 160 0.6
execute at @s as @a[distance=..50] run playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 170 0.9
