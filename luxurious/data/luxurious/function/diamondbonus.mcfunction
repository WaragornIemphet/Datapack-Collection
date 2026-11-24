## ========================================
## DIAMOND SET: Base Armor Detection
## ========================================
# 1. Clear the tag from the previous tick
tag @a remove base_diamond_set

# 2. Check all 4 slots. The [!minecraft:custom_data] ensures it ONLY works on pure vanilla armor!
execute as @a if items entity @s armor.head minecraft:diamond_helmet[!minecraft:custom_data] if items entity @s armor.chest minecraft:diamond_chestplate[!minecraft:custom_data] if items entity @s armor.legs minecraft:diamond_leggings[!minecraft:custom_data] if items entity @s armor.feet minecraft:diamond_boots[!minecraft:custom_data] run tag @s add base_diamond_set


## ========================================
## DIAMOND SET: Damage Tracking & Interruptions
## ========================================
# 1. If player took damage: Reset timer, strip buff, clear active tag
execute as @a[scores={DmgTaken=1..}] run scoreboard players set @s SetTimer 0
execute as @a[scores={DmgTaken=1..},tag=diamond_buff_active] run effect clear @s regeneration
execute as @a[scores={DmgTaken=1..}] run tag @s remove diamond_buff_active

# 2. If player takes off the armor (or equips custom gear): Reset timer, strip buff
execute as @a[tag=!base_diamond_set,scores={SetTimer=1..}] run scoreboard players set @s SetTimer 0
execute as @a[tag=!base_diamond_set,tag=diamond_buff_active] run effect clear @s regeneration
execute as @a[tag=!base_diamond_set] run tag @s remove diamond_buff_active


## ========================================
## DIAMOND SET: Buff Logic (15 Seconds / 300 Ticks)
## ========================================
# 1. Charge up the timer for players wearing the set who don't have the buff yet (Fixed duplicate!)
execute as @a[tag=base_diamond_set,tag=!diamond_buff_active] run scoreboard players add @s SetTimer 1

# 2. The Build-Up Visuals (Adjusted to 240.. to match the 300 tick / 15s timer)
execute as @a[tag=base_diamond_set,tag=!diamond_buff_active,scores={SetTimer=240..}] at @s run particle dust{color:[0.2, 1.0, 1.0], scale:0.5} ~ ~1 ~ 0.4 0.4 0.4 0 1

# 4. Activation at 300 ticks
execute as @a[scores={SetTimer=300..}] at @s run playsound minecraft:block.amethyst_block.chime voice @a[distance=..5] ~ ~ ~ 150 1.2
execute as @a[scores={SetTimer=300..}] at @s run particle end_rod ~ ~1 ~ 0.3 0.4 0.3 0.05 5
execute as @a[scores={SetTimer=300..}] run tag @s add diamond_buff_active
execute as @a[scores={SetTimer=300..}] run scoreboard players set @s SetTimer 0

# 5. ACTIVE AMBIENT: A very sparse, slow-floating diamond particle so they know the buff is live
execute as @a[tag=diamond_buff_active,tag=base_diamond_set] at @s run particle dust{color:[0.2, 1.0, 1.0], scale:0.6} ~ ~1 ~ 0.4 0.4 0.4 0 1

# 6. Maintain the Regeneration 33 buff for anyone who has it active
execute as @a[tag=diamond_buff_active,tag=base_diamond_set] run effect give @s regeneration 1 5 true


## ========================================
## DIAMOND SET: Scoreboard Cleanup
## ========================================
# MISSING CODE FIXED: Reset the damage tracker so it doesn't freeze the timer!
scoreboard players set @a DmgTaken 0