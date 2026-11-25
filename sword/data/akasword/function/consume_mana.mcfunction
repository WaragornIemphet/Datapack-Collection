clear @s *[custom_data~{mana:1}] 1

experience add @s 100 points

playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.2 1.5
particle minecraft:electric_spark ~ ~1 ~ 0.3 0.3 0.3 0.1 2
title @s actionbar {"text":"+100 Mana","color":"aqua"}

