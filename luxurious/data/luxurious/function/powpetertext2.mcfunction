execute at @e[tag=powpdeath] run tellraw @a[distance=..128] [{"text":"<powpeter1> ","color":"green"},{"text":"YOUUUUUUU","color":"white"}]
execute at @e[tag=powpdeath] run particle block{block_state:{Name:nether_wart_block}} ~ ~1 ~ 0.1 0.1 0.1 1 100 force
execute at @e[tag=powpdeath] run playsound minecraft:entity.wither.break_block voice @a[distance=..128] ~ ~ ~ 160 1.25 1
schedule function luxurious:luxuriousdeath 3s