execute rotated ~ 0 positioned ^2.2 ^0.5 ^-0.4 run tp @e[type=minecraft:armor_stand,tag=ropsword1,tag=rophover,limit=1] ~ ~ ~ ~ ~
execute rotated ~ 0 positioned ^1.2 ^1.2 ^-0.4 run tp @e[type=minecraft:armor_stand,tag=ropsword2,tag=rophover,limit=1] ~ ~ ~ ~ ~
execute rotated ~ 0 positioned ^-1.2 ^1.2 ^-0.4 run tp @e[type=minecraft:armor_stand,tag=ropsword3,tag=rophover,limit=1] ~ ~ ~ ~ ~
execute rotated ~ 0 positioned ^-2.2 ^0.5 ^-0.4 run tp @e[type=minecraft:armor_stand,tag=ropsword4,tag=rophover,limit=1] ~ ~ ~ ~ ~

execute at @e[type=minecraft:armor_stand,tag=rophover] run particle minecraft:end_rod ~ ~1.0 ~ 0.05 0.15 0.05 0.01 1 normal

execute if score @s roptimer matches 18 run tag @e[type=minecraft:armor_stand,tag=ropsword1,tag=rophover,limit=1] add ropnext
execute if score @s roptimer matches 14 run tag @e[type=minecraft:armor_stand,tag=ropsword2,tag=rophover,limit=1] add ropnext
execute if score @s roptimer matches 10 run tag @e[type=minecraft:armor_stand,tag=ropsword3,tag=rophover,limit=1] add ropnext
execute if score @s roptimer matches 6 run tag @e[type=minecraft:armor_stand,tag=ropsword4,tag=rophover,limit=1] add ropnext

execute if entity @e[type=minecraft:armor_stand,tag=ropnext] run function akasword:roplaunch

execute if score @s roptimer matches 1 run kill @e[type=minecraft:armor_stand,tag=rophover]
