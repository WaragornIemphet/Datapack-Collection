execute as @e[tag=akaclone2,limit=1] at @s run data merge entity @s {Invulnerable:1b}
execute as @e[tag=akaclone2,limit=1] at @s run tag @s add usingakafire
execute as @e[tag=akaclone] at @s run effect give @s glowing 13 0 true
execute as @e[tag=akaclone2,limit=1] at @s run effect give @s weakness 13 255 true
execute as @e[tag=akaclone2,limit=1] at @s run effect give @s regeneration 13 4 true
execute at @e[tag=akaclone,limit=1] as @a[distance=..128] run title @s actionbar [{"text":"You will suffer greatly","color":"dark_red"}]
schedule function akaclone:akafire 20t

