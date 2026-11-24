# 1. Start 5s (100t) cooldown & 24-tick hover/launch sequence
scoreboard players set @s lb_rop_cd 100
scoreboard players set @s roptimer 24

# 2. Clear any leftover hovering swords before summoning fresh ones
kill @e[type=minecraft:armor_stand,tag=rophover]

# 3. Summon 4 swords in a shoulder arc (Outer Left, Inner Left, Inner Right, Outer Right)
execute rotated ~ 0 positioned ^2.2 ^0.5 ^-0.4 run function akasword:ropspawn
tag @e[type=minecraft:armor_stand,tag=ropnew,limit=1] add ropsword1
tag @e[type=minecraft:armor_stand,tag=ropnew] remove ropnew

execute rotated ~ 0 positioned ^1.2 ^1.2 ^-0.4 run function akasword:ropspawn
tag @e[type=minecraft:armor_stand,tag=ropnew,limit=1] add ropsword2
tag @e[type=minecraft:armor_stand,tag=ropnew] remove ropnew

execute rotated ~ 0 positioned ^-1.2 ^1.2 ^-0.4 run function akasword:ropspawn
tag @e[type=minecraft:armor_stand,tag=ropnew,limit=1] add ropsword3
tag @e[type=minecraft:armor_stand,tag=ropnew] remove ropnew

execute rotated ~ 0 positioned ^-2.2 ^0.5 ^-0.4 run function akasword:ropspawn
tag @e[type=minecraft:armor_stand,tag=ropnew,limit=1] add ropsword4
tag @e[type=minecraft:armor_stand,tag=ropnew] remove ropnew

# 4. Summon Audio & VFX
playsound minecraft:block.beacon.activate voice @a[distance=..32] ~ ~ ~ 0.9 1.8
playsound minecraft:block.amethyst_block.chime voice @a[distance=..32] ~ ~ ~ 1.2 1.4
particle minecraft:end_rod ~ ~1.5 ~ 1.5 0.5 1.5 0.05 25 normal