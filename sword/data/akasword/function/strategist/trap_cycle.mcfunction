execute if entity @s[tag=trap_mobs] run tag @s add next_players
execute if entity @s[tag=trap_players] run tag @s add next_both
execute if entity @s[tag=trap_both] run tag @s add next_mobs

execute if entity @s[tag=next_players] run tellraw @a[tag=strategist] {"text":"[+] Trap Target Updated: PLAYERS","color":"yellow"}
execute if entity @s[tag=next_players] run tag @s add trap_players
execute if entity @s[tag=next_players] run tag @s remove trap_mobs

execute if entity @s[tag=next_both] run tellraw @a[tag=strategist] {"text":"[+] Trap Target Updated: ALL ENTITIES","color":"red"}
execute if entity @s[tag=next_both] run tag @s add trap_both
execute if entity @s[tag=next_both] run tag @s remove trap_players

execute if entity @s[tag=next_mobs] run tellraw @a[tag=strategist] {"text":"[+] Trap Target Updated: MOBS","color":"green"}
execute if entity @s[tag=next_mobs] run tag @s add trap_mobs
execute if entity @s[tag=next_mobs] run tag @s remove trap_both

tag @s remove next_players
tag @s remove next_both
tag @s remove next_mobs
