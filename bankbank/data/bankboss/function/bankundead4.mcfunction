execute as @e[tag=bankstand,limit=1] at @s run data merge entity @s {Pose:{LeftArm:[316f,16f,0f],RightArm:[306f,344f,0f],LeftLeg:[0f,349f,0f]}}
execute at @e[tag=bankstand] facing entity @a[tag=banktarget,limit=1] feet run teleport @e[tag=bankstand] ^ ^ ^0.5 facing entity @a[limit=1,sort=nearest] feet
execute as @e[tag=banktarget,limit=1] at @s run damage @s 25 player_attack by @e[tag=bankstand,limit=1]
execute as @e[tag=banktarget,limit=1] at @s run particle block{block_state:{Name:nether_wart_block}} ^ ^1.2 ^ 0 0 0 1 150 force
execute at @e[tag=bank] run tellraw @a[distance=..128] [{"text":"<Bank_2013> ","color":"green"},{"text":"Be glad you're not an ","color":"white"},{"text":"undead","color":"dark_blue"}]
schedule function bankboss:bankundead5 1s
execute at @e[tag=bank,limit=1] run playsound ui.button.click voice @a[distance=..128] ^ ^ ^ 150 1 1