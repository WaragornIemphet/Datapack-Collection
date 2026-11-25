execute at @e[tag=powp2p2,limit=1] as @a[distance=..20] run damage @s 40 mob_attack by @e[tag=powp,limit=1]
execute at @s run particle sweep_attack ^ ^0.5 ^-0.5 10 10 10 0.5 1000 normal
execute at @s run particle glow_squid_ink ^ ^0.5 ^-0.5 10 10 10 0.5 1000 normal
execute as @a[distance=..50] run playsound minecraft:item.mace.smash_ground_heavy voice @s ~ ~ ~ 150 1
