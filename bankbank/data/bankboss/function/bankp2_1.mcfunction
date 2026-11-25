execute as @e[tag=bankstand1] at @s run tp @s ^ ^ ^-5 facing entity @p[tag=bank_cutscene]
execute as @a[tag=bank_cutscene] at @s run effect give @s slowness 10 255 true
schedule function bankboss:bankp2_2 1.5s
