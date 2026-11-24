execute at @e[tag=akaclone] as @a[distance=..128] run title @s actionbar [{"text":"Keep struggling","color":"dark_red"}]
execute at @e[tag=kra,limit=1] run playsound minecraft:entity.illusioner.prepare_mirror voice @a[distance=..128] ~ ~ ~ 100 2 1
kill @e[tag=kra]
scoreboard players set world WongkuraLives -1
scoreboard players add world AkacloneProgress 1

execute if score world FalseakaLives matches 1 run scoreboard players add world FalseakaProgress 1