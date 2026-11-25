scoreboard players add world FalseakaSkill 1
execute as @e[tag=falseaka2,limit=1] at @s run tp @s @p[sort=nearest,distance=..80]
execute as @e[tag=falseaka2,limit=1] at @s run tp @s ^ ^2 ^
execute at @e[tag=falseaka] run particle minecraft:witch ~ ~1 ~ 0.5 1 0.5 0.1 200 force
execute at @e[tag=falseaka,limit=1] as @a[distance=..128] run title @s actionbar [{"text":"It's me","color":"dark_red"}]
