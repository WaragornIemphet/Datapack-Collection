tp @e[tag=powp] @e[tag=powp2,limit=1]
tp @e[tag=joor] @e[tag=joor2,limit=1]
tp @e[tag=sett] @e[tag=sett2,limit=1]

effect give @e[tag=powp2] invisibility 1 1 true
effect give @e[tag=joor2] invisibility 1 1 true
effect give @e[tag=sett2] invisibility 1 1 true

execute store result bossbar powpeter value run data get entity @e[tag=powp2,limit=1] Health
execute store result bossbar joorno value run data get entity @e[tag=joor2,limit=1] Health
execute store result bossbar setta value run data get entity @e[tag=sett2,limit=1] Health

execute at @e[tag=powp2] as @e[tag=powp2] store result score @s Powpeter run data get entity @s Health 1
execute at @e[tag=powp2,tag=!powp2p2] as @e[tag=powp2,tag=!powp2p2,scores={Powpeter=..200}] run function luxurious:powpeterphase2

effect give @e[tag=joorshadow] slowness 1 0 true
execute at @e[tag=powpeterdown] run effect give @e[tag=powp] glowing 1 0 true
