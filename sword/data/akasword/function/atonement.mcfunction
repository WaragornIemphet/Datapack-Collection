# 1. Prevent overlapping cast if Atonement is already active
execute if score @s atonestate matches 1.. run return 0

# 2. Deduct 10 charges, start 15s (300t) cooldown, & update bossbar
scoreboard players remove @s ult_charge 10
scoreboard players set @s lb_atone_cd 300
execute store result bossbar ult_bar value run scoreboard players get @s ult_charge

# 3. Initialize Phase 1 (46 ticks: 0.3s pose + 20 launches every 2 ticks)
scoreboard players set @s atonestate 1
scoreboard players set @s atonetimer 46
scoreboard players set @s atonemarkcount 0
kill @e[type=minecraft:armor_stand,tag=atonehover]

# 4. Summon 20 Swords — Inner Arc (1..8)
execute rotated ~ 0 positioned ^2.2 ^0.4 ^-0.6 run function akasword:atonespawn
tag @e[type=minecraft:armor_stand,tag=atonenew,limit=1] add atonesword1
tag @e[type=minecraft:armor_stand,tag=atonenew] remove atonenew

execute rotated ~ 0 positioned ^2.0 ^1.1 ^-0.6 run function akasword:atonespawn
tag @e[type=minecraft:armor_stand,tag=atonenew,limit=1] add atonesword2
tag @e[type=minecraft:armor_stand,tag=atonenew] remove atonenew

execute rotated ~ 0 positioned ^1.4 ^1.7 ^-0.6 run function akasword:atonespawn
tag @e[type=minecraft:armor_stand,tag=atonenew,limit=1] add atonesword3
tag @e[type=minecraft:armor_stand,tag=atonenew] remove atonenew

execute rotated ~ 0 positioned ^0.6 ^2.1 ^-0.6 run function akasword:atonespawn
tag @e[type=minecraft:armor_stand,tag=atonenew,limit=1] add atonesword4
tag @e[type=minecraft:armor_stand,tag=atonenew] remove atonenew

execute rotated ~ 0 positioned ^-0.6 ^2.1 ^-0.6 run function akasword:atonespawn
tag @e[type=minecraft:armor_stand,tag=atonenew,limit=1] add atonesword5
tag @e[type=minecraft:armor_stand,tag=atonenew] remove atonenew

execute rotated ~ 0 positioned ^-1.4 ^1.7 ^-0.6 run function akasword:atonespawn
tag @e[type=minecraft:armor_stand,tag=atonenew,limit=1] add atonesword6
tag @e[type=minecraft:armor_stand,tag=atonenew] remove atonenew

execute rotated ~ 0 positioned ^-2.0 ^1.1 ^-0.6 run function akasword:atonespawn
tag @e[type=minecraft:armor_stand,tag=atonenew,limit=1] add atonesword7
tag @e[type=minecraft:armor_stand,tag=atonenew] remove atonenew

execute rotated ~ 0 positioned ^-2.2 ^0.4 ^-0.6 run function akasword:atonespawn
tag @e[type=minecraft:armor_stand,tag=atonenew,limit=1] add atonesword8
tag @e[type=minecraft:armor_stand,tag=atonenew] remove atonenew

# 5. Summon 20 Swords — Outer Arc (9..20)
execute rotated ~ 0 positioned ^3.4 ^0.2 ^-1.1 run function akasword:atonespawn
tag @e[type=minecraft:armor_stand,tag=atonenew,limit=1] add atonesword9
tag @e[type=minecraft:armor_stand,tag=atonenew] remove atonenew

execute rotated ~ 0 positioned ^3.3 ^0.9 ^-1.1 run function akasword:atonespawn
tag @e[type=minecraft:armor_stand,tag=atonenew,limit=1] add atonesword10
tag @e[type=minecraft:armor_stand,tag=atonenew] remove atonenew

execute rotated ~ 0 positioned ^3.0 ^1.6 ^-1.1 run function akasword:atonespawn
tag @e[type=minecraft:armor_stand,tag=atonenew,limit=1] add atonesword11
tag @e[type=minecraft:armor_stand,tag=atonenew] remove atonenew

execute rotated ~ 0 positioned ^2.5 ^2.2 ^-1.1 run function akasword:atonespawn
tag @e[type=minecraft:armor_stand,tag=atonenew,limit=1] add atonesword12
tag @e[type=minecraft:armor_stand,tag=atonenew] remove atonenew

execute rotated ~ 0 positioned ^1.8 ^2.7 ^-1.1 run function akasword:atonespawn
tag @e[type=minecraft:armor_stand,tag=atonenew,limit=1] add atonesword13
tag @e[type=minecraft:armor_stand,tag=atonenew] remove atonenew

execute rotated ~ 0 positioned ^0.9 ^3.0 ^-1.1 run function akasword:atonespawn
tag @e[type=minecraft:armor_stand,tag=atonenew,limit=1] add atonesword14
tag @e[type=minecraft:armor_stand,tag=atonenew] remove atonenew

execute rotated ~ 0 positioned ^-0.9 ^3.0 ^-1.1 run function akasword:atonespawn
tag @e[type=minecraft:armor_stand,tag=atonenew,limit=1] add atonesword15
tag @e[type=minecraft:armor_stand,tag=atonenew] remove atonenew

execute rotated ~ 0 positioned ^-1.8 ^2.7 ^-1.1 run function akasword:atonespawn
tag @e[type=minecraft:armor_stand,tag=atonenew,limit=1] add atonesword16
tag @e[type=minecraft:armor_stand,tag=atonenew] remove atonenew

execute rotated ~ 0 positioned ^-2.5 ^2.2 ^-1.1 run function akasword:atonespawn
tag @e[type=minecraft:armor_stand,tag=atonenew,limit=1] add atonesword17
tag @e[type=minecraft:armor_stand,tag=atonenew] remove atonenew

execute rotated ~ 0 positioned ^-3.0 ^1.6 ^-1.1 run function akasword:atonespawn
tag @e[type=minecraft:armor_stand,tag=atonenew,limit=1] add atonesword18
tag @e[type=minecraft:armor_stand,tag=atonenew] remove atonenew

execute rotated ~ 0 positioned ^-3.3 ^0.9 ^-1.1 run function akasword:atonespawn
tag @e[type=minecraft:armor_stand,tag=atonenew,limit=1] add atonesword19
tag @e[type=minecraft:armor_stand,tag=atonenew] remove atonenew

execute rotated ~ 0 positioned ^-3.4 ^0.2 ^-1.1 run function akasword:atonespawn
tag @e[type=minecraft:armor_stand,tag=atonenew,limit=1] add atonesword20
tag @e[type=minecraft:armor_stand,tag=atonenew] remove atonenew

# 6. Cast Audio & Halo Flash
playsound minecraft:block.beacon.activate voice @a[distance=..48] ~ ~ ~ 1.4 1.5
playsound minecraft:block.bell.resonate voice @a[distance=..48] ~ ~ ~ 1.0 1.4
particle minecraft:end_rod ~ ~1.8 ~ 2.4 1.0 2.4 0.08 60 normal