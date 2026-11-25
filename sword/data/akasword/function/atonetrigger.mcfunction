particle dust_color_transition{from_color:[1.0,0.94,0.38],to_color:[1.0,1.0,1.0],scale:4} ^ ^1 ^ 0.2 10 0.2 0.01 300
playsound minecraft:item.totem.use voice @a[distance=..100] ~ ~ ~ 300 2 1
damage @s 50 minecraft:magic by @p[tag=lightbane]

execute if score #lb_paid_proc lb_math matches 0 run scoreboard players set @s lightbane_combohits 0

execute if score #lb_paid_proc lb_math matches 0 if score @p[tag=lightbane] lb_mode matches 0 run scoreboard players add @p[tag=lightbane] ult_charge 1
execute if score @p[tag=lightbane] ult_charge matches 51.. run scoreboard players set @p[tag=lightbane] ult_charge 50

