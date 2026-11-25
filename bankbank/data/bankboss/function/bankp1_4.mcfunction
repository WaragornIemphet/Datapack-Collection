execute as @e[tag=bankstand1] at @p[tag=bank_cutscene] run tp @s ^ ^ ^5 facing entity @p[tag=bank_cutscene]
execute at @e[tag=bankstand] run effect give @a[distance=..100] blindness 1 1 true
schedule function bankboss:bankp1_5 1.5s
