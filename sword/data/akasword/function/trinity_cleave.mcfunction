# 1. Start 12s (240t) Cooldown & 21-tick sequence timer (Slash 2 at 11, Slash 3 at 1)
scoreboard players set @s lb_tc_cd 240
scoreboard players set @s lb_tc_timer 21

# 2. Slash 1 Audio (Base Pitch) & Execute Cleave
playsound minecraft:entity.player.attack.sweep voice @a[distance=..32] ~ ~ ~ 1.2 1.0
playsound minecraft:block.amethyst_block.chime voice @a[distance=..32] ~ ~ ~ 1.0 1.0
function akasword:trinity_cleave_slash