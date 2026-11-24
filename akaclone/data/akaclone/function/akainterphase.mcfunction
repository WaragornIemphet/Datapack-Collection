execute at @e[tag=akaclone2,limit=1] as @e[tag=akaclone2,limit=1] run tag @s add akaclp2
execute at @e[tag=p2akaclone,limit=1] as @e[tag=p2akaclone,limit=1] run tag @s remove p2akaclone
execute at @e[tag=p2akaclone2,limit=1] as @e[tag=p2akaclone2,limit=1] run tag @s remove p2akaclone2
execute at @e[tag=akaclone2,limit=1] as @e[tag=akaclone2,limit=1] run data merge entity @s {Invulnerable:0b}
scoreboard players set world AkacloneProgress 0
