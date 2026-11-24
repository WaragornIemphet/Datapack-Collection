execute as @a[tag=speed_owner] at @s run effect clear @s slowness
execute as @a[tag=speed_owner] at @s run effect clear @s slowness


# ======================================================
#  A. TRIGGER DETECTION
# ======================================================

# 1. ULTIMATE (The "F" Key / Offhand)
execute as @a[tag=speed_owner,scores={mih_ult_cd=0,mih_ult_active=0,mih_accel_seq=0}] if items entity @s weapon.offhand *[custom_data~{mih:1}] run function akasword:mih_trigger

# 2. KNIFE THROW (Right Click Detection)
execute as @a[tag=speed_owner,scores={used_mih=1..}] if items entity @s weapon.mainhand *[minecraft:custom_data~{mih:1}] run function akasword:knifelogic

scoreboard players set @a[scores={used_mih=1..}] used_mih 0


# ======================================================
#  B. LOGIC RUNNERS
# ======================================================
execute as @a[tag=mih_attacker] run function akasword:cutscene_run

# 3. ULTIMATE MECHANICS
# 3. ULTIMATE LOGIC
# Run if Timer is active OR Tag is present (Safety check)
execute as @a[tag=speed_owner] if score @s mih_ult_active matches 1.. run function akasword:mihultlogic
execute as @a[tag=speed_owner,tag=mih_counter_stance] run function akasword:mihultlogic

execute as @a[tag=speed_owner] if score @s mih_accel_seq matches 1.. run function akasword:mihultlogic

# 4. COOLDOWN TICKERS
execute as @a[tag=speed_owner,scores={mih_ult_cd=1..}] run scoreboard players remove @s mih_ult_cd 1
execute as @a[tag=speed_owner,scores={skill_cd=1..}] run scoreboard players remove @s skill_cd 1


# ======================================================
#  C. PASSIVE MOVEMENT DETECTION
# ======================================================
execute as @a[tag=speed_owner] if score @s move_check matches 1.. run tag @s add horizontal_move
execute as @a[tag=speed_owner] if score @s sprint_check matches 1.. run tag @s add horizontal_move
execute as @a[tag=speed_owner] if score @s crouch_check matches 1.. run tag @s add horizontal_move
execute as @a[tag=speed_owner] at @s if block ~ ~-0.1 ~ air run tag @s add in_air

# --- BUFFER LOGIC (Prevents accidental resets) ---
execute as @a[tag=speed_owner,tag=horizontal_move] run scoreboard players set @s reset_grace 6
execute as @a[tag=speed_owner,tag=in_air] run scoreboard players set @s reset_grace 6
execute as @a[tag=speed_owner,tag=!horizontal_move,tag=!in_air] run scoreboard players remove @s reset_grace 1

# Reset if buffer hits 0
execute as @a[tag=speed_owner,scores={reset_grace=..0}] run scoreboard players set @s move_timer 0
execute as @a[tag=speed_owner,scores={reset_grace=..0}] run scoreboard players set @s speed_stage 0
scoreboard players set @a[tag=speed_owner,scores={reset_grace=..0}] reset_grace 0


# ======================================================
#  D. SHIFT SKILL (Time Warp)
# ======================================================

# 1. ACTIVATION (Shift + Mainhand Item + Cooldown 0)
execute as @a[tag=speed_owner,scores={skill_cd=0}] if items entity @s weapon.mainhand *[custom_data~{mih:1}] if predicate akasword:is_sneaking run scoreboard players set @s skill_active 600
execute as @a[tag=speed_owner,scores={skill_cd=0}] if items entity @s weapon.mainhand *[custom_data~{mih:1}] if predicate akasword:is_sneaking run scoreboard players set @s skill_cd 4600

# 2. ACTIVE LOOP (Duration: 30s)
execute as @a[tag=speed_owner,scores={skill_active=1..}] run effect give @s speed 1 200 true
execute as @a[tag=speed_owner,scores={skill_active=1..}] run effect give @s saturation 1 200 true
execute as @a[tag=speed_owner,scores={skill_active=1..}] run time add 20s
execute as @a[tag=speed_owner,scores={skill_active=1..}] run scoreboard players remove @s skill_active 1
scoreboard players enable @a[tag=speed_owner] mih

# 3. STARTUP SOUNDS (First tick of activation)
execute as @a[tag=speed_owner,scores={skill_active=599}] at @s run playsound music_disc.timeaccel voice @a ~ ~ ~ 100 1 1
execute as @a[tag=speed_owner,scores={skill_active=599}] at @s run playsound music_disc.mihskill voice @a ~ ~ ~ 300 1 1
execute as @a[tag=speed_owner,scores={skill_active=599}] at @s run stopsound @s voice music_disc.bank3


# ======================================================
#  E. PASSIVE PROGRESSION (Speed 1-20)
# ======================================================

# Increase Timer (Only if moving AND Skill is NOT active)
execute as @a[tag=speed_owner,tag=horizontal_move,tag=!in_air,scores={skill_active=0}] run scoreboard players add @s move_timer 1

# Stage Up (Every 200 ticks)
execute as @a[tag=speed_owner,scores={move_timer=200..}] run scoreboard players add @s speed_stage 1
execute as @a[tag=speed_owner,scores={move_timer=200..}] run scoreboard players set @s move_timer 0

# Cap Stage at 20
scoreboard players set @a[tag=speed_owner,scores={speed_stage=21..}] speed_stage 20

# ======================================================
#  F. PASSIVE EFFECTS & AURAS
# ======================================================

# 1. SPEED EFFECTS
# Only apply if Skill is NOT active
effect give @a[tag=speed_owner,scores={speed_stage=1,skill_active=0}] speed 1 1 true
effect give @a[tag=speed_owner,scores={speed_stage=2,skill_active=0}] speed 1 3 true
effect give @a[tag=speed_owner,scores={speed_stage=3,skill_active=0}] speed 1 5 true
effect give @a[tag=speed_owner,scores={speed_stage=4,skill_active=0}] speed 1 7 true
effect give @a[tag=speed_owner,scores={speed_stage=5,skill_active=0}] speed 1 9 true
effect give @a[tag=speed_owner,scores={speed_stage=6,skill_active=0}] speed 1 11 true
effect give @a[tag=speed_owner,scores={speed_stage=7,skill_active=0}] speed 1 13 true
effect give @a[tag=speed_owner,scores={speed_stage=8,skill_active=0}] speed 1 15 true
effect give @a[tag=speed_owner,scores={speed_stage=9,skill_active=0}] speed 1 17 true
effect give @a[tag=speed_owner,scores={speed_stage=10,skill_active=0}] speed 1 19 true
effect give @a[tag=speed_owner,scores={speed_stage=11,skill_active=0}] speed 1 21 true
effect give @a[tag=speed_owner,scores={speed_stage=12,skill_active=0}] speed 1 23 true
effect give @a[tag=speed_owner,scores={speed_stage=13,skill_active=0}] speed 1 25 true
effect give @a[tag=speed_owner,scores={speed_stage=14,skill_active=0}] speed 1 27 true
effect give @a[tag=speed_owner,scores={speed_stage=15,skill_active=0}] speed 1 29 true
effect give @a[tag=speed_owner,scores={speed_stage=16,skill_active=0}] speed 1 31 true
effect give @a[tag=speed_owner,scores={speed_stage=17,skill_active=0}] speed 1 33 true
effect give @a[tag=speed_owner,scores={speed_stage=18,skill_active=0}] speed 1 35 true
effect give @a[tag=speed_owner,scores={speed_stage=19,skill_active=0}] speed 1 39 true
effect give @a[tag=speed_owner,scores={speed_stage=20,skill_active=0}] speed 1 50 true

# 2. MAX STAGE BUFFS
effect give @a[tag=speed_owner,scores={speed_stage=20,skill_active=0}] regeneration 1 3 true
effect give @a[tag=speed_owner,scores={speed_stage=20,skill_active=0}] saturation 1 3 true
effect give @a[tag=speed_owner,scores={speed_stage=20,skill_active=0}] resistance 1 1 true

# 3. PASSIVE TIME ACCELERATION
execute as @a[tag=speed_owner,scores={speed_stage=5}] run time add 5t
execute as @a[tag=speed_owner,scores={speed_stage=6}] run time add 11t
execute as @a[tag=speed_owner,scores={speed_stage=7}] run time add 13t
execute as @a[tag=speed_owner,scores={speed_stage=8}] run time add 15t
execute as @a[tag=speed_owner,scores={speed_stage=9}] run time add 17t
execute as @a[tag=speed_owner,scores={speed_stage=10}] run time add 19t
execute as @a[tag=speed_owner,scores={speed_stage=11}] run time add 1s
execute as @a[tag=speed_owner,scores={speed_stage=12}] run time add 2s
execute as @a[tag=speed_owner,scores={speed_stage=13}] run time add 3s
execute as @a[tag=speed_owner,scores={speed_stage=14}] run time add 4s
execute as @a[tag=speed_owner,scores={speed_stage=15}] run time add 5s
execute as @a[tag=speed_owner,scores={speed_stage=16}] run time add 6s
execute as @a[tag=speed_owner,scores={speed_stage=17}] run time add 7s
execute as @a[tag=speed_owner,scores={speed_stage=18}] run time add 8s
execute as @a[tag=speed_owner,scores={speed_stage=19}] run time add 9s
execute as @a[tag=speed_owner,scores={speed_stage=20}] run time add 10s

# 4. PARTICLES
execute as @a[tag=speed_owner,scores={speed_stage=5..9}] at @s run particle large_smoke ^ ^0.5 ^ 0.1 0.25 0.1 0 2 force
execute as @a[tag=speed_owner,scores={speed_stage=10..19}] at @s run particle end_rod ^ ^1 ^ 0.2 0.5 0.2 0 5 force
execute as @a[tag=speed_owner,scores={speed_stage=20..}] at @s run particle end_rod ^ ^1 ^ 0.2 0.5 0.2 0 20 force

# 5. DAMAGE AURA
# (Uses Mainhand item check implicitly via custom_data~{mih:1})
execute at @a[tag=speed_owner,scores={speed_stage=1}] as @e[distance=..2,type=!item,type=!armor_stand,type=!mannequin,tag=!speed_owner] if items entity @a[tag=speed_owner,limit=1] weapon.mainhand *[custom_data~{mih:1}] run damage @s 6 player_attack by @a[tag=speed_owner,limit=1]
execute at @a[tag=speed_owner,scores={speed_stage=2}] as @e[distance=..2,type=!item,type=!armor_stand,type=!mannequin,tag=!speed_owner] if items entity @a[tag=speed_owner,limit=1] weapon.mainhand *[custom_data~{mih:1}] run damage @s 7 player_attack by @a[tag=speed_owner,limit=1]
execute at @a[tag=speed_owner,scores={speed_stage=3}] as @e[distance=..2,type=!item,type=!armor_stand,type=!mannequin,tag=!speed_owner] if items entity @a[tag=speed_owner,limit=1] weapon.mainhand *[custom_data~{mih:1}] run damage @s 8 player_attack by @a[tag=speed_owner,limit=1]
execute at @a[tag=speed_owner,scores={speed_stage=4}] as @e[distance=..2,type=!item,type=!armor_stand,type=!mannequin,tag=!speed_owner] if items entity @a[tag=speed_owner,limit=1] weapon.mainhand *[custom_data~{mih:1}] run damage @s 9 player_attack by @a[tag=speed_owner,limit=1]
execute at @a[tag=speed_owner,scores={speed_stage=5}] as @e[distance=..2,type=!item,type=!armor_stand,type=!mannequin,tag=!speed_owner] if items entity @a[tag=speed_owner,limit=1] weapon.mainhand *[custom_data~{mih:1}] run damage @s 10 player_attack by @a[tag=speed_owner,limit=1]
execute at @a[tag=speed_owner,scores={speed_stage=6}] as @e[distance=..2,type=!item,type=!armor_stand,type=!mannequin,tag=!speed_owner] if items entity @a[tag=speed_owner,limit=1] weapon.mainhand *[custom_data~{mih:1}] run damage @s 12 player_attack by @a[tag=speed_owner,limit=1]
execute at @a[tag=speed_owner,scores={speed_stage=7}] as @e[distance=..2,type=!item,type=!armor_stand,type=!mannequin,tag=!speed_owner] if items entity @a[tag=speed_owner,limit=1] weapon.mainhand *[custom_data~{mih:1}] run damage @s 16 player_attack by @a[tag=speed_owner,limit=1]
execute at @a[tag=speed_owner,scores={speed_stage=8}] as @e[distance=..2,type=!item,type=!armor_stand,type=!mannequin,tag=!speed_owner] if items entity @a[tag=speed_owner,limit=1] weapon.mainhand *[custom_data~{mih:1}] run damage @s 18 player_attack by @a[tag=speed_owner,limit=1]
execute at @a[tag=speed_owner,scores={speed_stage=9}] as @e[distance=..2,type=!item,type=!armor_stand,type=!mannequin,tag=!speed_owner] if items entity @a[tag=speed_owner,limit=1] weapon.mainhand *[custom_data~{mih:1}] run damage @s 20 player_attack by @a[tag=speed_owner,limit=1]
execute at @a[tag=speed_owner,scores={speed_stage=10}] as @e[distance=..2,type=!item,type=!armor_stand,type=!mannequin,tag=!speed_owner] if items entity @a[tag=speed_owner,limit=1] weapon.mainhand *[custom_data~{mih:1}] run damage @s 22 player_attack by @a[tag=speed_owner,limit=1]
execute at @a[tag=speed_owner,scores={speed_stage=11}] as @e[distance=..2,type=!item,type=!armor_stand,type=!mannequin,tag=!speed_owner] if items entity @a[tag=speed_owner,limit=1] weapon.mainhand *[custom_data~{mih:1}] run damage @s 24 player_attack by @a[tag=speed_owner,limit=1]
execute at @a[tag=speed_owner,scores={speed_stage=12}] as @e[distance=..2,type=!item,type=!armor_stand,type=!mannequin,tag=!speed_owner] if items entity @a[tag=speed_owner,limit=1] weapon.mainhand *[custom_data~{mih:1}] run damage @s 26 player_attack by @a[tag=speed_owner,limit=1]
execute at @a[tag=speed_owner,scores={speed_stage=13}] as @e[distance=..2,type=!item,type=!armor_stand,type=!mannequin,tag=!speed_owner] if items entity @a[tag=speed_owner,limit=1] weapon.mainhand *[custom_data~{mih:1}] run damage @s 28 player_attack by @a[tag=speed_owner,limit=1]
execute at @a[tag=speed_owner,scores={speed_stage=14}] as @e[distance=..2,type=!item,type=!armor_stand,type=!mannequin,tag=!speed_owner] if items entity @a[tag=speed_owner,limit=1] weapon.mainhand *[custom_data~{mih:1}] run damage @s 30 player_attack by @a[tag=speed_owner,limit=1]
execute at @a[tag=speed_owner,scores={speed_stage=15}] as @e[distance=..2,type=!item,type=!armor_stand,type=!mannequin,tag=!speed_owner] if items entity @a[tag=speed_owner,limit=1] weapon.mainhand *[custom_data~{mih:1}] run damage @s 35 player_attack by @a[tag=speed_owner,limit=1]
execute at @a[tag=speed_owner,scores={speed_stage=16}] as @e[distance=..2,type=!item,type=!armor_stand,type=!mannequin,tag=!speed_owner] if items entity @a[tag=speed_owner,limit=1] weapon.mainhand *[custom_data~{mih:1}] run damage @s 40 player_attack by @a[tag=speed_owner,limit=1]
execute at @a[tag=speed_owner,scores={speed_stage=17}] as @e[distance=..2,type=!item,type=!armor_stand,type=!mannequin,tag=!speed_owner] if items entity @a[tag=speed_owner,limit=1] weapon.mainhand *[custom_data~{mih:1}] run damage @s 50 player_attack by @a[tag=speed_owner,limit=1]
execute at @a[tag=speed_owner,scores={speed_stage=18}] as @e[distance=..2,type=!item,type=!armor_stand,type=!mannequin,tag=!speed_owner] if items entity @a[tag=speed_owner,limit=1] weapon.mainhand *[custom_data~{mih:1}] run damage @s 60 player_attack by @a[tag=speed_owner,limit=1]
execute at @a[tag=speed_owner,scores={speed_stage=19}] as @e[distance=..2,type=!item,type=!armor_stand,type=!mannequin,tag=!speed_owner] if items entity @a[tag=speed_owner,limit=1] weapon.mainhand *[custom_data~{mih:1}] run damage @s 70 player_attack by @a[tag=speed_owner,limit=1]
execute at @a[tag=speed_owner,scores={speed_stage=20}] as @e[distance=..2,type=!item,type=!armor_stand,type=!mannequin,tag=!speed_owner] run damage @s 80 player_attack by @a[tag=speed_owner,limit=1]

# 6. AURA COSMETICS
execute at @a[tag=speed_owner,scores={speed_stage=1..20}] as @e[distance=..2,type=!item,type=!armor_stand,type=!mannequin,tag=!speed_owner] if items entity @a[tag=speed_owner,limit=1] weapon.mainhand *[custom_data~{mih:1}] run particle block{block_state:{Name:nether_wart_block}} ~ ~1 ~ 0.2 0.2 0.2 1 50 force
execute at @a[tag=speed_owner,scores={speed_stage=1..20}] as @e[distance=..2,type=!item,type=!armor_stand,type=!mannequin,tag=!speed_owner] if items entity @a[tag=speed_owner,limit=1] weapon.mainhand *[custom_data~{mih:1}] run playsound entity.zombie_villager.cure voice @a[distance=..10] ~ ~ ~ 100 1.5 1 

# 7. ACTIVE SKILL DAMAGE (Shift Skill - 100 DMG)
execute at @a[tag=speed_owner,scores={skill_active=1..}] as @e[distance=..3.5,type=!item,type=!armor_stand,type=!mannequin,tag=!speed_owner] run damage @s 100 player_attack by @a[tag=speed_owner,limit=1]
execute at @a[tag=speed_owner,scores={skill_active=1..}] as @e[distance=..3.5,type=!item,type=!armor_stand,type=!mannequin,tag=!speed_owner] run particle block{block_state:{Name:nether_wart_block}} ~ ~1 ~ 0.2 0.2 0.2 1 50 force
execute at @a[tag=speed_owner,scores={skill_active=1..}] as @e[distance=..3.5,type=!item,type=!armor_stand,type=!mannequin,tag=!speed_owner] run playsound entity.zombie_villager.cure voice @a[distance=..10] ~ ~ ~ 100 1.5 1 
execute as @a[tag=speed_owner,scores={skill_active=1..}] at @s run particle end_rod ^ ^1 ^ 0.2 0.5 0.2 0 50 force
execute as @a[tag=speed_owner,scores={skill_active=1..}] at @s run particle soul_fire_flame ^ ^1 ^ 0.1 0.4 0.1 0 50 force

# ======================================================
#  G. CLEANUP & DISPLAY
# ======================================================
scoreboard players set @a move_check 0
scoreboard players set @a sprint_check 0
scoreboard players set @a crouch_check 0
tag @a remove horizontal_move
tag @a remove in_air

# Display Bar (Only if no Active Ult)
execute as @a[tag=speed_owner] at @s run function akasword:mihtimer

# Item Security
execute as @a[tag=!speed_owner] at @s if items entity @s container.* *[custom_data~{mih:1}] run clear @s[tag=!speed_owner] *[custom_data~{mih:1}]

# ======================================================
#  H. ITEM RETRIEVAL TRIGGER
# ======================================================
# Usage: /trigger get_mih
execute as @a[scores={mih=1..}] run give @s carrot_on_a_stick[custom_name={"text":"Made in Heaven","italic":false,"color":"yellow"},lore=[[{"text":"Made in Heaven is an extremely powerful close-range ","italic":false,"color":"gold"}],[{"text":"time-controlling clock. Although its physical abilities may ","italic":false,"color":"gold"}],[{"text":"not be remarkable, its control over time grants it an","italic":false,"color":"gold"}],[{"text":"overwhelming speed advantage and even ","italic":false,"color":"gold"}],[{"text":"counters abilities that function as close power types.","italic":false,"color":"gold"}],"",[{"text":"Press [ Sneak ] to use Basic skill","italic":false,"color":"gray"}],[{"text":"Press [ Right Click ] to Throw Knives","italic":false,"color":"gray"}],[{"text":"Press [ F ] to use Ultimate","italic":false,"color":"gray"}]],attribute_modifiers=[{type:attack_speed,amount:1000,slot:mainhand,operation:add_value,id:"1778502471896"},{type:safe_fall_distance,amount:200,slot:mainhand,operation:add_value,id:"1778502471897"},{type:follow_range,amount:1,slot:mainhand,operation:add_value,id:"1778502471898"},{type:step_height,amount:2,slot:mainhand,operation:add_value,id:"1778502471899"},{type:water_movement_efficiency,amount:1,slot:mainhand,operation:add_value,id:"1778502471900"},{type:movement_efficiency,amount:1,slot:mainhand,operation:add_value,id:"1778502471901"}],unbreakable={},item_model="syn:mih",custom_data={mih:1}] 1
execute as @a[scores={mih=1..}] run playsound music_disc.bank3 voice @a[distance=..64] ^ ^ ^ 150 1 1
scoreboard players set @a[scores={mih=1..}] mih 0


execute as @e[tag=mih_flying_knife] at @s run function akasword:knifeflight

# 2. KNIFE RELOAD & COOLDOWN LOGIC (Inlined for safety)
# A. Check Reload Start (Ammo 0 -> Reload 300)
execute as @a[tag=speed_owner,scores={knife_ammo=0,knife_reload=0}] run scoreboard players set @s knife_reload 300
execute as @a[tag=speed_owner,scores={knife_ammo=0,knife_reload=300}] run playsound minecraft:item.armor.equip_chain player @s ~ ~ ~ 1 2

# B. Reload Ticker
execute as @a[tag=speed_owner,scores={knife_reload=1..}] run scoreboard players remove @s knife_reload 1

# C. Reload Complete
execute as @a[tag=speed_owner,scores={knife_reload=1}] run scoreboard players set @s knife_ammo 6
execute as @a[tag=speed_owner,scores={knife_reload=1}] run playsound minecraft:block.anvil.use player @s ~ ~ ~ 1 2

# D. Shot Cooldown Ticker
execute as @a[tag=speed_owner,scores={knife_cd=1..}] run scoreboard players remove @s knife_cd 1

scoreboard players enable @a[tag=speed_owner] mih

