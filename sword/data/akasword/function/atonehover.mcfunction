execute rotated ~ 0 positioned ^2.2 ^0.4 ^-0.6 run tp @e[type=minecraft:armor_stand,tag=atonesword1,tag=atonehover,limit=1] ~ ~ ~ ~ ~
execute rotated ~ 0 positioned ^2.0 ^1.1 ^-0.6 run tp @e[type=minecraft:armor_stand,tag=atonesword2,tag=atonehover,limit=1] ~ ~ ~ ~ ~
execute rotated ~ 0 positioned ^1.4 ^1.7 ^-0.6 run tp @e[type=minecraft:armor_stand,tag=atonesword3,tag=atonehover,limit=1] ~ ~ ~ ~ ~
execute rotated ~ 0 positioned ^0.6 ^2.1 ^-0.6 run tp @e[type=minecraft:armor_stand,tag=atonesword4,tag=atonehover,limit=1] ~ ~ ~ ~ ~
execute rotated ~ 0 positioned ^-0.6 ^2.1 ^-0.6 run tp @e[type=minecraft:armor_stand,tag=atonesword5,tag=atonehover,limit=1] ~ ~ ~ ~ ~
execute rotated ~ 0 positioned ^-1.4 ^1.7 ^-0.6 run tp @e[type=minecraft:armor_stand,tag=atonesword6,tag=atonehover,limit=1] ~ ~ ~ ~ ~
execute rotated ~ 0 positioned ^-2.0 ^1.1 ^-0.6 run tp @e[type=minecraft:armor_stand,tag=atonesword7,tag=atonehover,limit=1] ~ ~ ~ ~ ~
execute rotated ~ 0 positioned ^-2.2 ^0.4 ^-0.6 run tp @e[type=minecraft:armor_stand,tag=atonesword8,tag=atonehover,limit=1] ~ ~ ~ ~ ~

execute rotated ~ 0 positioned ^3.4 ^0.2 ^-1.1 run tp @e[type=minecraft:armor_stand,tag=atonesword9,tag=atonehover,limit=1] ~ ~ ~ ~ ~
execute rotated ~ 0 positioned ^3.3 ^0.9 ^-1.1 run tp @e[type=minecraft:armor_stand,tag=atonesword10,tag=atonehover,limit=1] ~ ~ ~ ~ ~
execute rotated ~ 0 positioned ^3.0 ^1.6 ^-1.1 run tp @e[type=minecraft:armor_stand,tag=atonesword11,tag=atonehover,limit=1] ~ ~ ~ ~ ~
execute rotated ~ 0 positioned ^2.5 ^2.2 ^-1.1 run tp @e[type=minecraft:armor_stand,tag=atonesword12,tag=atonehover,limit=1] ~ ~ ~ ~ ~
execute rotated ~ 0 positioned ^1.8 ^2.7 ^-1.1 run tp @e[type=minecraft:armor_stand,tag=atonesword13,tag=atonehover,limit=1] ~ ~ ~ ~ ~
execute rotated ~ 0 positioned ^0.9 ^3.0 ^-1.1 run tp @e[type=minecraft:armor_stand,tag=atonesword14,tag=atonehover,limit=1] ~ ~ ~ ~ ~
execute rotated ~ 0 positioned ^-0.9 ^3.0 ^-1.1 run tp @e[type=minecraft:armor_stand,tag=atonesword15,tag=atonehover,limit=1] ~ ~ ~ ~ ~
execute rotated ~ 0 positioned ^-1.8 ^2.7 ^-1.1 run tp @e[type=minecraft:armor_stand,tag=atonesword16,tag=atonehover,limit=1] ~ ~ ~ ~ ~
execute rotated ~ 0 positioned ^-2.5 ^2.2 ^-1.1 run tp @e[type=minecraft:armor_stand,tag=atonesword17,tag=atonehover,limit=1] ~ ~ ~ ~ ~
execute rotated ~ 0 positioned ^-3.0 ^1.6 ^-1.1 run tp @e[type=minecraft:armor_stand,tag=atonesword18,tag=atonehover,limit=1] ~ ~ ~ ~ ~
execute rotated ~ 0 positioned ^-3.3 ^0.9 ^-1.1 run tp @e[type=minecraft:armor_stand,tag=atonesword19,tag=atonehover,limit=1] ~ ~ ~ ~ ~
execute rotated ~ 0 positioned ^-3.4 ^0.2 ^-1.1 run tp @e[type=minecraft:armor_stand,tag=atonesword20,tag=atonehover,limit=1] ~ ~ ~ ~ ~

execute if score @s atonetimer matches 40 run tag @e[type=minecraft:armor_stand,tag=atonesword1,tag=atonehover,limit=1] add atonenext
execute if score @s atonetimer matches 38 run tag @e[type=minecraft:armor_stand,tag=atonesword2,tag=atonehover,limit=1] add atonenext
execute if score @s atonetimer matches 36 run tag @e[type=minecraft:armor_stand,tag=atonesword3,tag=atonehover,limit=1] add atonenext
execute if score @s atonetimer matches 34 run tag @e[type=minecraft:armor_stand,tag=atonesword4,tag=atonehover,limit=1] add atonenext
execute if score @s atonetimer matches 32 run tag @e[type=minecraft:armor_stand,tag=atonesword5,tag=atonehover,limit=1] add atonenext
execute if score @s atonetimer matches 30 run tag @e[type=minecraft:armor_stand,tag=atonesword6,tag=atonehover,limit=1] add atonenext
execute if score @s atonetimer matches 28 run tag @e[type=minecraft:armor_stand,tag=atonesword7,tag=atonehover,limit=1] add atonenext
execute if score @s atonetimer matches 26 run tag @e[type=minecraft:armor_stand,tag=atonesword8,tag=atonehover,limit=1] add atonenext
execute if score @s atonetimer matches 24 run tag @e[type=minecraft:armor_stand,tag=atonesword9,tag=atonehover,limit=1] add atonenext
execute if score @s atonetimer matches 22 run tag @e[type=minecraft:armor_stand,tag=atonesword10,tag=atonehover,limit=1] add atonenext
execute if score @s atonetimer matches 20 run tag @e[type=minecraft:armor_stand,tag=atonesword11,tag=atonehover,limit=1] add atonenext
execute if score @s atonetimer matches 18 run tag @e[type=minecraft:armor_stand,tag=atonesword12,tag=atonehover,limit=1] add atonenext
execute if score @s atonetimer matches 16 run tag @e[type=minecraft:armor_stand,tag=atonesword13,tag=atonehover,limit=1] add atonenext
execute if score @s atonetimer matches 14 run tag @e[type=minecraft:armor_stand,tag=atonesword14,tag=atonehover,limit=1] add atonenext
execute if score @s atonetimer matches 12 run tag @e[type=minecraft:armor_stand,tag=atonesword15,tag=atonehover,limit=1] add atonenext
execute if score @s atonetimer matches 10 run tag @e[type=minecraft:armor_stand,tag=atonesword16,tag=atonehover,limit=1] add atonenext
execute if score @s atonetimer matches 8 run tag @e[type=minecraft:armor_stand,tag=atonesword17,tag=atonehover,limit=1] add atonenext
execute if score @s atonetimer matches 6 run tag @e[type=minecraft:armor_stand,tag=atonesword18,tag=atonehover,limit=1] add atonenext
execute if score @s atonetimer matches 4 run tag @e[type=minecraft:armor_stand,tag=atonesword19,tag=atonehover,limit=1] add atonenext
execute if score @s atonetimer matches 2 run tag @e[type=minecraft:armor_stand,tag=atonesword20,tag=atonehover,limit=1] add atonenext

execute if entity @e[type=minecraft:armor_stand,tag=atonenext] run function akasword:atonelaunch

scoreboard players remove @s atonetimer 1
execute if score @s atonetimer matches ..0 run kill @e[type=minecraft:armor_stand,tag=atonehover]
execute if score @s atonetimer matches ..0 run scoreboard players set @s atonestate 2
execute if score @s atonetimer matches ..0 run scoreboard players set @s atonetimer 0
