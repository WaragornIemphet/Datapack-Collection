execute as @e[tag=lislieclone2,limit=1] at @s run tp @s ^ ^ ^ facing entity @p
execute as @e[tag=lisclone,limit=1] at @s run tp @s ^ ^ ^ facing entity @p
execute at @e[tag=lisclone] run particle minecraft:flame ^-0.4 ^1.6 ^1.1 0.05 0.05 0.05 0.00001 20 force
execute at @e[tag=lisclone] run particle minecraft:smoke ^-0.4 ^1.55 ^2 0.0 0.5 1 0.01 200 force
execute at @e[tag=lisclone] run playsound minecraft:entity.generic.explode voice @a[distance=..128] ^ ^ ^ 100 2 1
execute at @e[tag=lisclone] run playsound minecraft:entity.ghast.shoot voice @a[distance=..128] ^ ^ ^ 100 1.5 1
execute at @e[tag=lisclone,limit=1] run damage @p[distance=..3.9,gamemode=survival] 35 minecraft:arrow by @e[tag=lisclone,limit=1]
execute at @e[tag=lisclone,limit=1] run damage @p[distance=4..12.9,gamemode=survival] 25 minecraft:arrow by @e[tag=lisclone,limit=1]
execute at @e[tag=lisclone,limit=1] run damage @p[distance=13..128,gamemode=survival] 10 minecraft:arrow by @e[tag=lisclone,limit=1]

