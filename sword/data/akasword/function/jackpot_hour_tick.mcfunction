
# Start Rolling
execute as @a[scores={jackpot_skill_uses=3..},tag=!akasword_rolling,tag=!luckybastard_jackpot] run function akasword:jackpot_roll_start

execute as @a[scores={jackpot_roll_timer=1..}] run scoreboard players remove @s jackpot_roll_timer 1

# Jackpot State
execute at @e[tag=luckybastard_jackpot] run particle dust_color_transition{from_color:[0.0,1.0,0.33],to_color:[0.0,1.0,0.33],scale:1.5} ^ ^0.5 ^-0.5 0.5 1 0.5 5 10 force
execute as @a[tag=luckybastard_jackpot,scores={jackpot_state_time=1..}] run scoreboard players remove @s jackpot_state_time 1
execute as @a[tag=luckybastard_jackpot,scores={jackpot_state_time=1..}] run effect give @s regeneration 1 255 true
execute as @a[tag=luckybastard_jackpot,scores={jackpot_state_time=1..}] run effect give @s saturation 1 255 true
execute as @a[tag=luckybastard_jackpot,scores={jackpot_state_time=1..}] run effect give @s speed 1 2 true
execute as @a[tag=luckybastard_jackpot,scores={jackpot_state_time=1..}] run effect give @s strength 1 1 true
execute as @a[tag=luckybastard_jackpot,scores={jackpot_state_time=1..}] run effect give @s jump_boost 1 4 true
execute as @a[tag=luckybastard_jackpot,scores={jackpot_state_time=1..}] run effect give @s resistance 1 0 true

execute as @a[tag=luckybastard_jackpot] at @s if score @s jackpot_state_time matches 1 run function akasword:jackpot_roll_state_end

execute as @a[tag=luckybastard] at @s if score @s jackpot_roll_timer matches 1 run function akasword:jackpot_roll_calc


# Right Click (C.O.A.S.)
execute as @a[tag=luckybastard,scores={akasword_click_jackpot=1..}] if items entity @s weapon.mainhand *[minecraft:custom_data~{jackpot:1}] run function akasword:jackpot_skill

scoreboard players set @a akasword_click_jackpot 0

execute as @e[tag=jackpot_ball] at @s run function akasword:jackpot_proj_tick
execute if entity @e[tag=jackpot_hit] as @e[tag=jackpot_hit] at @s run damage @s 20 minecraft:player_attack by @a[tag=luckybastard,limit=1]

# HUD (actionbar)
execute as @a[tag=luckybastard_jackpot] if items entity @s weapon.mainhand *[minecraft:custom_data~{jackpot:2}] run function akasword:jackpot_state_display
execute as @a[tag=luckybastard] if items entity @s weapon.mainhand *[minecraft:custom_data~{jackpot:1}] run function akasword:jackpot_display

execute as @a[tag=luckybastard] at @s unless score @s akasword_cnt_active matches 1.. run clear @s *[custom_data~{shut:1}]


# Counter Cooldown
execute as @a[scores={akasword_cnt_cd=1..}] run scoreboard players remove @s akasword_cnt_cd 1


# Counter (Door Guard)
execute as @a[tag=luckybastard,scores={akasword_cnt_cd=0,akasword_cnt_active=0}] if items entity @s weapon.offhand *[minecraft:custom_data~{jackpot:1}] run function akasword:jackpot_counter_start
execute as @a[scores={akasword_cnt_active=1..}] run function akasword:jackpot_counter_tick

scoreboard players set @a akasword_take_dmg 0
scoreboard players set @a akasword_res_dmg 0
scoreboard players set @a akasword_abs_dmg 0



# Shutter Doors Cooldown
execute as @a[scores={akasword_door_cd=1..}] run scoreboard players remove @s akasword_door_cd 1
execute as @a[scores={akasword_jackpot_cd=1..}] run scoreboard players remove @s akasword_jackpot_cd 1

# Shutter Doors
execute as @a[predicate=akasword:is_sneaking,scores={akasword_door_cd=0}] at @s if items entity @s weapon.mainhand *[minecraft:custom_data~{jackpot:1}] run function akasword:jackpot_door_cast

# Door animation (for fuck sake)
function akasword:jackpot_door_tick
function akasword:jackpot_chargetick
execute as @a[scores={vortex_time=1..160},tag=luckybastard_jackpot] at @s run function akasword:jackpot_overwhelmtick

# Target all players who currently have an active countdown
execute as @a[tag=luckybastard_jackpot,scores={jp_time=-20..}] at @s run function akasword:jackpot_luckyvolleyloop
execute as @a[tag=luckybastard_jackpot,scores={jp_time=0..}] at @s run playsound entity.player.attack.crit voice @a[distance=..60] ~ ~ ~ 100 0.5 1 
execute as @a[tag=luckybastard_jackpot,scores={jp_time=0..}] at @s run playsound entity.player.attack.knockback voice @a[distance=..60] ~ ~ ~ 100 1.25 1 
execute as @a[tag=luckybastard_jackpot,scores={luckyvolleytrigger=1..},tag=!luckyrushdown,tag=!overwhelm] if items entity @s weapon.mainhand *[minecraft:custom_data~{jackpot:2}] run function akasword:jackpot_luckyvolleystart
execute as @a[scores={luckyvolley_cd=1..}] run scoreboard players remove @s luckyvolley_cd 1
scoreboard players set @a luckyvolleytrigger 0


execute as @a[predicate=akasword:is_sneaking,scores={overwhelm_cd=0},tag=!luckyrushdown,tag=!luckyvolley] at @s if items entity @s weapon.mainhand *[minecraft:custom_data~{jackpot:2}] run function akasword:jackpot_overwhelm
execute as @a[scores={overwhelm_cd=1..}] run scoreboard players remove @s overwhelm_cd 1

execute as @a[tag=luckybastard_jackpot,scores={luckyrush_cd=0},tag=!overwhelm,tag=!luckyvolley] if items entity @s weapon.offhand *[minecraft:custom_data~{jackpot:2}] run function akasword:jackpot_charge
execute as @a[scores={luckyrush_cd=1..}] run scoreboard players remove @s luckyrush_cd 1

execute as @a[scores={jackpotsurge_cd=1..}] run scoreboard players remove @s jackpotsurge_cd 1
execute as @a[scores={jackpotsurge_follow=1..}] run scoreboard players remove @s jackpotsurge_follow 1
execute as @a[scores={jackpotsurge_follow=1}] run function akasword:jackpot_surge_follow

execute as @a[tag=!luckybastard] at @s if items entity @s container.* *[custom_data~{jackpot:1}] run clear @s[tag=!luckybastard] *[custom_data~{jackpot:1}]
execute as @a[tag=!luckybastard] at @s if items entity @s container.* *[custom_data~{jackpot:2}] run clear @s[tag=!luckybastard] *[custom_data~{jackpot:2}]
scoreboard players enable @a[tag=luckybastard] 777
execute as @a[scores={777=1..}] unless entity @s[tag=luckybastard_jackpot] run give @s carrot_on_a_stick[custom_name=[{"text":"Jackpot Hour","italic":false,"color":"green"}],lore=[["",{"text":"I JUST HIT THE ","italic":false,"color":"gray"},{"text":"JACKPOT","italic":false,"color":"green"},{"text":" AY AYA YA YAY AAE AE AYE","italic":false,"color":"gray"}],"",["",{"text":"Reserved Ball ","italic":false,"color":"gold"},{"text":"[ RMB ]","italic":false,"color":"yellow"}],["",{"text":"Shutter Doors ","italic":false,"color":"gold"},{"text":"[ F ]","italic":false,"color":"yellow"}],["",{"text":"Counter","italic":false,"color":"gold"},{"text":" [ Sneak ]","italic":false,"color":"yellow"}]],enchantment_glint_override=false,enchantments={knockback:4},unbreakable={},item_model="syn:jackpothour",custom_data={jackpot:1},tooltip_display={hidden_components:[enchantments]}]
execute as @a[scores={777=1..}] at @s unless entity @s[tag=luckybastard_jackpot] run stopsound @s voice minecraft:music_disc.gunbgm
execute as @a[scores={777=1..}] at @s unless entity @s[tag=luckybastard_jackpot] run playsound minecraft:music_disc.gunbgm voice @s ~ ~ ~ 150 1 1
execute as @a[scores={777=1..}] at @s unless entity @s[tag=luckybastard_jackpot] run playsound minecraft:music_disc.gunmotif voice @a[distance=..60,tag=!luckybastard,tag=!luckybastard_jackpot] ~ ~ ~ 150 1 1
execute as @a[scores={777=1..}] if entity @s[tag=luckybastard_jackpot] run give @s carrot_on_a_stick[custom_name=[{"text":"JACKPOT HOUR","italic":false,"color":"green","bold":true}],lore=[["",{"text":"I JUST HIT THE ","italic":false,"color":"gray"},{"text":"JACKPOT","italic":false,"color":"green"},{"text":" AY AYA YA YAY AAE AE AYE","italic":false,"color":"gray"}],"",["",{"text":"Energy Surge ","italic":false,"color":"gold"},{"text":"[ LMB ]","italic":false,"color":"yellow"}],["",{"text":"Lucky Volley ","italic":false,"color":"gold"},{"text":"[ RMB ]","italic":false,"color":"yellow"}],["",{"text":"Lucky Rushdown ","italic":false,"color":"gold"},{"text":"[ F ]","italic":false,"color":"yellow"}],["",{"text":"Overwhelming Luck ","italic":false,"color":"gold"},{"text":" [ Sneak ]","italic":false,"color":"yellow"}]],enchantment_glint_override=false,enchantments={knockback:4},unbreakable={},item_model="syn:jackpothour",custom_data={jackpot:2},tooltip_display={hidden_components:[enchantments]}]

scoreboard players set @a[scores={777=1..}] 777 0
