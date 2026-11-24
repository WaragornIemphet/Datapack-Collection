execute as @e[tag=bankstand,limit=1] at @s run data merge entity @s {Pose:{RightArm:[0f,37f,9f]},ShowArms:1b}
execute at @e[tag=bank,limit=1] run tellraw @a[distance=..128] [{"text":"<Bank_2013>","color":"green"},{"text":" I'm tired of you","color":"white"}]
schedule function bankboss:bankp2_3 1.5s