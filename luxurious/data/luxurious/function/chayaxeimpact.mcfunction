execute at @s as @p[distance=..4] run damage @s 10 player_attack by @e[tag=chay,limit=1]
execute at @s as @p[distance=..4] run tag @s add chay_bleeding
execute at @s as @p[distance=..4] run scoreboard players set @s ChayBleedTimer 100
execute as @e[tag=chayaxe] at @s run kill @s

