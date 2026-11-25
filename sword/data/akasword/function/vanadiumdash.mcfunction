scoreboard players set @s vanadium_dash_cd 60

execute at @e[tag=wongkura_challenger,limit=1] run particle minecraft:cloud ~ ~0.5 ~ 0.2 0.2 0.2 0.1 30 force
execute at @e[tag=wongkura_challenger,limit=1] run playsound minecraft:item.trident.riptide_1 voice @a[distance=..60] ~ ~ ~ 100 2

execute at @s run tp @s ^ ^0.5 ^5

execute at @e[tag=wongkura_challenger] run particle minecraft:poof ~ ~ ~ 0 0 0 0.2 10
