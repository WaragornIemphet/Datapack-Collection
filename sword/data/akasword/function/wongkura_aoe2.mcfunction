particle minecraft:explosion_emitter ~ ~1 ~ 1 0.5 1 0 1
playsound entity.dragon_fireball.explode voice @a[distance=..60] ^ ^ ^ 100 1.5 1
particle dust_color_transition{from_color:[0.64,0.95,0.98],to_color:[1.0,0.0,0.0],scale:4} ^ ^1 ^ 3 3 3 0.3 100 force
execute as @e[distance=..6.5,type=!minecraft:interaction,type=!armor_stand,type=!mannequin,type=!item_frame,type=!glow_item_frame,type=!item,tag=!wongkura_singular] run damage @s 15 minecraft:player_explosion by @a[tag=wongkura_singular,limit=1]
execute as @e[distance=..6.5,type=!minecraft:interaction,type=!armor_stand,type=!mannequin,type=!item_frame,type=!glow_item_frame,type=!item,tag=!wongkura_singular] run effect give @s blindness 2 1
execute as @e[distance=..6.5,type=!minecraft:interaction,type=!armor_stand,type=!mannequin,type=!item_frame,type=!glow_item_frame,type=!item,tag=!wongkura_singular] run effect give @s slowness 1 255 true
