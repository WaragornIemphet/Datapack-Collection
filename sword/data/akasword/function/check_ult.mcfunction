# 1. Edge-detector so holding Shift triggers once per press
execute unless predicate akasword:is_sneaking run tag @s remove lb_sneak_hold
execute if entity @s[tag=lb_sneak_hold] run return 0
execute unless predicate akasword:is_sneaking run return 0
tag @s add lb_sneak_hold

# ==========================================
#  MODE 0 (SAVIOR) — TRINITY CLEAVE (12s CD / 0 Charges)
# ==========================================
execute if score @s lb_mode matches 0 if score @s lb_tc_cd matches 1.. run playsound minecraft:block.note_block.bass voice @s ~ ~ ~ 1.0 0.6
execute if score @s lb_mode matches 0 unless score @s lb_tc_cd matches 1.. run return run function akasword:trinity_cleave

# ==========================================
#  MODE 1 (PURIFICATION) — FINAL TESTAMENT (30s CD / 20 Charges)
# ==========================================
execute if score @s lb_mode matches 1 if score @s lb_ft_cd matches 1.. run playsound minecraft:block.note_block.bass voice @s ~ ~ ~ 1.0 0.6
execute if score @s lb_mode matches 1 unless score @s lb_ft_cd matches 1.. if score @s ult_charge matches ..19 run playsound minecraft:block.note_block.bass voice @s ~ ~ ~ 1.0 0.6
execute if score @s lb_mode matches 1 unless score @s lb_ft_cd matches 1.. if score @s ult_charge matches 20.. run return run function akasword:final_testament

# ==========================================
#  MODE 2 (ERADICATION) — SACRED SANCTUARY (240s CD / 50 Charges / Blocked if Active)
# ==========================================
execute if score @s lb_mode matches 2 if score @s lb_ss_active matches 1.. run playsound minecraft:block.note_block.bass voice @s ~ ~ ~ 1.0 0.5
execute if score @s lb_mode matches 2 if score @s lb_ss_active matches 1.. run return 0

execute if score @s lb_mode matches 2 if score @s lb_ss_cd matches 1.. run playsound minecraft:block.note_block.bass voice @s ~ ~ ~ 1.0 0.6
execute if score @s lb_mode matches 2 unless score @s lb_ss_cd matches 1.. if score @s ult_charge matches ..49 run playsound minecraft:block.note_block.bass voice @s ~ ~ ~ 1.0 0.6
execute if score @s lb_mode matches 2 unless score @s lb_ss_cd matches 1.. if score @s ult_charge matches 50.. run return run function akasword:sacred_sanctuary