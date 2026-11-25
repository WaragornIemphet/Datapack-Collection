tag @e[type=minecraft:item,tag=lb_dropped_sword] remove lb_dropped_sword
execute as @e[type=minecraft:item,distance=..6] if items entity @s contents *[custom_data~{lighttrigger_hit:1}] run tag @s add lb_dropped_sword

execute as @e[type=minecraft:item,tag=lb_dropped_sword,limit=1,sort=nearest] run data modify entity @s Owner set from entity @p[tag=lightbane] UUID
execute as @e[type=minecraft:item,tag=lb_dropped_sword,limit=1,sort=nearest] run data merge entity @s {PickupDelay:0s,Motion:[0.0d,0.0d,0.0d]}
tp @e[type=minecraft:item,tag=lb_dropped_sword,limit=1,sort=nearest] @s
tag @e[type=minecraft:item,tag=lb_dropped_sword] remove lb_dropped_sword

execute if score @s lb_q_cd matches 1.. run return 0
scoreboard players set @s lb_q_cd 10
scoreboard players set @s lb_ui_pause 20

scoreboard players add @s lb_mode 1
execute if score @s lb_mode matches 3.. run scoreboard players set @s lb_mode 0

execute if score @s lb_mode matches 0 run playsound minecraft:block.beacon.deactivate voice @s ~ ~ ~ 1.0 1.4
execute if score @s lb_mode matches 0 run particle minecraft:end_rod ~ ~1 ~ 0.3 0.4 0.3 0.05 15 normal
execute if score @s lb_mode matches 0 run title @s actionbar ["",{"text":"[ ","color":"dark_gray"},{"text":"LIGHT BANE: ","color":"yellow","bold":true},{"text":"SALVATION MODE","color":"white","bold":true},{"text":" ]","color":"dark_gray"}]

execute if score @s lb_mode matches 1 run playsound minecraft:block.beacon.activate voice @s ~ ~ ~ 1.0 1.6
execute if score @s lb_mode matches 1 run playsound minecraft:item.totem.use voice @s ~ ~ ~ 0.4 1.8
execute if score @s lb_mode matches 1 run particle minecraft:dust_color_transition{from_color:[1.0,0.94,0.38],to_color:[1.0,1.0,1.0],scale:2.2} ~ ~1 ~ 0.4 0.6 0.4 0.05 25 normal
execute if score @s lb_mode matches 1 run title @s actionbar ["",{"text":"[ ","color":"dark_gray"},{"text":"LIGHT BANE: ","color":"gold","bold":true},{"text":"PURIFICATION MODE","color":"yellow","bold":true},{"text":" ]","color":"dark_gray"}]

execute if score @s lb_mode matches 2 run playsound minecraft:entity.warden.sonic_boom voice @s ~ ~ ~ 0.7 1.6
execute if score @s lb_mode matches 2 run playsound minecraft:block.bell.resonate voice @s ~ ~ ~ 1.0 1.2
execute if score @s lb_mode matches 2 run particle minecraft:dust_color_transition{from_color:[1.0,0.2,0.2],to_color:[1.0,0.94,0.38],scale:2.8} ~ ~1 ~ 0.5 0.7 0.5 0.08 35 normal
execute if score @s lb_mode matches 2 run title @s actionbar ["",{"text":"[ ","color":"dark_gray"},{"text":"LIGHT BANE: ","color":"dark_red","bold":true},{"text":"ERADICATION MODE","color":"red","bold":true},{"text":" ]","color":"dark_gray"}]
