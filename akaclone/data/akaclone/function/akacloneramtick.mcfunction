execute as @e[tag=akaclonestartram,tag=akaclonedes] run scoreboard players add @s AkacloneRamTicks 1

execute as @e[tag=akaclonestartram,tag=akaclonedes,scores={AkacloneRamTicks=1}] run tag @s add akacloneram
execute as @e[tag=akaclonestartram,tag=akaclonedes,scores={AkacloneRamTicks=1..24}] run playsound block.fire.extinguish voice @a[distance=..60] ^ ^ ^ 300 1.5 1
execute as @e[tag=akaclonestartram,tag=akaclonedes,scores={AkacloneRamTicks=1..24}] run particle dust{color:[1.0,0.0,0.0],scale:3} ^ ^1 ^ 0.1 0.2 0.1 0 25
execute as @e[tag=akaclonestartram,tag=akaclonedes,scores={AkacloneRamTicks=1..8}] run execute as @e[tag=akaclone2,limit=1,sort=nearest] at @s run tp @s ^ ^ ^ facing entity @p

execute as @e[tag=akaclonestartram,tag=akaclonedes,scores={AkacloneRamTicks=24}] run tag @s remove akacloneram

execute as @e[tag=akaclonestartram,tag=akaclonedes,scores={AkacloneRamTicks=36}] run function akaclone:akacloneramloop

