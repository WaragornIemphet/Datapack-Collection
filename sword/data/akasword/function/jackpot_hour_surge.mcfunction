
execute as @s run damage @s 25 player_attack
execute as @s at @s run summon breeze_wind_charge ~ ~1 ~ {Motion:[0d,-1d,0]}
execute as @s at @s run summon breeze_wind_charge ~ ~1 ~ {Motion:[0d,-1d,0]}
execute as @s at @s run summon breeze_wind_charge ~ ~1 ~ {Motion:[0d,-1d,0]}
execute at @s run particle end_rod ^ ^1.2 ^ 0 0 0 0 30 force
scoreboard players set @s jackpotsurge 0
scoreboard players set @a[tag=luckybastard_jackpot] jackpotsurge_follow 35
