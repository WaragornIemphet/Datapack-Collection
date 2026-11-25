tag @s add chay_phase2

execute at @e[tag=chay] run tellraw @a[distance=..128] [{"text":"<0_Chay_0> ","color":"aqua"},{"text":"I REFUSE!","color":"white"}]
summon vindicator ~ ~ ~ {CustomName:[{"text":"0_Chay_0","color":"aqua"}],CustomNameVisible:1b,Health:250,PersistenceRequired:1b,Silent:1b,Tags:[chay2,chayp2],attributes:[{id:armor,base:8f},{id:attack_damage,base:5f},{id:scale,base:1.25f},{id:follow_range,base:40f},{id:max_health,base:250f}]}

execute at @s run playsound minecraft:item.totem.use master @a[distance=..128] ~ ~ ~ 100 1.2
execute at @s run particle minecraft:totem_of_undying ~ ~1 ~ 0.5 0.5 0.5 0.1 100 force
execute at @s run particle minecraft:explosion ~ ~1 ~ 1 1 1 0.1 10 force

execute at @s run item replace entity @s weapon.offhand with mace
execute at @s run item replace entity @s weapon.mainhand with netherite_axe

execute if score world LuxBackups matches 0 run function luxurious:chayreinforcement
