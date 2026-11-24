execute at @e[tag=akaclone] as @a[distance=..128] run title @s actionbar [{"text":"Face the catastrophe","color":"dark_red"}]
execute at @e[tag=tan,limit=1] run playsound minecraft:entity.illusioner.prepare_mirror voice @a[distance=..128] ~ ~ ~ 100 2 1
kill @e[tag=tan]
scoreboard players set world TanLives -1
scoreboard players add world AkacloneProgress 1

execute if score world FalseakaLives matches 1 run scoreboard players add world FalseakaProgress 1