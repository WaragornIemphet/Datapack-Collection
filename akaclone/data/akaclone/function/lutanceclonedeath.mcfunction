execute at @e[tag=fasleaka] as @a[distance=..128] run title @s actionbar [{"text":"Interesting","color":"dark_red"}]
execute at @e[tag=lutanclone,limit=1] run playsound minecraft:entity.illusioner.prepare_mirror voice @a[distance=..128] ~ ~ ~ 100 2 1
kill @e[tag=lutanclone]
kill @e[tag=kkc]
scoreboard players set world LutancecloneLives -1
scoreboard players add world FalseakaProgress 1