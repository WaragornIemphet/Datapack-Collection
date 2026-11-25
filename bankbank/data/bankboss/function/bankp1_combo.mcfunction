scoreboard players add world BankSkill 1
execute at @e[tag=bank] run effect give @a[distance=..100] blindness 1 1 true
execute as @e[tag=bank2p2,limit=1] at @s run effect give @s weakness 2 255 true
execute as @e[tag=bank2p2,limit=1] at @p[sort=random,tag=bankfighter] run tp @s ^ ^1 ^1 facing entity @p
execute at @e[tag=bank2,limit=1] as @a[tag=bankfighter,limit=1,sort=nearest] run damage @s 18 player_attack by @e[tag=bank,limit=1]
execute at @e[tag=bank,limit=1] run particle block{block_state:{Name:nether_wart_block}} ~ ~1 ~ 0 0 0 1 50 force
execute at @e[tag=bank,limit=1] run particle sweep_attack ^ ^1 ^1 0.5 1 0.5 0 25 force
execute at @e[tag=bank,limit=1] run playsound entity.player.attack.sweep voice @a[distance=..100] ^ ^ ^ 200 1 1
