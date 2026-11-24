tag @s add falseakadeathphase

execute at @s run playsound minecraft:entity.wither.spawn voice @a[distance=..128] ~ ~ ~ 100 0.5 1

scoreboard players set world FalseAkaDeath 1
scoreboard players set world FalseAkacloneProgress 0


stopsound @a voice music_disc.falseaka
schedule clear akaclone:falseakaloop
execute at @e[tag=falseakadeathphase] as @p[distance=..128] run execute at @s run playsound music_disc.falseakalast voice @a[distance=..128] ~ ~ ~ 150 1 1