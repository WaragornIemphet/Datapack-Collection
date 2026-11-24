execute at @e[tag=falseaka2,limit=1] as @e[tag=falseaka2,limit=1] run tag @s add fakaclp2
execute at @e[tag=p2falseaka,limit=1] as @e[tag=p2falseaka,limit=1] run tag @s remove p2falseaka
execute at @e[tag=p2falseaka2,limit=1] as @e[tag=p2falseaka2,limit=1] run tag @s remove p2falseaka2
execute at @e[tag=p2falseaka2,limit=1] as @e[tag=p2falseaka2,limit=1] run data merge entity @s {Invulnerable:0b}
scoreboard players set world AkacloneProgress 0
scoreboard players set world FalseakaProgress 0
