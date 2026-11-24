item replace entity @e[tag=bankstand,limit=1] weapon.offhand with diamond_sword[custom_name=[{"text":"Crystal Sword","italic":false,"color":"aqua"}],enchantments={breach:4},unbreakable={}]
item replace entity @e[tag=bank,limit=1] weapon.offhand with diamond_sword[custom_name=[{"text":"Crystal Sword","italic":false,"color":"aqua"}],enchantments={breach:4},unbreakable={}]
execute as @e[tag=bankstand,limit=1] at @s run data merge entity @s {Pose:{LeftArm:[0f,319f,352f],RightArm:[0f,37f,9f]},ShowArms:1b}
schedule function bankboss:bankp1_4 1.7s