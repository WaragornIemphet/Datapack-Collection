execute at @e[tag=bankfly] run tag @p[distance=..2,tag=!bankimp] add bankimp
execute as @a[tag=bankimp,limit=1] at @s run damage @s 20 arrow by @e[tag=bankfly,limit=1]
execute as @e[tag=bankfly] at @s run kill @s

execute at @a[tag=bankimp,limit=1] run schedule function bankboss:bankthrowdebuffs 0.5s