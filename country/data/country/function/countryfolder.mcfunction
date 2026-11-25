execute store result bossbar pcr value run data get entity @e[tag=country2,limit=1] Health
execute at @e[tag=country2] run bossbar set pcr players @a[distance=..100]



scoreboard players set @e[tag=countrysummon] alive_check 0
execute as @e[tag=countrysummon2] at @s run function country:countrysummonupdate
execute as @e[tag=countrysummon,scores={alive_check=0}] run kill @s

execute as @e[tag=country] at @s run tp @s @e[tag=country2,limit=1]
effect give @e[tag=countrysummon2] invisibility 1 1 true
effect give @e[tag=countrysummon2] speed 1 1 true
effect give @e[tag=country2] invisibility 1 1 true
effect give @e[tag=country2] speed 1 1 true

scoreboard players add world CountrySKill 1

execute as @e[tag=country] at @s if score world CountrySKill matches 500 run function country:countrydivide

execute if score world CountrySKill matches 500.. run scoreboard players set world CountrySKill 0

execute as @e[tag=country] if entity @s[tag=country] unless entity @e[tag=country2,limit=1] run function country:countrydeath

