execute as @e[tag=bankstand1] at @p[tag=bank_cutscene] run tp @s ^ ^ ^1.5 facing entity @p[tag=bank_cutscene]
execute at @e[tag=bankstand] run effect give @a[distance=..100] blindness 1 1 true
execute as @e[tag=bankstand,limit=1] at @s run data merge entity @s {Pose:{LeftArm:[0f,360f,337f],RightArm:[360f,77f,75f]},ShowArms:1b}
execute at @e[tag=bank,limit=1] run tellraw @a[distance=..128] [{"text":"<Bank_2013>","color":"green"},{"text":" You're annoying as fuck","color":"white"}]
schedule function bankboss:bankp1_7 1.5s
execute at @e[tag=bank,limit=1] run playsound ui.button.click voice @a[distance=..128] ^ ^ ^ 150 1 1