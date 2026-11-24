# Check for victims within 2.0 blocks (Increased slightly for reliability)
# exclude other bullets
execute as @e[distance=..1.25, tag=!akasword.bullet, limit=1, sort=nearest ,type=!armor_stand,type=!#minecraft:impact_projectiles,type=!#minecraft:redirectable_projectile,type=!#minecraft:deflects_projectiles,type=!mannequin] run function akasword:bullet_hit
