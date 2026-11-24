execute at @s run particle gust_emitter_small ^ ^1.2 ^1.5 0 0 0 0 1 force
execute at @s run particle enchanted_hit ^ ^1.2 ^1.5 0.25 0.25 0.25 0 10 force
execute at @e[tag=luckyvolleyrange,limit=1] as @e[distance=..3,sort=nearest,type=!interaction,type=!#redirectable_projectile,type=!item,type=!experience_orb,tag=!luckybastard,type=!armor_stand,type=!mannequin,type=!text_display] run damage @s 18 player_attack
effect give @s slowness 1 3 true
