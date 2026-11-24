execute as @e[tag=bank2,tag=!bank2p4,scores={Bank=..200}] run tag @s add bank2p4
execute at @e[tag=bank] run stopsound @a voice music_disc.bank2
schedule clear bankboss:bankloop
schedule clear bankboss:bankp1loop
schedule clear bankboss:bankp2loop
function bankboss:bankp3loop
execute as @e[tag=bank,limit=1] at @s run item replace entity @s weapon.offhand with air
execute as @e[tag=bank,limit=1] at @s run item replace entity @s weapon.mainhand with air
execute as @e[tag=bank2p4] at @s run effect give @s minecraft:regeneration 13 255
execute at @e[tag=bank2p4,limit=1] run tellraw @a[distance=..128] [{"text":"<Bank_2013>","color":"green"},{"text":" The universe is resetting,","color":"white"}]
execute as @e[tag=bank2p4] at @s run effect give @s slowness 2 255 true
schedule function bankboss:bankphase3_1 2s
execute at @e[tag=bank,limit=1] run playsound ui.button.click voice @a[distance=..128] ^ ^ ^ 150 1 1