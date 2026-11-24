# 1. Increment timer for anyone who has a combo score > 0
execute as @e[scores={inbane_combohits=1..}] run scoreboard players add @s inbane_timer 1

# 2. If timer > 12000 (10 mins * 60 secs * 20 ticks), reset everything
execute as @e[scores={inbane_timer=12000..}] run scoreboard players set @s inbane_combohits 0
execute as @e[scores={inbane_timer=12000..}] run scoreboard players set @s inbane_timer 0

# Look for a falling anvil landing on Crying Obsidian
execute as @e[type=minecraft:falling_block,nbt={BlockState:{Name:"minecraft:anvil"}}] at @s if block ~ ~-1 ~ minecraft:crying_obsidian run function akasword:crushobsidian

# CASE 1: Player has item in offhand, but hasn't been damaged yet.
# Action: Run the effect function.
execute as @a[predicate=akasword:holding_cutter,tag=!syn.holding_cutter] run function akasword:trigger_damage

# CASE 2: Player DOES NOT have item in offhand, but still has the tag.
# Action: Reset the tag so the effect can trigger again if they re-equip it.
execute as @a[predicate=!akasword:holding_cutter,tag=syn.holding_cutter] run tag @s remove syn.holding_cutter

execute as @a at @s if items entity @s weapon.offhand guster_banner_pattern[custom_name=[{"text":"Credit Card","italic":false,"color":"yellow"}],lore=[[{"text":"Someone might be needing this.","italic":false,"color":"white"}],"",["",{"text":"Press ","italic":false,"color":"dark_red"},{"text":"[ F ]","bold":true,"italic":false,"color":"dark_red"},{"text":" to interact","italic":false,"color":"dark_red"}]],enchantments={infinity:1},unbreakable={},item_model="syn:credit"] unless score world GUNLives matches 1 run function akasword:credituse
execute as @a at @s if items entity @s weapon.offhand bow[custom_name=[{"text":"Broken P08 Luger","italic":false,"color":"gold"}],lore=[[{"text":"Surprisingly, there's still 1 bullet left","italic":false,"color":"dark_gray"}],[{"text":"in the chamber. The firearm itself looks","italic":false,"color":"dark_gray"}],[{"text":"suspicious, like it's owned by someone you","italic":false,"color":"dark_gray"}],[{"text":"didn't want to mess with.","italic":false,"color":"dark_gray"}],"",["",{"text":"Press ","italic":false,"color":"dark_red"},{"text":"[ F ]","bold":true,"italic":false,"color":"dark_red"},{"text":" to interact","italic":false,"color":"dark_red"}]],enchantments={vanishing_curse:1},item_model="syn:luger",custom_data={gordlaygun:1b}] unless score world GordLayLives matches 1 run function akasword:brokeluger_use

execute as @a[scores={vanadium_dash_cd=1..}] run scoreboard players remove @s vanadium_dash_cd 1
execute as @a[scores={vanadium_resist_cd=1..}] run scoreboard players remove @s vanadium_resist_cd 1

execute as @a[tag=wongkura_challenger,scores={vanadium_dash_cd=0},predicate=akasword:is_sneaking] if items entity @s weapon.mainhand *[minecraft:custom_data~{vanad:1}] run function akasword:vanadiumdash
execute as @a[tag=wongkura_challenger] if items entity @s weapon.mainhand *[minecraft:custom_data~{vanad:1}] run function akasword:vanadium_display
execute as @a[tag=wongkura_challenger,scores={vanadium_resist_cd=0}] if items entity @s weapon.offhand *[minecraft:custom_data~{vanad:1}] run function akasword:vanadium_resist
# Singularities
execute as @a[tag=speed_owner] at @s if entity @s run function akasword:mihtick
execute as @a[tag=lightbane] at @s if entity @s run function akasword:lightbanetick
execute as @a[tag=wongkura_singular] at @s if entity @s run function akasword:wongkura_tick
execute as @a[tag=strategist] at @s if entity @s run function akasword:strategist/strategisttick

execute as @a at @s if items entity @s container.* breeze_rod[!custom_data~{breeze:true}] run function akasword:givebreeze
execute as @a at @s if items entity @s container.* torch[!custom_data~{torch:true}] run function akasword:givetorch
execute as @a at @s if items entity @s container.* blaze_rod[!custom_data~{blaze:true}] run function akasword:giveblazerod

# ========================================
# WEAPON STAT INTERCEPTOR (SMITHING-SAFE)
# ========================================

# --- Diamond Tier ---
execute as @a if items entity @s weapon.mainhand minecraft:diamond_sword[!custom_data] run item modify entity @s weapon.mainhand akasword:upgrade_diamond_sword
execute as @a if items entity @s weapon.mainhand minecraft:diamond_axe[!custom_data] run item modify entity @s weapon.mainhand akasword:upgrade_diamond_axe

# --- 1. Freshly Crafted/Spawned ---
execute as @a if items entity @s weapon.mainhand minecraft:netherite_sword[!minecraft:custom_data] run item modify entity @s weapon.mainhand akasword:upgrade_neth_sword

# --- 2. Smithed from Diamond ---
execute as @a if items entity @s weapon.mainhand minecraft:netherite_sword[minecraft:custom_data~{realdiamondsword:1}] unless items entity @s weapon.mainhand *[minecraft:custom_data~{neth_stats_applied:1b}] run item modify entity @s weapon.mainhand akasword:upgrade_neth_sword

# --- 3. Manually Tagged (From your screenshot) ---
execute as @a if items entity @s weapon.mainhand minecraft:netherite_sword[minecraft:custom_data~{netheritesword:1}] unless items entity @s weapon.mainhand *[minecraft:custom_data~{neth_stats_applied:1b}] run item modify entity @s weapon.mainhand akasword:upgrade_neth_sword

# --- Netherite Axe ---
execute as @a if items entity @s weapon.mainhand minecraft:netherite_axe[minecraft:custom_data~{realdiamondaxe:1b}] unless items entity @s weapon.mainhand *[minecraft:custom_data~{nethaxe_upgraded:1b}] run item modify entity @s weapon.mainhand akasword:upgrade_neth_axe
execute as @a if items entity @s weapon.mainhand minecraft:netherite_axe[!minecraft:custom_data] run item modify entity @s weapon.mainhand akasword:upgrade_neth_axe

# --- Netherite Sword Combo Decay ---


execute as @a[scores={SwordTimer=1..}] run scoreboard players remove @s SwordTimer 1

execute as @a[scores={SwordTimer=0}] run scoreboard players set @s SwordCombo 0

execute as @a[scores={SwordTimer=0}] run scoreboard players reset @s SwordTimer

# Anyone without tag=lightbane holding Light Bane gets paralyzed and cannot swing or use it
execute as @a[tag=!lightbane] if items entity @s weapon.* *[custom_data~{lighttrigger_hit:1}] run effect give @s minecraft:weakness 2 254 true
execute as @a[tag=!lightbane] if items entity @s weapon.* *[custom_data~{lighttrigger_hit:1}] run effect give @s minecraft:mining_fatigue 2 254 true
execute as @a[tag=!lightbane] if items entity @s weapon.* *[custom_data~{lighttrigger_hit:1}] run effect give @s minecraft:slowness 2 4 true
execute as @a[tag=!lightbane] if items entity @s weapon.* *[custom_data~{lighttrigger_hit:1}] run damage @s 10 magic by @s
execute as @a[tag=!lightbane] if items entity @s weapon.* *[custom_data~{lighttrigger_hit:1}] run title @s actionbar {"text":"You are not worthy","color":"red","bold":true}


# ==========================================
#  6. TRAP ENTITY AI (Mode 3)
# ==========================================
# Target Indicator Particles (Hovering above the head)
execute at @e[type=armor_stand,tag=trapsentry,tag=trap_mobs] run particle dust{color:[0.0,1.0,0.0],scale:0.8} ~ ~2.2 ~ 0 0 0 0 1 normal
execute at @e[type=armor_stand,tag=trapsentry,tag=trap_players] run particle dust{color:[1.0,1.0,0.0],scale:0.8} ~ ~2.2 ~ 0 0 0 0 1 normal
execute at @e[type=armor_stand,tag=trapsentry,tag=trap_both] run particle dust{color:[1.0,0.0,0.0],scale:0.8} ~ ~2.2 ~ 0 0 0 0 1 normal

# Trap Radar (Searches 5 blocks in front of idle traps)
execute as @e[type=armor_stand,tag=trapsentry,tag=!trap_firing] at @s positioned ^ ^1 ^3 run function akasword:strategist/trap_detect

# Trap Firing Sequence (Ticks for traps that are currently firing)
execute as @e[type=armor_stand,tag=trap_firing] at @s run function akasword:strategist/trap_shoot_tick

function akasword:beanotick
function akasword:dummy_tick
function akasword:chainsawtick
function akasword:jackpot_hour_tick
function akasword:recoveringtick
function akasword:crowntick
function akasword:vadspoontick
function akasword:healstaffcraft
function akasword:healstafftick
function akasword:manatick
function akasword:musket_tick
function akasword:flintlock_tick
function akasword:vanhelmet
function akasword:vanchestplate
function akasword:vanleggings
function akasword:vanboots
function akasword:vansword
function akasword:vanaxe
function akasword:diamondparrytick
function akasword:netheritearmortick