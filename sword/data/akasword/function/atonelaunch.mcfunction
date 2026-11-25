kill @e[type=minecraft:marker,tag=atoneaim]
scoreboard players set #atonedist lb_math 90
execute anchored eyes positioned ^ ^ ^0.5 run function akasword:atoneaim

execute as @e[type=minecraft:armor_stand,tag=atonenext,limit=1] at @s facing entity @e[type=minecraft:marker,tag=atoneaim,limit=1] feet run tp @s ~ ~ ~ ~ ~
execute as @e[type=minecraft:armor_stand,tag=atonenext,limit=1] run scoreboard players set @s atonelife 16
tag @e[type=minecraft:armor_stand,tag=atonenext] remove atonehover
tag @e[type=minecraft:armor_stand,tag=atonenext] add atonefly
tag @e[type=minecraft:armor_stand,tag=atonenext] remove atonenext

kill @e[type=minecraft:marker,tag=atoneaim]
playsound minecraft:item.trident.throw voice @a[distance=..32] ~ ~ ~ 0.9 1.6
