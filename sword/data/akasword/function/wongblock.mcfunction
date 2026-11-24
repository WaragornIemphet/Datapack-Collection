scoreboard players set @s akasword_blockbreak_cd 600
execute at @a[tag=wongkura_singular,limit=1] run particle dust_color_transition{from_color:[0.64,0.95,0.98],to_color:[1.0,0.0,0.0],scale:4} ^ ^0.25 ^ 0.2 0.55 0.2 0.1 100 force
execute as @e[tag=wongkura_singular,limit=1] at @s run tag @e[distance=..20,tag=!wongkura_singular,type=!item_frame,type=!glow_item_frame,type=!armor_stand,type=!mannequin,type=!item,type=!interaction,type=!painting] add break_target
execute as @e[tag=wongkura_singular,limit=1] at @s run effect give @s resistance 5 255 true
execute as @e[tag=wongkura_singular,limit=1] at @s run effect give @s slowness 5 255 true
schedule function akasword:wongblock1 2s
