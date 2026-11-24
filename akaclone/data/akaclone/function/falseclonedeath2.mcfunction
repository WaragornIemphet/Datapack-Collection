execute at @e[tag=fasleaka] as @a[distance=..128] run title @s actionbar [{"text":"I REFUSE","color":"dark_red"}]
execute at @e[tag=falseakaclone1,limit=1] run playsound minecraft:entity.illusioner.prepare_mirror voice @a[distance=..128] ~ ~ ~ 100 2 1
kill @e[tag=falseakaclone1]
scoreboard players add world FalseAkacloneProgress 1