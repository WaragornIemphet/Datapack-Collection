execute if score @s lb_tc_timer matches 11 run playsound minecraft:entity.player.attack.sweep voice @a[distance=..32] ~ ~ ~ 1.2 1.25
execute if score @s lb_tc_timer matches 11 run playsound minecraft:block.amethyst_block.chime voice @a[distance=..32] ~ ~ ~ 1.0 1.25
execute if score @s lb_tc_timer matches 11 run function akasword:trinity_cleave_slash

execute if score @s lb_tc_timer matches 1 run playsound minecraft:entity.player.attack.sweep voice @a[distance=..32] ~ ~ ~ 1.4 1.5
execute if score @s lb_tc_timer matches 1 run playsound minecraft:block.amethyst_block.chime voice @a[distance=..32] ~ ~ ~ 1.2 1.6
execute if score @s lb_tc_timer matches 1 run particle minecraft:end_rod ~ ~1 ~ 2.6 0.3 2.6 0.12 45 normal
execute if score @s lb_tc_timer matches 1 run function akasword:trinity_cleave_slash
