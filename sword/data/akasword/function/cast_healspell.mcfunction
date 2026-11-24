# --- STEP 1: DECIDE PAYMENT METHOD ---
# Default: Assume player must pay XP
tag @s add syn_pay_xp
tag @s remove syn_pay_crystal

# CHECK: Run our new 1.20.5+ Predicate file
# This checks: Offhand + Amethyst + Model:syn:mana + Count >= 5
execute if predicate akasword:has_5_mana run tag @s add syn_pay_crystal
execute if predicate akasword:has_5_mana run tag @s remove syn_pay_xp

# --- STEP 2: PROCESS PAYMENT ---

# OPTION A: Pay with Crystals
# We use 'item_model' to match the item for removal (standard 1.20.5 syntax)
execute if entity @s[tag=syn_pay_crystal] run clear @s *[custom_data~{mana:1}] 5
execute if entity @s[tag=syn_pay_crystal] run playsound minecraft:entity.illusioner.cast_spell voice @s ~ ~ ~ 1 1
particle dust_color_transition{from_color:[0.0,1.0,0.33],to_color:[0.0,1.0,0.33],scale:4} ^ ^0.5 ^-0.5 5 5 5 0.5 150 force

# OPTION B: Pay with XP (Fallback)
execute if entity @s[tag=syn_pay_xp] run experience add @s -500 points
execute if entity @s[tag=syn_pay_xp] run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 1 0.5
particle dust_color_transition{from_color:[0.0,1.0,0.33],to_color:[0.0,1.0,0.33],scale:4} ^ ^0.5 ^-0.5 5 5 5 0.5 150 force

# --- STEP 3: CAST SPELL ---
effect give @a[distance=..5] instant_health 1 0
effect give @a[distance=..5] regeneration 5 3
effect give @a[distance=..5] saturation 5 5

# --- STEP 4: CLEANUP ---
scoreboard players set @s healstaff_cd 100
tag @s remove syn_pay_crystal
tag @s remove syn_pay_xp
