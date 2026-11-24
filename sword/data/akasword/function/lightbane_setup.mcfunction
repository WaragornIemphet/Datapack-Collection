# ==========================================
#  1. ENSURE ALL OBJECTIVES EXIST ON SERVER
# ==========================================
scoreboard objectives add lb_mode dummy
scoreboard objectives add lb_q_cd dummy
scoreboard objectives add lb_ui_pause dummy
scoreboard objectives add lb_math dummy
scoreboard objectives add ult_charge dummy

scoreboard objectives add lb_tc_cd dummy
scoreboard objectives add lb_rop_cd dummy
scoreboard objectives add lb_ft_cd dummy
scoreboard objectives add lb_atone_cd dummy
scoreboard objectives add lb_ss_cd dummy
scoreboard objectives add lb_hd_cd dummy

scoreboard objectives add lb_ss_active dummy
scoreboard objectives add lb_tc_timer dummy

scoreboard objectives add lightbane_combohits dummy
scoreboard objectives add lightbane_timer dummy
scoreboard objectives add ult_timer dummy

# ==========================================
#  2. INITIALIZE PLAYER SCOREBOARDS TO 1 AS @s
# ==========================================
scoreboard players set @s lb_mode 1
scoreboard players set @s lb_q_cd 1
scoreboard players set @s lb_ui_pause 1
scoreboard players set @s lb_math 1
scoreboard players set @s ult_charge 1

scoreboard players set @s lb_tc_cd 1
scoreboard players set @s lb_rop_cd 1
scoreboard players set @s lb_ft_cd 1
scoreboard players set @s lb_atone_cd 1
scoreboard players set @s lb_ss_cd 1
scoreboard players set @s lb_hd_cd 1

scoreboard players set @s lb_ss_active 1
scoreboard players set @s lb_tc_timer 1

# Keep mob-damage objectives at 0 on @s so ult_damage_loop does not hit you for 80 magic damage
scoreboard players set @s lightbane_combohits 0
scoreboard players set @s lightbane_timer 0
scoreboard players set @s ult_timer 0

scoreboard players set @s atonestate 0
scoreboard players set @s atonetimer 0
scoreboard players set @s atonemarkcount 0

# ==========================================
#  3. OWNER TAG, STUCK STATE CLEANUP, & BOSSBAR
# ==========================================
tag @s add lightbane
tag @s remove lb_sneak_hold
tag @s remove lb_skill_dmg
tag @s remove holding_lightbane
advancement revoke @s only akasword:hit_mob2

tellraw @s ["",{"text":"[ ","color":"dark_gray"},{"text":"Light Bane setup complete for ","color":"yellow"},{"selector":"@s","color":"gold","bold":true},{"text":" ]","color":"dark_gray"}]