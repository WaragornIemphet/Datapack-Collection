data modify entity @e[tag=spacetarget,limit=1] HurtTime set value 0s

$damage @e[tag=spacetarget,limit=1] $(damage) minecraft:arrow by @e[type=armor_stand,tag=sentry,limit=1] from @a[tag=strategist,limit=1]
