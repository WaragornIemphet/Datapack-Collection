execute as @e[tag=bank2,tag=!bank2p3,scores={Bank=..400}] run tag @s add bank2p3
execute at @e[tag=bank] run stopsound @a voice music_disc.bank1
schedule clear bankboss:bankloop
schedule clear bankboss:bankp1loop
schedule clear bankboss:bankp2loop
function bankboss:bankp2loop
execute as @e[tag=bank,limit=1] at @s run item replace entity @s weapon.offhand with clock
execute as @e[tag=bank2p3] at @s run effect give @s minecraft:regeneration 5 255
execute at @e[tag=bank] run particle enchant ^ ^ ^ 0.3 1 0.3 1 250 force
execute at @e[tag=bank2p3,limit=1] run tellraw @a[distance=..128] [{"text":"<Bank_2013>","color":"green"},{"text":" My schedule is tight, I'm ending this now","color":"white"}]
execute at @e[tag=bank,limit=1] run playsound ui.button.click voice @a[distance=..128] ^ ^ ^ 150 1 1
