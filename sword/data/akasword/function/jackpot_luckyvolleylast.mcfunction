execute at @e[tag=luckyvolleyrange,limit=1] as @e[distance=..3.5,sort=nearest,type=!interaction,type=!#redirectable_projectile,type=!item,type=!experience_orb,tag=!luckybastard,type=!armor_stand,type=!mannequin] run damage @s 25 player_attack
execute at @e[tag=luckyvolleyrange,limit=1] as @e[distance=..3.5,sort=nearest,type=!interaction,type=!#redirectable_projectile,type=!item,type=!experience_orb,tag=!luckybastard] run effect give @s slowness 2 255 true
execute at @e[tag=luckyvolleyrange,limit=1] as @e[distance=..3.5,sort=nearest,type=!interaction,type=!#redirectable_projectile,type=!item,type=!experience_orb,tag=!luckybastard] run effect give @s levitation 1 10 true
execute at @s run particle enchanted_hit ^ ^1.2 ^1.5 0.25 0.25 0.25 0 10 force
execute at @s as @s anchored eyes run particle sweep_attack ^ ^ ^1.5 1 0 0 0 10 force
execute at @s run playsound block.anvil.land voice @a[distance=..60] ~ ~ ~ 100 0.1 1 
execute at @s run kill @e[tag=luckyvolleyrange]
execute as @e[tag=luckyvolley] at @s run tag @s remove luckyvolley