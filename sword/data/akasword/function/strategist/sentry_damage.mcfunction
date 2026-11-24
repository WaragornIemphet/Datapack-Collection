# 1. Reset i-frames so the entity can take rapid-fire damage
data modify entity @e[tag=spacetarget,limit=1] HurtTime set value 0s

# 2. Deal the dynamic damage, making sure the sentry acts as the physical projectile
$damage @e[tag=spacetarget,limit=1] $(damage) minecraft:arrow by @e[type=armor_stand,tag=sentry,limit=1] from @a[tag=strategist,limit=1]