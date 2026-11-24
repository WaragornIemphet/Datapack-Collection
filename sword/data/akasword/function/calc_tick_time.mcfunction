# --- 1. TIME CALCULATION (Stage * 10) ---
# Stage 1 = +10 ticks, Stage 50 = +500 ticks
scoreboard players operation @s mih_math = @s mih_accel_stage
scoreboard players set #const 10 10
scoreboard players operation @s mih_math *= #const 10

# Store Time Add value
execute store result storage akasword:macro time_add int 1 run scoreboard players get @s mih_math


# --- 2. SPEED CALCULATION (Stage * 5) ---
# Reset math variable to stage count
scoreboard players operation @s mih_math = @s mih_accel_stage

# Multiply by 5 (Stage 1 = Speed 5, Stage 50 = Speed 250)
scoreboard players set #const 5 5
scoreboard players operation @s mih_math *= #const 5

# Subtract 1 for Amplifier (Level 5 = Amp 4)
scoreboard players remove @s mih_math 1

# SAFETY CLAMP: Force max to 255 to prevent crash
scoreboard players set #max_byte 255 255
execute if score @s mih_math > #max_byte mih_math run scoreboard players set @s mih_math 255

# Store Speed Amp value
execute store result storage akasword:macro speed_amp int 1 run scoreboard players get @s mih_math


# --- 3. EXECUTE MACRO ---
function akasword:run_time_add with storage akasword:macro
