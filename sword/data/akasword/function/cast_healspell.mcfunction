tag @s add syn_pay_xp
tag @s remove syn_pay_crystal

execute if predicate akasword:has_5_mana run tag @s add syn_pay_crystal
execute if predicate akasword:has_5_mana run tag @s remove syn_pay_xp


execute if entity @s[tag=syn_pay_crystal] run clear @s *[custom_data~{mana:1}] 5
execute if entity @s[tag=syn_pay_crystal] run playsound minecraft:entity.illusioner.cast_spell voice @s ~ ~ ~ 1 1
particle dust_color_transition{from_color:[0.0,1.0,0.33],to_color:[0.0,1.0,0.33],scale:4} ^ ^0.5 ^-0.5 5 5 5 0.5 150 force

execute if entity @s[tag=syn_pay_xp] run experience add @s -500 points
execute if entity @s[tag=syn_pay_xp] run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 1 0.5
particle dust_color_transition{from_color:[0.0,1.0,0.33],to_color:[0.0,1.0,0.33],scale:4} ^ ^0.5 ^-0.5 5 5 5 0.5 150 force

effect give @a[distance=..5] instant_health 1 0
effect give @a[distance=..5] regeneration 5 3
effect give @a[distance=..5] saturation 5 5

scoreboard players set @s healstaff_cd 100
tag @s remove syn_pay_crystal
tag @s remove syn_pay_xp
