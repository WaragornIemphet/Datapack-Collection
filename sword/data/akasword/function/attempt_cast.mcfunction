# 1. STRICT GATEKEEPER (Level vs. Cost)
# Logic: IF (Level is 6 or lower) AND (Player fails the "Has 5 Mana" check)...
# Then: Stop the spell immediately.
execute if entity @s[level=..6] unless predicate akasword:has_5_mana run title @s actionbar {"text":"Requires Lv 500 XP or 5 Mana Crystals","color":"red"}
execute if entity @s[level=..6] unless predicate akasword:has_5_mana run playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 1 0.5
execute if entity @s[level=..6] unless predicate akasword:has_5_mana run particle minecraft:angry_villager ~ ~1.5 ~ 0.2 0.2 0.2 0.05 5
execute if entity @s[level=..6] unless predicate akasword:has_5_mana run return 0

# 2. COOLDOWN CHECK
# Only runs if the player PASSED step 1 (meaning they are High Level OR have 5+ Crystals)
execute if score @s healstaff_cd matches 1.. run particle minecraft:smoke ~ ~1.5 ~ 0.2 0.2 0.2 0.05 10
execute if score @s healstaff_cd matches 1.. run playsound minecraft:block.fire.extinguish master @s ~ ~ ~ 0.5 1
execute if score @s healstaff_cd matches 1.. run return 0

# 3. SUCCESS
# Proceed to payment processing
function akasword:cast_healspell
