execute as @e[tag=falseakastartram] run scoreboard players add @s FalseakaRamTicks 1

execute as @e[tag=falseakastartram,scores={FalseakaRamTicks=1}] run tag @s add falseakaram
execute as @e[tag=falseakastartram,scores={FalseakaRamTicks=1..24}] run playsound block.fire.extinguish voice @a[distance=..60] ^ ^ ^ 300 1.5 1
execute as @e[tag=falseakastartram,scores={FalseakaRamTicks=1..24}] run particle dust{color:[0.0,0.0,0.0],scale:3} ^ ^1 ^ 0.1 0.2 0.1 0 25
execute as @e[tag=falseakastartram,scores={FalseakaRamTicks=1..24}] run particle dust{color:[1.0,0.0,0.0],scale:2} ~ ~0.5 ~ 0.5 0.5 0.5 0.0001 2
execute as @e[tag=falseakastartram,scores={FalseakaRamTicks=1..8}] run execute as @e[tag=falseaka2,limit=1,sort=nearest] at @s run tp @s ^ ^ ^ facing entity @p

execute as @e[tag=falseakastartram,scores={FalseakaRamTicks=24}] run tag @s remove falseakaram

execute as @e[tag=falseakastartram,scores={FalseakaRamTicks=36}] run function akaclone:falseakaramloop

