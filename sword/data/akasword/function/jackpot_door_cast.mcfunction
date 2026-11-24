# 1. COOLDOWN CHECK
execute if score @s akasword_door_cd matches 1.. run return 0

# 2. SET COOLDOWN (5 Seconds)
scoreboard players set @s akasword_door_cd 320

# ==================================================
#  STEP A: THE PIVOT (Center Point)
# ==================================================
# 1. Spawn Pivot 2 blocks in front of the player
execute at @s run summon armor_stand ^ ^ ^2 {Tags:["door_root","new_root"],Marker:1b,Invisible:1b,NoGravity:1b}

# 2. INVERT ROTATION (The Fix)
# Force the Pivot to look back AT the player. 
# The doors will inherit this and face the player too.
execute as @e[tag=new_root,limit=1] at @s run tp @s ^ ^ ^ facing entity @p feet


# ==================================================
#  STEP B: THE DOORS (Spawn Relative to Pivot)
# ==================================================
# Since the Pivot is looking AT the player:
# ^1.5 (Pivot's Left) = Player's Right
# ^-1.5 (Pivot's Right) = Player's Left

# DOOR 1 (Pivot's Left)
execute at @e[tag=new_root,limit=1] run summon armor_stand ^2 ^ ^ {Tags:["door_anim","door_left","new_door"],Marker:1b,Invisible:1b,NoGravity:1b,ShowArms:1b,equipment:{head:{id:iron_door,components:{item_model:"syn:shutterdoor2"}}}}

# DOOR 2 (Pivot's Right)
execute at @e[tag=new_root,limit=1] run summon armor_stand ^-2 ^ ^ {Tags:["door_anim","door_right","new_door"],Marker:1b,Invisible:1b,NoGravity:1b,ShowArms:1b,equipment:{head:{id:iron_door,components:{item_model:"syn:shutterdoor1"}}}}

# ==================================================
#  STEP C: ROTATION SYNC
# ==================================================
# Force doors to match the Pivot (Facing the Player)
execute as @e[tag=new_door] run data modify entity @s Rotation set from entity @e[tag=new_root,limit=1] Rotation

# ==================================================
#  STEP D: CLEANUP
# ==================================================
playsound minecraft:block.iron_door.open player @a ~ ~ ~ 1 0.5
playsound minecraft:entity.illusioner.prepare_mirror player @a ~ ~ ~ 1 1.5

tag @e[tag=new_root] remove new_root
tag @e[tag=new_door] remove new_door

schedule function akasword:jackpot_door_slam 0.5s