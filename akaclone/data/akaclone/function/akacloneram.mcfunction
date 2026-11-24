execute at @e[tag=akaclone2] run data merge entity @e[tag=akaclone2,limit=1] {Invulnerable:1b}
execute at @e[tag=akaclone2] run data merge entity @e[tag=akaclone2,limit=1] {NoAI:1b}
execute as @e[tag=akaclone2] at @s run tag @s add akaclonestartram
execute at @e[tag=akaclone,limit=1] as @a[distance=..128] run title @s actionbar [{"text":"It's futile","color":"dark_red"}]
