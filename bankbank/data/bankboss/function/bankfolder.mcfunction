execute as @e[tag=bank2] at @s store result score @s Bank run data get entity @s Health
execute store result bossbar bank value run data get entity @e[tag=bank2,limit=1] Health
execute at @e[tag=bank2] run tp @e[tag=bank] @e[tag=bank2,limit=1]

execute at @e[tag=bank,limit=1] run effect give @e[tag=bank2] minecraft:invisibility infinite 1 true
execute at @e[tag=bank,tag=!bank2p4,limit=1] run effect give @e[tag=bank2] minecraft:resistance infinite 2 true
execute at @e[tag=bank,tag=!bank2p3,tag=!bank2p4,limit=1] run effect give @e[tag=bank2] minecraft:speed infinite 1 true
execute at @e[tag=bank,limit=1] as @e[tag=bankshotslayer] run tp @s ~ ~3.5 ~
execute as @e[tag=bankshotslayer] at @s run effect give @s fire_resistance infinite 1 true
execute as @e[tag=bankshotslayer] at @s run effect give @s invisibility infinite 1 true
execute as @e[tag=bankshotslayer] at @s run effect give @s speed infinite 4 true

execute as @e[tag=bank2] at @s run effect give @s fire_resistance infinite 1 true

execute as @e[tag=bankfly] at @s run tp @s ^ ^ ^1
execute as @e[tag=bankfly] at @s if entity @e[tag=bank2,limit=1,distance=50..] run kill @s
execute as @e[tag=bankfly] at @s if entity @p[distance=..2,tag=!bankimp] run function bankboss:bankthrowimpact
execute as @e[tag=bankfly] at @s run playsound entity.horse.breathe voice @a[distance=..50] ~ ~ ~ 100 1 1
execute as @e[tag=bankfly] at @s run particle poof ^ ^1 ^ 0.0 0.3 0.0 0.001 3 force

execute at @e[tag=bank2] as @e[tag=bank2,tag=!bank2p2,scores={Bank=..650}] run function bankboss:bankphase1
execute at @e[tag=bank2] as @e[tag=bank2,tag=!bank2p3,scores={Bank=..400}] run function bankboss:bankphase2
execute at @e[tag=bank2] as @e[tag=bank2,tag=!bank2p4,scores={Bank=..200}] run function bankboss:bankphase3

execute as @e[tag=bankstand1,limit=1] at @e[tag=bankstand1,limit=1] run tp @s ^ ^ ^ facing entity @p[tag=bank_cutscene]
execute as @e[tag=bankstand,limit=1] at @e[tag=bankstand1,limit=1] run tp @s ^ ^0.05 ^ facing entity @p[tag=bank_cutscene]
execute as @e[tag=bankanim] at @e[tag=bankstand] run tp @s ^ ^50 ^

execute as @a[tag=banktarget,limit=1] at @e[tag=bankface,limit=1] run tp @s ^ ^ ^ facing entity @e[tag=bankstand,limit=1]

execute as @e[tag=bank2p2,limit=1,tag=!bank2p4] at @s if entity @a[distance=..15] run scoreboard players add world BankSkill 1
execute if score world BankSkill matches 80 run function bankboss:bankp1_aoe
execute if score world BankSkill matches 165 run function bankboss:bankp1_combo
execute if score world BankSkill matches 175 run function bankboss:bankp1_combo
execute if score world BankSkill matches 185 run function bankboss:bankp1_combo
execute if score world BankSkill matches 195 run function bankboss:bankp1_combo
execute if score world BankSkill matches 205 run function bankboss:bankp1_combo
execute if score world BankSkill matches 215 run function bankboss:bankp1_combo
execute if score world BankSkill matches 225 run function bankboss:bankp1_combo
execute if score world BankSkill matches 235 run function bankboss:bankp1_combo
execute if score world BankSkill matches 245 run function bankboss:bankp1_combo
execute if score world BankSkill matches 255 run function bankboss:bankp1_combo
execute if score world BankSkill matches 350 run function bankboss:bankundead1
execute if score world BankSkill matches 400 run function bankboss:bankshotslayer
execute unless entity @e[tag=bank2p3] if score world BankSkill matches 400.. run scoreboard players set world BankSkill 0
execute if score world BankSkill matches 500 run function bankboss:bankgrimace
execute if score world BankSkill matches 580 run function bankboss:banktp
execute if score world BankSkill matches 700 run function bankboss:bankp1_combo
execute if score world BankSkill matches 715 run function bankboss:bankp1_combo
execute if score world BankSkill matches 725 run function bankboss:bankp1_combo
execute if score world BankSkill matches 735 run function bankboss:bankp1_combo
execute if score world BankSkill matches 780 run function bankboss:banktp
execute if score world BankSkill matches 800 run function bankboss:bankp1_aoe
execute if score world BankSkill matches 910 run function bankboss:bankthrow
execute if score world BankSkill matches 920 run function bankboss:bankthrow
execute if score world BankSkill matches 930 run function bankboss:bankthrow
execute if score world BankSkill matches 940 run function bankboss:bankthrow
execute if score world BankSkill matches 960 run function bankboss:bankp2
execute if score world BankSkill matches 1100.. run scoreboard players set world BankSkill 360
execute at @e[tag=bankfighter] if entity @e[tag=bank2p3] run time add 2.5s
execute at @e[tag=bankfighter] if entity @e[tag=bank2p4] run time add 12s

execute at @e[tag=bank2p3,limit=1] run effect give @e[tag=bank2p3] minecraft:speed infinite 3 true
execute at @e[tag=bank2p3,limit=1] run effect give @e[tag=bank2p3] minecraft:resistance infinite 3 true

execute as @e[tag=bank2p4,limit=1,tag=!bank2p4skill] at @s if entity @a[distance=..25] run scoreboard players add world BankSkill2 1
execute if score world BankSkill2 matches 100 run function bankboss:bankthrow
execute if score world BankSkill2 matches 115 run function bankboss:bankthrow
execute if score world BankSkill2 matches 130 run function bankboss:bankthrow
execute if score world BankSkill2 matches 145 run function bankboss:bankthrow
execute if score world BankSkill2 matches 160 run function bankboss:bankthrow
execute if score world BankSkill2 matches 175 run function bankboss:bankthrow
execute if score world BankSkill2 matches 250 run function bankboss:bankmih
execute if score world BankSkill2 matches 350.. run scoreboard players set world BankSkill2 0

execute as @e[tag=bank,tag=!bankdeath] if entity @s[tag=bank,tag=!bankdeath] unless entity @e[tag=bank2,limit=1] run function bankboss:bankdeathtext

execute at @e[tag=bank2p4skill,limit=1] run particle end_rod ^ ^1 ^ 0.0 0.0 0.0 0.1 10 force
execute as @e[tag=bank2p4skill,limit=1] at @s run tp @s ^ ^ ^5
execute as @e[tag=bank2p4skill,limit=1] at @s facing entity @a[tag=bankfighter,limit=1,sort=nearest] eyes run tp @s ^ ^ ^ ~ ~ 

execute at @e[tag=bank2p4skill,limit=1] as @a[tag=bankfighter,distance=..2] run damage @s 10 player_attack by @e[tag=bank,limit=1]

execute if entity @e[tag=bankfried] as @e[tag=bankfried,limit=1] at @s run function bankboss:bankfried