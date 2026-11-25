execute at @s run summon item ~ ~1 ~ {Item:{id:"minecraft:stone",count:1},PickupDelay:40s,Tags:["sett_drop"]}

item replace entity @e[type=item,tag=sett_drop,distance=..2,limit=1] contents from entity @s weapon.mainhand

tag @e[type=item,tag=sett_drop] remove sett_drop

item replace entity @s weapon.mainhand with minecraft:air

particle minecraft:crit ~ ~1 ~ 0.3 0.3 0.3 0.1 15
playsound minecraft:entity.item.pickup master @a[distance=..16] ~ ~ ~ 1 0.5

scoreboard players set @s SettHitCount 0
scoreboard players set @s SettStealTimer 0
tag @e[tag=sett2] remove sett_has_stolen_item
