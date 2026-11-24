# akasword:mechanics/ult_logic

# ==================================================
#  PATH A: COUNTER STANCE (Defensive)
# ==================================================

# 1. DETECT HIT (Robust Check)
# If Tag is active AND (Damage > 0 OR Resisted > 0 OR Absorbed > 0)
execute as @s[tag=mih_counter_stance] if score @s mih_damage matches 1.. run tag @s add counter_success
execute as @s[tag=mih_counter_stance] if score @s mih_damage1 matches 1.. run tag @s add counter_success
execute as @s[tag=mih_counter_stance] if score @s mih_damage2 matches 1.. run tag @s add counter_success

# 2. TRIGGER CUTSCENE (If Success)
# Tag Actors
execute as @s[tag=counter_success] run tag @s add mih_attacker
execute as @s[tag=counter_success] at @s on attacker run tag @s add mih_victim

# Start Cutscene Timer
execute as @s[tag=counter_success] run scoreboard players set @s cutscene_timer 1

# 3. CLEANUP & RESET (Prevent Loops)
# Reset Scores & Remove Stance Tag immediately
execute as @s[tag=counter_success] run scoreboard players set @s mih_ult_active 0
execute as @s[tag=counter_success] run scoreboard players set @s mih_ult_cd 6000

scoreboard players set @s[tag=counter_success] mih_damage 0
scoreboard players set @s[tag=counter_success] mih_damage1 0
scoreboard players set @s[tag=counter_success] mih_damage2 0

tag @s[tag=counter_success] remove mih_counter_stance
tag @s remove counter_success


# 4. TIMEOUT (No Hit Detected)
# If timer runs out, remove stance and set short cooldown
execute if score @s mih_ult_active matches 1.. run scoreboard players remove @s mih_ult_active 1

# If timer hits 0 and we still have the stance tag -> We failed.
execute if score @s mih_ult_active matches 0 as @s[tag=mih_counter_stance] run scoreboard players set @s mih_ult_cd 1600
execute if score @s mih_ult_active matches 0 as @s[tag=mih_counter_stance] run tag @s remove mih_counter_stance

# Ensure damage scores don't accumulate while waiting
execute as @s[tag=mih_counter_stance] run scoreboard players set @s mih_damage 0
execute as @s[tag=mih_counter_stance] run scoreboard players set @s mih_damage1 0
execute as @s[tag=mih_counter_stance] run scoreboard players set @s mih_damage2 0


# ==================================================
#  PATH B: UNIVERSE RESET (Unchanged)
# ==================================================
execute if score @s mih_accel_seq matches 1.. run scoreboard players add @s mih_accel_seq 1
execute if score @s mih_accel_seq matches 60.. run scoreboard players add @s mih_accel_stage 1
execute if score @s mih_accel_seq matches 60.. run scoreboard players set @s mih_accel_seq 1

execute if score @s mih_accel_seq matches 1.. if score @s mih_accel_stage matches 1..30 run function akasword:calc_tick_time
execute if score @s mih_accel_stage matches 31.. run function akasword:universe_reset_final

# Display Override
execute if score @s mih_ult_active matches 1.. run title @s actionbar ["",{"text":">> AWAITING COUNTER <<","color":"red","bold":true}]
