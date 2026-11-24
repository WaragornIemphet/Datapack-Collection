execute as @e[tag=bankstand1] at @p[tag=bank_cutscene] run tp @s ^ ^ ^0.5 facing entity @p[tag=bank_cutscene]
execute at @e[tag=bankstand] run effect give @a[distance=..100] blindness 1 1 true
execute as @e[tag=bankstand,limit=1] at @s run data merge entity @s {Pose:{LeftArm:[316f,16f,0f],RightArm:[306f,344f,0f],LeftLeg:[0f,349f,0f]},ShowArms:1b}
execute as @a[tag=bank_cutscene,limit=1] at @s run damage @s 36 player_attack by @e[tag=bank,limit=1]
schedule function bankboss:bankp1_8 1s