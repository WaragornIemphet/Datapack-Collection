item replace entity @e[tag=bankstand,limit=1] weapon.offhand with iron_sword
execute as @e[tag=bankstand,limit=1] at @s run data merge entity @s {Pose:{LeftArm:[0f,319f,352f],RightArm:[0f,37f,9f]},ShowArms:1b}
schedule function bankboss:bankp2_4 1.5s
