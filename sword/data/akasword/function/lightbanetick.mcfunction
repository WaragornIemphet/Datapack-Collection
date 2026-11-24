# 0. Initialize scores for the Light Bane owner & tick down all cooldowns/durations
execute as @a[tag=lightbane] unless score @s lb_mode matches 0.. run scoreboard players set @s lb_mode 0
execute as @a[tag=lightbane] unless score @s ult_charge matches 0.. run scoreboard players set @s ult_charge 0

scoreboard players remove @a[tag=lightbane,scores={lb_q_cd=1..}] lb_q_cd 1
scoreboard players remove @a[tag=lightbane,scores={lb_ui_pause=1..}] lb_ui_pause 1
scoreboard players remove @a[tag=lightbane,scores={lb_tc_cd=1..}] lb_tc_cd 1
scoreboard players remove @a[tag=lightbane,scores={lb_tc_timer=1..}] lb_tc_timer 1
scoreboard players remove @a[tag=lightbane,scores={lb_rop_cd=1..}] lb_rop_cd 1
scoreboard players remove @a[tag=lightbane,scores={lb_ft_cd=1..}] lb_ft_cd 1
scoreboard players remove @a[tag=lightbane,scores={lb_atone_cd=1..}] lb_atone_cd 1
scoreboard players remove @a[tag=lightbane,scores={lb_ss_cd=1..}] lb_ss_cd 1
scoreboard players remove @a[tag=lightbane,scores={lb_hd_cd=1..}] lb_hd_cd 1
scoreboard players remove @a[tag=lightbane,scores={lb_ss_active=1..}] lb_ss_active 1
scoreboard players remove @a[tag=lightbane,scores={roptimer=1..}] roptimer 1

# ==========================================
#  2. INTERCEPT F (F SKILLS) & Q (3-MODE CYCLE)
# ==========================================
execute as @a[tag=lightbane,tag=holding_lightbane] if items entity @s weapon.offhand *[custom_data~{lighttrigger_hit:1}] at @s run function akasword:lightbane_f_intercept
execute as @a[tag=lightbane,tag=holding_lightbane] unless items entity @s weapon.mainhand *[custom_data~{lighttrigger_hit:1}] at @s if items entity @e[type=minecraft:item,distance=..3,limit=1,sort=nearest] contents *[custom_data~{lighttrigger_hit:1}] run function akasword:lightbane_q_intercept

tag @a[tag=holding_lightbane] remove holding_lightbane
execute as @a[tag=lightbane] if items entity @s weapon.mainhand *[custom_data~{lighttrigger_hit:1}] run tag @s add holding_lightbane

execute as @a[tag=lightbane,tag=holding_lightbane] unless items entity @s weapon.mainhand *[custom_data~{lighttrigger_hit:1}] at @s if items entity @e[type=minecraft:item,distance=..6] contents *[custom_data~{lighttrigger_hit:1}] run function akasword:lightbane_q_intercept

# ==========================================
#  3. COMBO DECAY & ACTIVE ULTIMATE LOOPS
# ==========================================
execute as @e[scores={lightbane_combohits=1..}] run scoreboard players add @s lightbane_timer 1
execute as @e[scores={lightbane_timer=12000..}] run scoreboard players set @s lightbane_combohits 0
execute as @e[scores={lightbane_timer=12000..}] run scoreboard players set @s lightbane_timer 0

execute as @e[scores={ult_timer=1..}] at @s run function akasword:ult_damage_loop

execute as @a[tag=lightbane,scores={lb_tc_timer=1..}] at @s run function akasword:trinity_cleave_tick
execute as @a[tag=lightbane,scores={roptimer=1..}] at @s run function akasword:roptick
execute as @e[type=minecraft:armor_stand,tag=ropfly] at @s run function akasword:ropfly

execute as @a[tag=lightbane,scores={atonestate=1..}] at @s run function akasword:atonetick
execute as @e[type=minecraft:armor_stand,tag=atonefly] at @s run function akasword:atonefly
# ==========================================
#  4. SHIFT SKILL ROUTER & 3-MODE ACTIONBAR UI
# ==========================================
execute as @a[tag=lightbane,tag=holding_lightbane] at @s run function akasword:check_ult
execute as @a[tag=lightbane,tag=holding_lightbane] unless score @s lb_ui_pause matches 1.. run function akasword:lightbane_ui