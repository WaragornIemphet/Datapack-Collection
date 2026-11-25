advancement revoke @s only akasword:strategist_hit

tag @e[tag=spacetarget] remove spacetarget

execute as @e[distance=0.1..7,nbt={HurtTime:10s},limit=1,sort=nearest] run tag @s add spacetarget

execute at @e[tag=spacetarget] run particle portal ~ ~1 ~ 0.5 0.5 0.5 0.1 20 normal
playsound minecraft:block.end_portal_frame.fill player @a ~ ~ ~ 1 2.0
