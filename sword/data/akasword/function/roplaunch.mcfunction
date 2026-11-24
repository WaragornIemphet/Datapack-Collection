# 1. Raycast up to 90 blocks from player's eyes to place temporary aim marker
kill @e[type=minecraft:marker,tag=ropaim]
scoreboard players set #ropdist lb_math 90
execute anchored eyes positioned ^ ^ ^0.5 run function akasword:ropaim

# 2. Aim the next sword straight at the raycast target and switch it to flight mode
execute as @e[type=minecraft:armor_stand,tag=ropnext,limit=1] at @s facing entity @e[type=minecraft:marker,tag=ropaim,limit=1] feet run tp @s ~ ~ ~ ~ ~
execute as @e[type=minecraft:armor_stand,tag=ropnext,limit=1] run scoreboard players set @s roplife 16
tag @e[type=minecraft:armor_stand,tag=ropnext] remove rophover
tag @e[type=minecraft:armor_stand,tag=ropnext] add ropfly
tag @e[type=minecraft:armor_stand,tag=ropnext] remove ropnext

# 3. Cleanup marker & play launch sound
kill @e[type=minecraft:marker,tag=ropaim]
playsound minecraft:item.trident.throw voice @a[distance=..32] ~ ~ ~ 1.1 1.5
playsound minecraft:entity.arrow.shoot voice @a[distance=..32] ~ ~ ~ 0.9 1.7