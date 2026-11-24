# ========================================
# DPS DUMMY LOGIC
# ========================================
# 1. Read the dummy's exact health this frame
execute as @e[tag=dps_dummy] store result score @s current_hp run data get entity @s Health

# 2. Prevent false damage on the very first tick it spawns
execute as @e[tag=dps_dummy,scores={dummy_hp=0}] run scoreboard players operation @s dummy_hp = @s current_hp

# 3. Calculate exactly how much damage it took this tick
execute as @e[tag=dps_dummy] run scoreboard players operation @s dmg_taken = @s dummy_hp
execute as @e[tag=dps_dummy] run scoreboard players operation @s dmg_taken -= @s current_hp

# 4. If it took damage, add it to the rolling 1-second DPS pool!
execute as @e[tag=dps_dummy,scores={dmg_taken=1..}] run scoreboard players operation @s dummy_dps += @s dmg_taken

# 5. Save the current health for the next tick's math
execute as @e[tag=dps_dummy] run scoreboard players operation @s dummy_hp = @s current_hp

# ========================================
# DPS TIMER & VISUAL UPDATE
# ========================================
# 1. Tick the timer forward
execute as @e[tag=dps_dummy] run scoreboard players add @s dummy_timer 1

# 2. Every 20 ticks (1 second), push the DPS number to storage and run the visual macro!
execute as @e[tag=dps_dummy,scores={dummy_timer=20..}] run execute store result storage akasword:dps value int 1 run scoreboard players get @s dummy_dps
execute as @e[tag=dps_dummy,scores={dummy_timer=20..}] at @s run function akasword:update_dps_macro with storage akasword:dps

# 3. Reset the timer and empty the DPS pool for the next second
execute as @e[tag=dps_dummy,scores={dummy_timer=20..}] run scoreboard players set @s dummy_dps 0
execute as @e[tag=dps_dummy,scores={dummy_timer=20..}] run scoreboard players set @s dummy_timer 0

# ========================================
# AUTO-HEAL (True Immortality)
# ========================================
# Instantly resets the mannequin to 1000 HP every single tick so it never dies, 
# while keeping the DPS math perfectly accurate!
execute as @e[tag=dps_dummy] run data modify entity @s Health set value 1000f
execute as @e[tag=dps_dummy] run scoreboard players set @s dummy_hp 1000