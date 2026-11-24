# 1. Enforce the 5 Trap maximum
execute store result score #trap_count trapplace_cd if entity @e[type=armor_stand,tag=trapsentry]
execute if score #trap_count trapplace_cd matches 13.. run tellraw @s {"text":"Trap limit reached (13/13)!","color":"red"}
execute if score #trap_count trapplace_cd matches 13.. run return 0

# 2. 15-second cooldown
scoreboard players set @s trapplace_cd 300

# 3. Summon identical armor stand, but with "trap_init" tag added
summon armor_stand ~ ~ ~ {Pose:{Body:[0f,344f,0f],LeftArm:[0f,360f,0f],RightArm:[270f,0f,0f]},ShowArms:1b,NoBasePlate:1b,DisabledSlots:2113343,CustomName:[{"text":"Sentry V1","color":"dark_aqua"}],Health:100,Invulnerable:1b,NoGravity:1b,Tags:[trapsentry,trap_mobs,trap_init],attributes:[{id:max_health,base:100f}],equipment:{mainhand:{id:bow,components:{item_model:"syn:luger"},count:1},head:{id:player_head,components:{profile:{name:MrJoe_v69}}},chest:{id:leather_chestplate,components:{trim:{pattern:raiser,material:gold},dyed_color:4610218},count:1},legs:{id:leather_leggings,components:{dyed_color:4610218},count:1},feet:{id:leather_boots,components:{dyed_color:4610218},count:1}}}

# 4. Instantly rotate the trap to match the player's looking direction (Yaw), keeping Pitch flat (0)
execute as @e[tag=trap_init] at @s rotated as @p run tp @s ~ ~ ~ ~ 0
tag @e[tag=trap_init] remove trap_init

# 5. Audio
playsound minecraft:block.anvil.place voice @a[distance=..16] ~ ~ ~ 100 1.2