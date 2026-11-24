# ==========================================
#  1. ANTI-THEFT
# ==========================================
execute as @a[tag=!strategist] at @s if items entity @s container.* *[custom_data~{strategist:1}] run clear @s[tag=!strategist] *[custom_data~{strategist:1}]

# ==========================================
#  2. INPUT ROUTING
# ==========================================
# Sneak (Mode Cycling)
execute as @a[tag=strategist,scores={tabletswitch_cd=0},predicate=akasword:is_sneaking] if items entity @s weapon.mainhand *[custom_data~{strategist:1}] at @s run function akasword:strategist/switch

# Offhand (F Key)
execute as @a[tag=strategist] if items entity @s weapon.offhand *[custom_data~{strategist:1}] at @s run function akasword:strategist/f_router

# Mainhand (RMB)
execute as @a[tag=strategist,scores={tabletclick=1..}] if items entity @s weapon.mainhand *[custom_data~{strategist:1}] at @s run function akasword:strategist/rmb_router
scoreboard players set @a[scores={tabletclick=1..}] tabletclick 0

# ==========================================
#  3. PLAYER COOLDOWNS
# ==========================================
scoreboard players remove @a[tag=strategist,scores={tabletswitch_cd=1..}] tabletswitch_cd 1
scoreboard players remove @a[tag=strategist,scores={spacepull_cd=1..}] spacepull_cd 1
scoreboard players remove @a[tag=strategist,scores={spaceswap_cd=1..}] spaceswap_cd 1
scoreboard players remove @a[tag=strategist,scores={sentryfire_cd=1..}] sentryfire_cd 1
scoreboard players remove @a[tag=strategist,scores={sentryplace_cd=1..}] sentryplace_cd 1
scoreboard players remove @a[tag=strategist,scores={trapconfig_cd=1..}] trapconfig_cd 1
scoreboard players remove @a[tag=strategist,scores={trapplace_cd=1..}] trapplace_cd 1

# ==========================================
#  4. PROXIMITY DETECTION & LIVE COUNTS
# ==========================================
# Sentry Proximity & Count
tag @a[tag=strategist] remove nearsentry
execute as @a[tag=strategist] at @s if entity @e[type=armor_stand,tag=sentry,distance=..1] run tag @s add nearsentry
execute as @a[tag=strategist] store result score @s active_sentries if entity @e[type=armor_stand,tag=sentry]

# Trap Proximity & Count
tag @a[tag=strategist] remove neartrap
execute as @a[tag=strategist] at @s if entity @e[type=armor_stand,tag=trapsentry,distance=..1] run tag @s add neartrap
execute as @a[tag=strategist] store result score @s active_traps if entity @e[type=armor_stand,tag=trapsentry]

# ==========================================
#  5. SENTRY ENTITY AI (Mode 2)
# ==========================================
# Auto-aim at target
execute as @e[type=armor_stand,tag=sentry] at @s if entity @e[tag=spacetarget] run tp @s ~ ~ ~ facing entity @e[tag=spacetarget,limit=1] feet

# Lifetime logic (Paused while firing sequence is active)
execute unless score #sentry_shots sentry_math matches 1.. as @e[type=armor_stand,tag=sentry] run scoreboard players remove @s sentrylife 1

# Kill expired Sentries
execute at @e[type=armor_stand,tag=sentry,scores={sentrylife=..0}] run particle cloud ~ ~1 ~ 0.3 0.5 0.3 0.05 15 normal
kill @e[type=armor_stand,tag=sentry,scores={sentrylife=..0}]


# ==========================================
#  7. TRINITY HUD DISPLAY
# ==========================================
execute as @a[tag=strategist] if items entity @s weapon.mainhand *[custom_data~{strategist:1}] run function akasword:strategist/ui

scoreboard players enable @a[tag=strategist] gord
execute as @a[scores={gord=1..}] run give @s carrot_on_a_stick[custom_name=[{"text":"The Strategist","italic":false,"color":"yellow"}],lore=[[{"text":"A tablet used by GordLay888 in his prime.","italic":false,"color":"dark_aqua"}],[{"text":"You can manipulate space, summon firing squad or even setting","italic":false,"color":"light_purple"}],[{"text":"up a trap for home defense.","italic":false,"color":"light_purple"}]],enchantment_glint_override=false,attribute_modifiers=[{type:follow_range,amount:-64,slot:mainhand,operation:add_value,id:"1790693904979"}],custom_data={strategist:1},item_model="syn:tablet",unbreakable={},tooltip_display={hidden_components:[enchantments]}]
execute as @a[scores={gord=1..}] run stopsound @s voice minecraft:music_disc.gordlay1
execute as @a[scores={gord=1..}] run playsound minecraft:music_disc.gordlaymotif voice @a[distance=..60,tag=!wongkura_singular] ~ ~ ~ 150 1 1
execute as @a[scores={gord=1..}] run playsound minecraft:music_disc.gordlay1 voice @s ~ ~ ~ 150 1 1
scoreboard players set @a[scores={gord=1..}] gord 0