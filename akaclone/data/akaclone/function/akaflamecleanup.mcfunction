scoreboard players set world FalseAkafireLoop 0
execute at @a run tag @a remove fakatarget
execute at @e[tag=falseaka2] run data merge entity @e[tag=falseaka2,limit=1] {Invulnerable:0b}
execute as @e[tag=falseaka,limit=1] at @s run tag @s remove usingfakaflame
