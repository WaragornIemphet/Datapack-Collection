execute as @s[tag=!exploded] unless block ~ ~ ~ #minecraft:replaceable at @s run function akasword:beanoexplode

execute as @s[tag=!exploded] unless block ^ ^ ^0.5 #minecraft:replaceable at @s run function akasword:beanoexplode


execute as @s[tag=!exploded] on owner run tag @s add thrower

execute as @s[tag=!exploded] if entity @e[type=!snowball,type=!item,tag=!thrower,distance=..1.5] at @s run function akasword:beanoexplode

execute on owner run tag @s remove thrower
