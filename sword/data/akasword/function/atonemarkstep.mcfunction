execute if score @s atonemarkcount matches 50.. run scoreboard players set @s atonestate 3
execute if score @s atonemarkcount matches 50.. run scoreboard players set @s atonetimer 10
execute if score @s atonemarkcount matches 50.. run return 0

scoreboard players set #atonefound lb_math 0
tag @e[tag=atonecand] remove atonecand

execute as @e[distance=..64,tag=!lightbane,tag=!atonemark,type=#minecraft:undead] run tag @s add atonecand
execute as @e[distance=..64,tag=!lightbane,tag=!atonemark,type=#minecraft:arthropod] run tag @s add atonecand
execute as @e[distance=..64,tag=!lightbane,tag=!atonemark,type=#minecraft:raiders] run tag @s add atonecand
execute as @e[distance=..64,tag=!lightbane,tag=!atonemark,type=minecraft:creeper] run tag @s add atonecand
execute as @e[distance=..64,tag=!lightbane,tag=!atonemark,type=minecraft:vex] run tag @s add atonecand
execute as @e[distance=..64,tag=!lightbane,tag=!atonemark,type=minecraft:slime] run tag @s add atonecand
execute as @a[distance=..64,tag=!lightbane,tag=!atonemark,gamemode=!spectator,scores={lightbane_combohits=1..}] run tag @s add atonecand

tag @e[type=minecraft:bee,tag=atonecand] remove atonecand

execute as @e[tag=atonecand,limit=1,sort=nearest] at @s run function akasword:atonemarkone
tag @e[tag=atonecand] remove atonecand

execute if score #atonefound lb_math matches 0 if entity @e[tag=atonemark] run scoreboard players set @s atonestate 3
execute if score #atonefound lb_math matches 0 if entity @e[tag=atonemark] run scoreboard players set @s atonetimer 10
execute if score #atonefound lb_math matches 0 unless entity @e[tag=atonemark] run scoreboard players set @s atonestate 0

execute if score @s atonemarkcount matches 50.. run scoreboard players set @s atonestate 3
execute if score @s atonemarkcount matches 50.. run scoreboard players set @s atonetimer 10
