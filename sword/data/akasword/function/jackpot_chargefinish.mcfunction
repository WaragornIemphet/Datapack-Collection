# Remove the tag from the victim so they can move freely again
execute as @e[tag=drag_target] at @a[tag=luckybastard_jackpot,limit=1] run tp @s ^ ^ ^20 facing entity @p
tag @e[tag=drag_target] remove drag_target
execute at @s run tag @a[tag=luckyrushdown] remove luckyrushdown