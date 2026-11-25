particle dust_color_transition{from_color:[1.0,0.94,0.38],to_color:[1.0,1.0,1.0],scale:4} ^ ^1 ^ 0.2 10 0.2 0.01 300
playsound minecraft:item.totem.use voice @a[distance=..100] ~ ~ ~ 300 2 1
damage @s 25 magic

scoreboard players set @s inbane_combohits 0

title @p[tag=current_attacker] actionbar {"text":"Searing Light","color":"yellow","bold":true}
