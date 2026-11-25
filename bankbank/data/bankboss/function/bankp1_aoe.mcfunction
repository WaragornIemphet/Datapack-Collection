scoreboard players add world BankSkill 1
execute at @e[tag=bank,limit=1] run particle minecraft:explosion_emitter ^ ^ ^ 0 0 0 1 3 force
execute at @e[tag=bank,limit=1] run particle minecraft:glow_squid_ink ^ ^1 ^ 10 10 10 0 300 force
execute at @e[tag=bank,limit=1] run playsound item.trident.thunder voice @a[distance=..100] ^ ^ ^ 150 1.5 1
execute at @e[tag=bank,limit=1] as @a[distance=..32] run damage @s 22 player_explosion by @e[tag=bank,limit=1]
execute at @e[tag=bank,limit=1] run tellraw @a[distance=..32] [{"text":"<Bank_2013>","color":"green"},{"text":" Has no one taught you about personal space?","color":"white"}]
execute at @e[tag=bank,limit=1] run playsound ui.button.click voice @a[distance=..128] ^ ^ ^ 150 1 1
