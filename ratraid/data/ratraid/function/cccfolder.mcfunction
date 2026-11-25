execute at @a as @e[tag=lutaris] unless entity @s run bossbar set lutaris players
execute at @a as @e[tag=lutaris] if entity @s run bossbar set lutaris players @a

scoreboard players add world lutarisskill 1
execute if score world lutarisskill matches 400 run function ratraid:cccskill
execute if score world lutarisskill matches 400.. run scoreboard players set world lutarisskill 0

execute store result bossbar lutaris value run data get entity @e[tag=lutaris,limit=1] Health

execute as @e[tag=klan,limit=1] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:arrow"}}]
execute as @e[tag=klan,limit=1] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:bone"}}]

execute as @e[tag=klan] at @s run attribute @s safe_fall_distance base set 1024
