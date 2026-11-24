# Reset weapon stage
scoreboard players set @s musket_stage 0

# Audio/Visual effects
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 1 0.8
particle minecraft:explosion_emitter ^ ^1.5 ^3 0.5 0.5 0.5 0.1 1 force

# 1. Summon the bullet (armor stand) at the player's location
summon armor_stand ^ ^ ^1.5 {Tags:["akasword.bullet","new_bullet"],Small:1b,Invulnerable:1b,NoGravity:1b,Invisible:1b,Marker:1b}

# 2. Teleport it to eye level and 0.5 blocks forward
#    The "~ ~" at the end forces it to copy the Player's rotation
execute anchored eyes run tp @e[tag=new_bullet,limit=1] ^ ^-0.5 ^0.5 ~ ~

# 3. Clean up the temp tag
tag @e[tag=new_bullet] remove new_bullet

# 4. Add a 'lifetime' score to prevent infinite bullets (requires objective)
#    Run this in load.mcfunction: scoreboard objectives add bullet_life dummy
scoreboard players set @e[tag=akasword.bullet,distance=..2] bullet_life 80
scoreboard players set @e[tag=new_bullet] bullet_age 0
