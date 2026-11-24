# 1. Catch new grenades and link an anchor to them
execute as @e[type=snowball,tag=!beano] if data entity @s Item.components."minecraft:custom_data".beano at @s run function akasword:beanoinit

# 2. If an anchor is NO LONGER riding a vehicle, the snowball was destroyed! Detonate!
execute as @e[type=armor_stand,tag=beano_anchor] at @s unless entity @e[tag=beano,limit=1,sort=nearest,distance=..2,type=snowball] run function akasword:beanoexplode