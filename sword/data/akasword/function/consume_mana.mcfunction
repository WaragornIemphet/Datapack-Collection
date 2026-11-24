# 1. Consume Item (1 per tick)
clear @s *[custom_data~{mana:1}] 1

# 2. Add Mana
experience add @s 100 points

# 3. Visuals
# Volume lowered to 0.2 to prevent audio clipping
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.2 1.5
particle minecraft:electric_spark ~ ~1 ~ 0.3 0.3 0.3 0.1 2
title @s actionbar {"text":"+100 Mana","color":"aqua"}

# 4. (Deleted) No Cooldown Reset
