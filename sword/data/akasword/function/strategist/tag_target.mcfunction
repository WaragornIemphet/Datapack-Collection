# 1. Revoke the advancement so it can trigger again on the next hit
advancement revoke @s only akasword:strategist_hit

# 2. Remove the tag from any existing target (ensuring only 1 exists at a time)
tag @e[tag=spacetarget] remove spacetarget

# 3. Find the entity that just took damage (HurtTime: 10s) near the player and tag it
execute as @e[distance=0.1..7,nbt={HurtTime:10s},limit=1,sort=nearest] run tag @s add spacetarget

# 4. Visual/Audio feedback
execute at @e[tag=spacetarget] run particle portal ~ ~1 ~ 0.5 0.5 0.5 0.1 20 normal
playsound minecraft:block.end_portal_frame.fill player @a ~ ~ ~ 1 2.0