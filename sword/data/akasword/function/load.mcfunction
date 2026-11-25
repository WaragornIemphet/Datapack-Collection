tellraw @a {text:"<Hoshimi Miyabi> Eradicate all Evil!",color:"aqua",bold:true}
playsound block.beacon.power_select voice @a ^ ^ ^ 100 0.5 1

scoreboard objectives add diamondcooldown dummy
scoreboard objectives add diamondstance dummy
scoreboard players set @a diamondcooldown 0
scoreboard players set @a diamondstance 0
scoreboard objectives add inbane_combohits dummy

scoreboard objectives add inbane_timer dummy

scoreboard objectives add lightbane_combohits dummy

scoreboard objectives add lightbane_timer dummy

scoreboard objectives add used_healstaff minecraft.used:minecraft.carrot_on_a_stick

scoreboard objectives add healstaff_cd dummy

scoreboard objectives add total_xp dummy

scoreboard objectives add ult_timer dummy
scoreboard objectives add ult_charge dummy "Ult Charge"

scoreboard objectives add musket_stage dummy
scoreboard objectives add musket_timer dummy
scoreboard objectives add use_musket minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add bullet_life dummy
scoreboard objectives add bullet_age dummy

scoreboard objectives add pistol_stage dummy
scoreboard objectives add pistol_timer dummy
scoreboard objectives add use_pistol minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add fbullet_life dummy
scoreboard objectives add fbullet_age dummy

scoreboard objectives add move_check minecraft.custom:walk_one_cm
scoreboard objectives add crouch_check minecraft.custom:crouch_one_cm
scoreboard objectives add sprint_check minecraft.custom:sprint_one_cm

team add noCollision
team modify noCollision collisionRule never

scoreboard objectives add 20 dummy
scoreboard objectives add 2 dummy
scoreboard players set #const 20 20
scoreboard players set #const 2 2
scoreboard objectives add cd_sec dummy
scoreboard objectives add 5 dummy
scoreboard objectives add 255 dummy

scoreboard objectives add mih trigger
scoreboard objectives add wong trigger

scoreboard objectives add reset_grace dummy
scoreboard objectives add move_timer dummy
scoreboard objectives add speed_stage dummy
scoreboard objectives add skill_active dummy
scoreboard objectives add skill_cd dummy

scoreboard objectives add mih_ult_active dummy
scoreboard objectives add mih_accel_seq dummy
scoreboard objectives add mih_accel_stage dummy
scoreboard objectives add mih_damage minecraft.custom:minecraft.damage_taken
scoreboard objectives add mih_damage1 minecraft.custom:minecraft.damage_resisted
scoreboard objectives add mih_damage2 minecraft.custom:minecraft.damage_absorbed
scoreboard objectives add mih_math dummy
scoreboard objectives add mih_ult_cd dummy

scoreboard objectives add used_mih minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add knife_ammo dummy
scoreboard objectives add knife_cd dummy
scoreboard objectives add knife_reload dummy


scoreboard objectives add move_timer dummy
scoreboard objectives add speed_stage dummy
scoreboard objectives add reset_grace dummy

scoreboard objectives add move_check minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add sprint_check minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add crouch_check minecraft.custom:minecraft.crouch_one_cm
scoreboard objectives add jump_check minecraft.custom:minecraft.jump
scoreboard objectives add used_mih minecraft.used:minecraft.carrot_on_a_stick

scoreboard objectives add skill_active dummy
scoreboard objectives add skill_cd dummy
scoreboard objectives add mih_ult_active dummy
scoreboard objectives add mih_ult_cd dummy
scoreboard objectives add mih_accel_seq dummy
scoreboard objectives add mih_accel_stage dummy
scoreboard objectives add mih_damage minecraft.custom:minecraft.damage_taken

scoreboard objectives add knife_ammo dummy
scoreboard objectives add knife_cd dummy
scoreboard objectives add knife_reload dummy
scoreboard objectives add knife_life dummy

scoreboard objectives add pos_x dummy
scoreboard objectives add pos_y dummy
scoreboard objectives add pos_z dummy
scoreboard objectives add p_x dummy
scoreboard objectives add p_y dummy
scoreboard objectives add p_z dummy

scoreboard objectives add disp_sec dummy
scoreboard objectives add disp_dec dummy
scoreboard objectives add mih_math dummy
scoreboard objectives add ui_ult dummy
scoreboard objectives add ui_knife dummy

scoreboard players set #const 20 20
scoreboard players set #const 2 2
scoreboard players set #const 5 5
scoreboard players set #max_byte 255 255

scoreboard players set @a move_timer 0
scoreboard players set @a speed_stage 0
scoreboard players set @a knife_ammo 3
scoreboard players set @a ui_ult 0
scoreboard players set @a ui_knife 0


scoreboard objectives add knife_id dummy

scoreboard players add #global knife_id 0

scoreboard objectives add cutscene_timer dummy

scoreboard objectives add akasword_cd dummy
scoreboard objectives add akasword_blockbreak_cd dummy
scoreboard objectives add akasword_counter_timer dummy

scoreboard objectives add akasword_const dummy
scoreboard objectives add akasword_ui_bb dummy
scoreboard objectives add akasword_ui_cnt dummy

scoreboard objectives add akasword_dmg_taken minecraft.custom:minecraft.damage_taken
scoreboard objectives add akasword_dmg_resisted minecraft.custom:minecraft.damage_resisted
scoreboard objectives add akasword_dmg_absorbed minecraft.custom:minecraft.damage_absorbed


scoreboard players set #const20 akasword_const 20


scoreboard players set @a akasword_cd 0
scoreboard players set @a akasword_blockbreak_cd 0
scoreboard players set @a akasword_counter_timer 0
scoreboard players set @a akasword_dmg_taken 0
scoreboard players set @a akasword_dmg_resisted 0
scoreboard players set @a akasword_dmg_absorbed 0

scoreboard objectives add vanad_combohits dummy
scoreboard objectives add vanadium_dash_cd dummy
scoreboard players set @a vanadium_dash_cd 0
scoreboard objectives add vanadium_ui_dash dummy
scoreboard objectives add vanadium_resist_cd dummy
scoreboard objectives add vanadium_ui_res dummy
scoreboard players set @a vanadium_resist_cd 0


scoreboard objectives add akasword_s1 dummy
scoreboard objectives add akasword_s2 dummy
scoreboard objectives add akasword_s3 dummy

scoreboard objectives add akasword_rng dummy
scoreboard objectives add akasword_slot_cd dummy
scoreboard objectives add akasword_roll_timer dummy

scoreboard players set @a akasword_slot_cd 0
scoreboard players set @a akasword_s1 0
scoreboard players set @a akasword_s2 0
scoreboard players set @a akasword_s3 0

scoreboard objectives add akasword_global dummy
scoreboard objectives add akasword_ui_slot dummy

execute unless score #lucky_flag akasword_global matches 0..1 run scoreboard players set #lucky_flag akasword_global 0


scoreboard objectives add akasword_jackpot_cd dummy
scoreboard objectives add akasword_click_jackpot minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add akasword_ball_life dummy

scoreboard objectives add jackpot_ui_cd dummy

scoreboard objectives add akasword_cnt_cd dummy

scoreboard objectives add akasword_cnt_active dummy

scoreboard objectives add akasword_take_dmg minecraft.custom:minecraft.damage_taken
scoreboard objectives add akasword_res_dmg minecraft.custom:minecraft.damage_resisted
scoreboard objectives add akasword_abs_dmg minecraft.custom:minecraft.damage_absorbed

scoreboard objectives add door_ui_cd dummy

scoreboard objectives add akasword_door_cd dummy
scoreboard objectives add door_age dummy

scoreboard objectives add jackpot_skill_uses dummy
scoreboard objectives add akasword_slot_cd dummy
scoreboard objectives add akasword_rng dummy
scoreboard objectives add jackpot_roll_timer dummy

scoreboard objectives add jackpot_state_time dummy

scoreboard objectives add aka_d1 dummy
scoreboard objectives add aka_d2 dummy
scoreboard objectives add aka_d3 dummy

scoreboard objectives add luckyvolleytrigger minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add luckyvolley_cd dummy

scoreboard objectives add luckyrush_cd dummy
scoreboard objectives add energysurge_cd dummy
scoreboard objectives add overwhelm_cd dummy

scoreboard players set @a luckyrush_cd 0
scoreboard players set @a luckyvolley_cd 0
scoreboard players set @a energysurge_cd 0

scoreboard objectives add 777 trigger

scoreboard objectives add jp_time dummy
scoreboard players set #five jp_time 5

scoreboard objectives add drag_time dummy
scoreboard objectives add vortex_time dummy


scoreboard players set @a[tag=luckybastard] luckyvolley_cd 0
scoreboard players set @a[tag=luckybastard] luckyrush_cd 0
scoreboard players set @a[tag=luckybastard] overwhelm_cd 0
scoreboard players set @a vortex_time 0

scoreboard objectives add jackpotsurge_cd dummy
scoreboard objectives add jackpotsurge dummy
scoreboard objectives add jackpotsurge_follow dummy
scoreboard objectives add jackpotsurge_timer dummy

scoreboard objectives add ui_surge dummy
scoreboard objectives add ui_rush dummy
scoreboard objectives add ui_volley dummy
scoreboard objectives add ui_over dummy

scoreboard objectives add chainsaw_timer dummy
scoreboard objectives add chainsaw_ui dummy
scoreboard objectives add chain_cooldown dummy
scoreboard objectives add chain_id dummy
scoreboard objectives add chain_link_id dummy

scoreboard objectives add chain_const dummy
scoreboard players set #20 chain_const 20
scoreboard players set #5 chain_const 5

execute unless score #global chain_id matches 1.. run scoreboard players set #global chain_id 1

scoreboard players set @a chainsaw_timer 0
scoreboard players set @a chain_cooldown 0



scoreboard objectives add lb_mode dummy
scoreboard objectives add lb_q_cd dummy
scoreboard objectives add lb_ui_pause dummy
scoreboard objectives add lb_math dummy

scoreboard objectives add lb_tc_cd dummy
scoreboard objectives add lb_rop_cd dummy
scoreboard objectives add lb_ft_cd dummy
scoreboard objectives add lb_atone_cd dummy
scoreboard objectives add lb_ss_cd dummy
scoreboard objectives add lb_hd_cd dummy

scoreboard objectives add lb_ss_active dummy
scoreboard objectives add lb_tc_timer dummy

scoreboard objectives add roptimer dummy
scoreboard objectives add roplife dummy

scoreboard objectives add atonestate dummy
scoreboard objectives add atonetimer dummy
scoreboard objectives add atonemarkcount dummy
scoreboard objectives add atonelife dummy


scoreboard objectives add RNG_Roll dummy


scoreboard objectives add SwordCombo dummy
scoreboard objectives add SwordTimer dummy

scoreboard objectives add BleedStacks dummy

scoreboard objectives add Blocks minecraft.custom:minecraft.damage_blocked_by_shield


scoreboard objectives add PlayerHealth health

scoreboard objectives add TookDamage custom:damage_taken

scoreboard objectives add NethCooldown dummy

scoreboard objectives add DmgTaken minecraft.custom:minecraft.damage_taken

scoreboard objectives add dummy_hp dummy
scoreboard objectives add current_hp dummy
scoreboard objectives add dmg_taken dummy
scoreboard objectives add dummy_dps dummy
scoreboard objectives add dummy_timer dummy

scoreboard objectives add tabletclick minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add tabletmode dummy
scoreboard objectives add sentrylife dummy
scoreboard objectives add sentry_math dummy
scoreboard objectives add tabletswitch_cd dummy
scoreboard objectives add spacepull_cd dummy
scoreboard objectives add spaceswap_cd dummy
scoreboard objectives add sentryfire_cd dummy
scoreboard objectives add sentryplace_cd dummy

scoreboard objectives add pullui dummy
scoreboard objectives add swapui dummy
scoreboard objectives add fireui dummy
scoreboard objectives add placeui dummy

scoreboard objectives add trapconfig_cd dummy
scoreboard objectives add trapplace_cd dummy
scoreboard objectives add t_configui dummy
scoreboard objectives add t_placeui dummy
scoreboard objectives add trap_timer dummy
scoreboard objectives add active_sentries dummy
scoreboard objectives add active_traps dummy

scoreboard objectives add gord trigger


data merge storage akasword:slots {Palette:[ \
    {"text":"0"}, \
    {"text":"1","color":"gold","bold":false}, \
    {"text":"2","color":"dark_red","bold":false}, \
    {"text":"3","color":"dark_aqua","bold":false}, \
    {"text":"4","color":"light_purple","bold":false},\
    {"text":"5","color":"blue","bold":false}, \
    {"text":"6","color":"yellow","bold":false}, \
    {"text":"7","color":"green","bold":true} \
]}
