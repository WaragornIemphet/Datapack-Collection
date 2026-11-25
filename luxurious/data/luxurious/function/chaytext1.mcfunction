execute at @e[tag=chay_defeated] run tellraw @a[distance=..128] [{"text":"<0_Chay_0> ","color":"aqua"},{"text":"I REFUSE!","color":"white"}]
execute at @e[tag=chay_defeated] run playsound minecraft:ui.button.click master @a[distance=..128] ~ ~ ~ 100 1 1
schedule function luxurious:chaytext2 2s
