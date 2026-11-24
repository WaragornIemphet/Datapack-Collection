execute at @e[tag=falseaka2] run data merge entity @e[tag=falseaka2,limit=1] {Invulnerable:1b}
execute at @e[tag=falseaka2] run data merge entity @e[tag=falseaka2,limit=1] {NoAI:1b}
execute as @e[tag=falseaka2] at @s run tag @s add falseakastartram
execute at @e[tag=falseaka,limit=1] as @a[distance=..128] run title @s actionbar [{"text":"Running isn't an option","color":"dark_red"}]
