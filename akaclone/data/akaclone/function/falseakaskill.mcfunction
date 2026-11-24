execute as @e[tag=falseaka2,limit=1] at @s run data merge entity @s {Invulnerable:1b}
execute as @e[tag=falseaka,limit=1] at @s run tag @s add usingfakaflame
execute as @e[tag=falseaka] at @s run effect give @s glowing 26 0 true
execute as @e[tag=falseaka2,limit=1] at @s run effect give @s weakness 26 255 true
execute as @e[tag=falseaka2,limit=1] at @s run effect give @s slowness 26 255 true
execute at @e[tag=falseaka,limit=1] as @a[distance=..128] run title @s actionbar [{"text":"Suffering is inevitable","color":"dark_red"}]
execute at @e[tag=falseaka,limit=1] run schedule function akaclone:akaflame 15t
scoreboard players add world FalseakaSkill 1
execute if score world FalseAkaDeath matches 1 run scoreboard players add world FalseakaSpamSkill 1


