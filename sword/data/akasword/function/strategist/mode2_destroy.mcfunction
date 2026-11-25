scoreboard players set @s sentryplace_cd 20

kill @e[type=armor_stand,tag=sentry,distance=..1,limit=1,sort=nearest]

playsound minecraft:entity.armor_stand.break voice @a[distance=..16] ~ ~ ~ 100 0.8
particle cloud ~ ~1 ~ 0.3 0.5 0.3 0.05 15 normal
