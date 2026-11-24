execute as @e[tag=bankstand1] at @p[tag=bank_cutscene] run tp @s ^ ^ ^3 facing entity @p[tag=bank_cutscene]
execute at @e[tag=bankstand] run effect give @a[distance=..100] blindness 1 1 true
schedule function bankboss:bankp1_6 1.2s