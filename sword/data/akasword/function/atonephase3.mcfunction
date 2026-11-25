execute as @e[tag=atonemark] run function akasword:atonefreeze
execute if score @s atonetimer matches 5 as @e[tag=atonemark] at @s run particle minecraft:end_rod ~ ~ ~ 0.0 10.0 0.0 0.01 25

scoreboard players remove @s atonetimer 1
execute if score @s atonetimer matches 1.. run return 0

tag @s add lb_skill_dmg
scoreboard players set #lb_paid_proc lb_math 1
execute as @e[tag=atonemark] at @s run function akasword:atonedetonate
scoreboard players set #lb_paid_proc lb_math 0
tag @s remove lb_skill_dmg

scoreboard players set @s atonestate 0
scoreboard players set @s atonemarkcount 0
