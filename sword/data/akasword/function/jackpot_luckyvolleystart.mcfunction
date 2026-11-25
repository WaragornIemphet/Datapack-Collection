
execute if score @s luckyvolley_cd matches 1.. run return 0

scoreboard players set @s luckyvolley_cd 300

scoreboard players set @a[tag=luckybastard_jackpot] jp_time 45
tag @s add luckyvolley
execute at @s run summon armor_stand ^ ^1 ^2 {Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,Invulnerable:1b,NoGravity:1b,Silent:1b,Tags:["luckyvolleyrange"]}
