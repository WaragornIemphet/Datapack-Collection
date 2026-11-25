scoreboard players add world AkacloneSkill 1
execute as @e[tag=akaclone2,limit=1] at @s run tp @s @p[sort=random,distance=..80]
execute as @e[tag=akaclone2,limit=1] at @s run tp @s ^ ^2 ^
execute at @e[tag=akaclone] run particle minecraft:witch ~ ~1 ~ 0.5 1 0.5 0.1 200 force
execute at @e[tag=akaclone,limit=1] as @a[distance=..128] run title @s actionbar [{"text":"It's inevitable","color":"dark_red"}]
