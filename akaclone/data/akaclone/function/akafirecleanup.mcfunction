execute at @a run tag @a remove akatarget
execute at @e[tag=akaclone2] run data merge entity @e[tag=akaclone2,limit=1] {Invulnerable:0b}
scoreboard players set world AkafireLoop 0
execute as @e[tag=akaclone2,limit=1] at @s run tag @s remove usingakafire