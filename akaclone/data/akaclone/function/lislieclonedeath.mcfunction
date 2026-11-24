execute at @e[tag=fasleaka] as @a[distance=..128] run title @s actionbar [{"text":"Interesting","color":"dark_red"}]
execute at @e[tag=lisclone,limit=1] run playsound minecraft:entity.illusioner.prepare_mirror voice @a[distance=..128] ~ ~ ~ 100 2 1
kill @e[tag=lisclone]
scoreboard players set world LisliecloneLives -1
scoreboard players add world FalseakaProgress 1