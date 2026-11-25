execute at @e[tag=fasleaka] as @a[distance=..128] run title @s actionbar [{"text":"Running out of luck?","color":"dark_red"}]
execute at @e[tag=gunclone,limit=1] run playsound minecraft:entity.illusioner.prepare_mirror voice @a[distance=..128] ~ ~ ~ 100 2 1
kill @e[tag=gunclone]
scoreboard players set world GuncloneLives -1
scoreboard players add world FalseakaProgress 1
