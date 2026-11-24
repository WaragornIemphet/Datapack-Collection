# akasword:mechanics/knife_logic

# Trigger Check
execute as @a[tag=speed_owner,scores={used_mih=1..,knife_reload=0,knife_cd=0,knife_ammo=1..}] run tag @s add fire_knife

# ==================================================
#  1. SUMMON & ALIGNMENT
# ==================================================
# A. Summon Invisible Armor Stand
execute as @a[tag=fire_knife] at @s run summon armor_stand ^ ^1.5 ^ {Pose:{RightArm:[0f,0f,327f]},ShowArms:1b,Invisible:1b,Marker:1b,Small:1b,NoGravity:1b,Tags:["mih_flying_knife","new_knife"],equipment:{mainhand:{id:iron_sword,count:1}},drop_chances:{mainhand:0f}}

# B. Sync Position (Player Eyes)
execute as @a[tag=fire_knife] at @s anchored eyes run tp @e[tag=new_knife,limit=1] ~ ~ ~ ~ ~
execute as @a[tag=fire_knife] at @s as @e[tag=new_knife,limit=1] run tp @s ^ ^1 ^0.5

# C. Init Lifespan
scoreboard players set @e[tag=new_knife] knife_life 0
tag @e[tag=new_knife] remove new_knife

# ==================================================
#  2. STATS & EFFECTS
# ==================================================
execute as @a[tag=fire_knife] at @s run playsound minecraft:entity.arrow.shoot player @a ~ ~ ~ 1 2
execute as @a[tag=fire_knife] at @s run particle sweep_attack ^ ^1.45 ^1 0 0 0 0 1 force

# Ammo Deduct
execute as @a[tag=fire_knife] run scoreboard players remove @s knife_ammo 1

# Set Cooldown (0.5s = 10 Ticks)
execute as @a[tag=fire_knife] run scoreboard players set @s knife_cd 10

# Reset Trigger
scoreboard players set @a used_mih 0
tag @a remove fire_knife
