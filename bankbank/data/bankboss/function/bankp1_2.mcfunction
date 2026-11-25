execute as @e[tag=bankstand,limit=1] at @s run data merge entity @s {Pose:{RightArm:[0f,37f,9f]},ShowArms:1b}
execute at @e[tag=bank,limit=1] run tellraw @a[distance=..128] [{"text":"<Bank_2013>","color":"green"},{"text":" Listen here you little shit","color":"white"}]
execute at @e[tag=bank,limit=1] run playsound ui.button.click voice @a[distance=..128] ^ ^ ^ 150 1 1
schedule function bankboss:bankp1_3 1.5s
