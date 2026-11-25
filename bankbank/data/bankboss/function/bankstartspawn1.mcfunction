title @s actionbar [{"text":"OVERLOAD ","color":"red"}]
item replace entity @s weapon.mainhand with air
particle block{block_state:iron_block} ^ ^1.2 ^ 0.5 1 0.5 1 30 normal
playsound entity.item.break voice @a[distance=..50] ^ ^ ^ 300 1 1
scoreboard players set world bankscan 0
execute at @s as @e[tag=bankspawnarmorstand,limit=1,sort=nearest] run tag @s add spawnbank
execute as @a[tag=playerspawnbank,limit=1] at @e[tag=bankspawnarmorstand,limit=1,sort=nearest] run schedule function bankboss:bank 5s
