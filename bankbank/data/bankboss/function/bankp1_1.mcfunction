execute as @e[tag=bankstand1] at @s run tp @s ^ ^ ^-5 facing entity @p[tag=bank_cutscene]
execute as @a[tag=bank_cutscene] at @s run effect give @s slowness 10 255 true
execute at @e[tag=bank] run stopsound @a voice music_disc.bankstart
schedule clear bankboss:bankloop
schedule clear bankboss:bankp1loop
schedule clear bankboss:bankp2loop
function bankboss:bankp1loop
schedule function bankboss:bankp1_2 1.5s