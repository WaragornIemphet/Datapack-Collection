item replace entity @e[tag=sett,distance=..0.1,limit=1] weapon.mainhand from entity @s weapon.offhand
item replace entity @s weapon.offhand with minecraft:air

execute at @s run particle minecraft:smoke ~ ~1 ~ 0.3 0.3 0.3 0.05 10
execute at @s run playsound minecraft:entity.fox.sniff master @a[distance=..16] ~ ~ ~ 1 0.5

scoreboard players set @e[tag=sett,distance=..0.1,limit=1] SettHitCount 0
scoreboard players set @e[tag=sett,distance=..0.1,limit=1] SettStealTimer 0

tag @e[tag=sett2,limit=1] add sett_has_stolen_item
