# --- senator:tick ---

# 1. INITIALIZATION & RESET
execute as @a[tag=nanomachine] unless score @s sena_nano matches 0..200 run scoreboard players set @s sena_nano 200

tag @a[tag=nanomachine] remove sena_has_armor
tag @a[tag=nanomachine] remove nanomachineconflict
tag @a[tag=nanomachine] remove nanomachinebreak
tag @a[tag=nanomachine] remove sena_hit

# 2. DETECT STATES (High-performance item checks)
execute as @a[tag=nanomachine] if items entity @s armor.head * run tag @s add sena_has_armor
execute as @a[tag=nanomachine] if items entity @s armor.chest * run tag @s add sena_has_armor
execute as @a[tag=nanomachine] if items entity @s armor.legs * run tag @s add sena_has_armor
execute as @a[tag=nanomachine] if items entity @s armor.feet * run tag @s add sena_has_armor

execute as @a[tag=nanomachine] if items entity @s weapon.mainhand minecraft:totem_of_undying run tag @s add sena_has_armor
execute as @a[tag=nanomachine] if items entity @s weapon.offhand minecraft:totem_of_undying run tag @s add sena_has_armor

execute as @a[tag=nanomachine] if items entity @s weapon.mainhand * run tag @s add nanomachineconflict

# 3. DAMAGE DETECTION & DEPLETION
execute as @a[tag=nanomachine] if score @s sena_dmg matches 1.. run tag @s add sena_hit
execute as @a[tag=nanomachine] if score @s sena_abs matches 1.. run tag @s add sena_hit
execute as @a[tag=nanomachine] if score @s sena_res matches 1.. run tag @s add sena_hit

execute as @a[tag=sena_hit,tag=!sena_has_armor] run scoreboard players remove @s sena_nano 1
execute as @a[tag=sena_hit,tag=!sena_has_armor] run scoreboard players set @s sena_timer 0

scoreboard players reset @a sena_dmg
scoreboard players reset @a sena_abs
scoreboard players reset @a sena_res

execute as @a[tag=nanomachine,scores={sena_nano=..0}] run scoreboard players set @s sena_nano 0

# 4. RECOVERY
execute as @a[tag=nanomachine,tag=!sena_has_armor,tag=!sena_hit,scores={sena_nano=0..199}] run scoreboard players add @s sena_timer 1

execute as @a[tag=nanomachine,scores={sena_timer=240..}] run scoreboard players add @s sena_nano 2
execute as @a[tag=nanomachine,scores={sena_timer=240..}] run scoreboard players set @s sena_timer 0

execute as @a[tag=nanomachine,scores={sena_nano=201..}] run scoreboard players set @s sena_nano 200

# 5. STATE EVALUATION (BREAK)
execute as @a[tag=nanomachine,scores={sena_nano=0}] run tag @s add nanomachinebreak

# 6. APPLYING BUFFS & DEBUFFS
execute as @a[tag=nanomachinebreak] run effect give @s minecraft:mining_fatigue 1 0 true

execute as @a[tag=nanomachine,tag=sena_has_armor] run attribute @s armor base set 0
execute as @a[tag=nanomachine,tag=sena_has_armor] run attribute @s armor_toughness base set 0
execute as @a[tag=nanomachine,tag=sena_has_armor] run attribute @s attack_knockback base set 0
execute as @a[tag=nanomachine,tag=sena_has_armor] run attribute @s knockback_resistance base set 0
execute as @a[tag=nanomachine,tag=sena_has_armor] run attribute @s safe_fall_distance base reset
execute as @a[tag=nanomachine,tag=nanomachinebreak] run attribute @s armor base set 0
execute as @a[tag=nanomachine,tag=nanomachinebreak] run attribute @s armor_toughness base set 0
execute as @a[tag=nanomachine,tag=nanomachinebreak] run attribute @s attack_knockback base set 0
execute as @a[tag=nanomachine,tag=nanomachinebreak] run attribute @s knockback_resistance base set 0
execute as @a[tag=nanomachine,tag=nanomachinebreak] run attribute @s safe_fall_distance base reset

execute as @a[tag=nanomachine,tag=!sena_has_armor,tag=!nanomachinebreak] run attribute @s armor base set 40
execute as @a[tag=nanomachine,tag=!sena_has_armor,tag=!nanomachinebreak] run attribute @s armor_toughness base set 35
execute as @a[tag=nanomachine,tag=!sena_has_armor,tag=!nanomachinebreak] run attribute @s knockback_resistance base set 1
execute as @a[tag=nanomachine,tag=!sena_has_armor,tag=!nanomachinebreak] run attribute @s attack_knockback base set 5
execute as @a[tag=nanomachine,tag=!sena_has_armor,tag=!nanomachinebreak] run attribute @s safe_fall_distance base set 50

execute as @a[tag=nanomachine,tag=!sena_has_armor,tag=!nanomachinebreak] run effect give @s minecraft:resistance 1 3 true
execute as @a[tag=nanomachine,tag=!sena_has_armor,tag=!nanomachinebreak] run effect give @s minecraft:fire_resistance 1 0 true
execute as @a[tag=nanomachineconflict,tag=!sena_has_armor,tag=!nanomachinebreak] run effect give @s minecraft:regeneration 1 4 true
execute as @a[tag=nanomachine,tag=!sena_has_armor,tag=!nanomachinebreak,tag=!nanomachineconflict] run effect give @s minecraft:saturation 1 0 true
execute as @a[tag=nanomachine,tag=!sena_has_armor,tag=!nanomachinebreak,tag=!nanomachineconflict] run effect give @s minecraft:health_boost 1 4 true
execute as @a[tag=nanomachine,tag=!sena_has_armor,tag=!nanomachinebreak,tag=!nanomachineconflict] run effect give @s minecraft:strength 1 9 true
execute as @a[tag=nanomachine,tag=!sena_has_armor,tag=!nanomachinebreak,tag=!nanomachineconflict] run effect give @s minecraft:speed 1 1 true
execute as @a[tag=nanomachine,tag=!sena_has_armor,tag=!nanomachinebreak,tag=!nanomachineconflict] run effect give @s minecraft:resistance 1 6 true
execute as @a[tag=nanomachine,tag=!sena_has_armor,tag=!nanomachinebreak,tag=!nanomachineconflict] run effect give @s minecraft:jump_boost 1 2 true

# 7. CUSTOM MUSIC LOGIC
# Constantly decrease the music cooldown timer
execute as @a[tag=nanomachine,scores={sena_music_cd=1..}] run scoreboard players remove @s sena_music_cd 1

# If DISABLED (armor/totem), wipe music cooldown immediately so it can reset
execute as @a[tag=nanomachine,tag=sena_has_armor] run scoreboard players set @s sena_music_cd 0

# Trigger music when taking damage (Only if cooldown is 0, score is below 200, and not disabled/broken)
execute as @a[tag=nanomachine,tag=sena_hit,tag=!sena_has_armor,tag=!nanomachinebreak,scores={sena_nano=..199,sena_music_cd=..0}] at @s run playsound minecraft:music_disc.nanomachine voice @a[distance=..64] ~ ~ ~ 200 1 1
execute as @a[tag=nanomachine,tag=sena_hit,tag=!sena_has_armor,tag=!nanomachinebreak,scores={sena_nano=..199,sena_music_cd=..0}] run tag @s add sena_music_playing

# Set cooldown to 5400 ticks (4 minutes and 30 seconds)
execute as @a[tag=nanomachine,tag=sena_hit,tag=!sena_has_armor,tag=!nanomachinebreak,scores={sena_music_cd=..0}] run scoreboard players set @s sena_music_cd 5400

# Stop music and wipe cooldown if score regenerates back to max
execute as @a[tag=nanomachine,scores={sena_nano=200,sena_music_cd=1..}] run scoreboard players set @s sena_music_cd 0
execute as @a[tag=nanomachine,tag=sena_music_playing,scores={sena_nano=200}] at @s run stopsound @a[distance=..64] voice minecraft:music_disc.nanomachine
execute as @a[tag=nanomachine,tag=sena_music_playing,scores={sena_nano=200}] run tag @s remove sena_music_playing

# Stop music if state changes to DISABLED (armor/totem) or BROKEN
execute as @a[tag=nanomachine,tag=sena_music_playing,tag=sena_has_armor] at @s run stopsound @a[distance=..64] voice minecraft:music_disc.nanomachine
execute as @a[tag=nanomachine,tag=sena_music_playing,tag=sena_has_armor] run tag @s remove sena_music_playing

execute as @a[tag=nanomachine,tag=sena_music_playing,tag=nanomachinebreak] at @s run stopsound @a[distance=..64] voice minecraft:music_disc.nanomachine
execute as @a[tag=nanomachine,tag=sena_music_playing,tag=nanomachinebreak] run tag @s remove sena_music_playing

# Remove the playing tag naturally when the 4m 30s cooldown finishes
execute as @a[tag=nanomachine,tag=sena_music_playing,scores={sena_music_cd=..0}] run tag @s remove sena_music_playing

# 8. DELEGATE UI
execute as @a[tag=nanomachine] run function senator:ui