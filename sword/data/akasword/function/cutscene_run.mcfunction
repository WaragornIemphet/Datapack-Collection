# akasword:mechanics/cutscene_run
# Runs AS the Attacker (@a[tag=mih_attacker])

# Increment Timer
scoreboard players add @s cutscene_timer 1

# ==================================================
#  PHASE 1: THE SETUP (Tick 2)
# ==================================================

execute if score @s cutscene_timer matches 2 run playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 2 0.5

# 1. Teleport Attacker BEHIND Victim
# We use sort=nearest to ensure we lock onto the specific victim linked to this interaction
execute if score @s cutscene_timer matches 2 at @e[tag=mih_victim,limit=1,sort=nearest] run tp @s ^ ^ ^-2 facing entity @e[tag=mih_victim,limit=1,sort=nearest]

# 2. Force Attacker to look at Victim
execute if score @s cutscene_timer matches 2 at @s run tp @s ~ ~ ~ facing entity @e[tag=mih_victim,limit=1,sort=nearest]

# 3. Freeze Victim
execute if score @s cutscene_timer matches 2 as @e[tag=mih_victim] run effect give @s slowness 7 255 true
execute if score @s cutscene_timer matches 2 as @e[tag=mih_victim] run effect give @s jump_boost 7 200 true
execute if score @s cutscene_timer matches 2 as @e[tag=mih_victim] run effect give @s weakness 7 255 true
execute if score @s cutscene_timer matches 2 as @e[tag=mih_victim] run effect give @s blindness 7 255 true


# ==================================================
#  PHASE 2: THE MONOLOGUE (Tick 50 / 2.5s)
# ==================================================
execute if score @s cutscene_timer matches 50 run tellraw @a [{"text":"<","color":"gold","italic":false},{"selector":"@s","color":"gold"},{"text":">","color":"gold","italic":false},{"text":" You were 2 steps behind","color":"white","italic":false}]
execute if score @s cutscene_timer matches 50 run playsound music_disc.timeaccel voice @a ~ ~ ~ 100 1


# ==================================================
#  PHASE 3: THE EXECUTION (Tick 130 / 6.5s)
# ==================================================
# CRITICAL FIX: Execute AS the victim to guarantee hit registration.
# We look for the nearest attacker (which is YOU, standing right behind them) to blame for the damage.

# 1. Apply Damage
execute if score @s cutscene_timer matches 130 as @e[tag=mih_victim] run damage @s 600 minecraft:player_attack by @p[tag=mih_attacker,sort=nearest,limit=1]
execute if score @s cutscene_timer matches 130 as @e[tag=mih_victim] run particle sweep_attack ^ ^1 ^ 0.5 0.5 0.5 0 40 force


# 3. FX
execute if score @s cutscene_timer matches 130 at @s run playsound minecraft:entity.zombie_villager.cure master @a ~ ~ ~ 2 1
execute if score @s cutscene_timer matches 130 at @e[tag=mih_victim] run particle explosion ~ ~1 ~ 0.5 0.5 0.5 1 50 force
execute if score @s cutscene_timer matches 130 at @e[tag=mih_victim] run particle block{block_state:{Name:"minecraft:redstone_block"}} ~ ~1 ~ 0.5 0.5 0.5 1 50 force


# ==================================================
#  PHASE 4: THE CLEANUP (Tick 131)
# ==================================================
# Runs 1 tick later to ensure damage has processed before tags are stripped.

# 1. Clear Victim
execute if score @s cutscene_timer matches 131 as @e[tag=mih_victim] run effect clear @s
execute if score @s cutscene_timer matches 131 as @e[tag=mih_victim] run tag @s remove mih_victim

# 2. Clear Attacker
execute if score @s cutscene_timer matches 131 run tag @s remove mih_attacker

# 3. Reset Timer
execute if score @s cutscene_timer matches 131 run scoreboard players set @s cutscene_timer 0