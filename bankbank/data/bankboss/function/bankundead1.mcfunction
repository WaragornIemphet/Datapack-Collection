execute as @e[tag=aurak,limit=1] at @s run scoreboard players add world BankSkill 1

execute at @e[tag=bank2p2,limit=1] run tag @p[distance=..20,sort=furthest,tag=!banktarget] add banktarget
execute as @e[tag=banktarget] at @s run particle glow_squid_ink ^ ^1 ^ 0.5 0.5 0.5 0.1 150 force
execute as @a[tag=banktarget,limit=1] at @s run damage @s 10 magic by @e[tag=bank2,limit=1]

execute at @a[tag=banktarget,limit=1] at @a[distance=..100] run effect give @s blindness 2 0 true

schedule function bankboss:bankundead2 2s
