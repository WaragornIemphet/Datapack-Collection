# 1. Decrement Timer
scoreboard players remove @s akasword_cnt_active 1

# 2. Apply "Guard" Effects
# Resistance 5 = 100% Damage Reduction (Triggers damage_resisted score)
# Slowness 5 = Rooted in place
effect give @s minecraft:resistance 1 255 true
effect give @s minecraft:slowness 1 255 true
effect give @s minecraft:weakness 1 255 true

# 3. Visuals (Golden Bubble)

# Play a "hum" sound occasionally
execute if score @s akasword_cnt_active matches 15 run playsound minecraft:block.beacon.ambient player @s ~ ~ ~ 1 2

# ==================================================
#  HIT DETECTION (The Fix)
# ==================================================
# We check if ANY of the 3 damage types > 0.
# This covers: Normal hits, Resistance 5 hits (0 dmg), and Absorption hits.

execute if score @s akasword_take_dmg matches 1.. run function akasword:jackpot_counter_retaliate
execute if score @s akasword_res_dmg matches 1.. run function akasword:jackpot_counter_retaliate
execute if score @s akasword_abs_dmg matches 1.. run function akasword:jackpot_counter_retaliate

execute if score @s akasword_cnt_active matches ..1 if items entity @s weapon.offhand *[custom_data~{shut:1}] run item replace entity @s weapon.offhand with air
# Note: We do NOT reset scores here. 
# We reset them in 'tick.mcfunction' to ensure we capture multiple hits in one tick if needed. 
