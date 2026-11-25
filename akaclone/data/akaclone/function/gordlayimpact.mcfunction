execute at @e[tag=slashfly] run tag @p[distance=..2,tag=!tanimp] add tanimp
execute as @a[tag=tanimp,limit=1] at @s run damage @s 20 arrow by @e[tag=slashfly,limit=1]
execute as @e[tag=slashfly] at @s run kill @s

execute at @a[tag=tanimp,limit=1] run schedule function akaclone:tanslashdebuff 0.1s append
