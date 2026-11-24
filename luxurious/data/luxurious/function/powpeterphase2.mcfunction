tag @s add powp2p2

execute as @e[tag=powp] run item replace entity @s weapon.mainhand with netherite_axe

tag @s add powpeterdown
execute at @e[tag=powp] run tellraw @a[distance=..128] [{"text":"<powpeter1> ","color":"green"},{"text":"YOU'LL PAY FOR THAT","color":"white"}]
execute at @e[tag=powp] run playsound minecraft:entity.villager.hurt voice @a[distance=..128] ~ ~ ~ 250 0.9 1
execute at @e[tag=powpdeath] run playsound minecraft:entity.wither.break_block voice @a[distance=..128] ~ ~ ~ 160 1.25 1

execute at @s run particle block{block_state:{Name:nether_wart_block}} ~ ~1 ~ 0.1 0.1 0.1 1 100 force
data merge entity @s {Invulnerable:1b}
data merge entity @s {NoAI:1b}
effect give @s instant_health 1 5 true
effect give @s slowness infinite 255 true
effect give @s weakness infinite 255 true

execute if score world LuxBackups matches 0 as @e[tag=powp] at @s run function luxurious:powpeterreinforcement