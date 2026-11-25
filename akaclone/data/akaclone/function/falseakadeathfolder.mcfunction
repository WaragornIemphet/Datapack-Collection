scoreboard players add world FalseakaDeathTimer 1

execute if score world FalseakaDeathTimer matches 2600.. run function akaclone:doppelgangersdeath

execute if score world FalseakaDeathTimer matches 1000 run title @a[distance=..128] actionbar {"text":"SURVIVE.","color":"dark_red","bold":true}
execute if score world FalseakaDeathTimer matches 2000 run title @a[distance=..128] actionbar {"text":"ALMOST OVER...","color":"red","bold":true}

execute if score world FalseakaDeathTimer matches 480 at @e[tag=falseaka] as @a[distance=..128] run title @s title {"text":"IT'S NOT OVER YET","color":"dark_red","bold":true}
execute if score world FalseakaDeathTimer matches 480 at @e[tag=falseaka] run playsound minecraft:entity.wither.spawn voice @a[distance=..128] ~ ~ ~ 100 0.5 1

execute as @e[tag=fakafire] at @s as @e[distance=..1.3,type=!armor_stand, type=!item, type=!item_frame, type=!vex, type=!mannequin, tag=!falseaka2, tag=!falseaka] run damage @s 10.5 minecraft:magic by @e[tag=falseaka,limit=1]
execute at @e[tag=fakafire] run particle dust{color:[1.0,0.0,0.0],scale:3} ~ ~ ~ 0.0 0.0 0.0 0 1

execute as @e[tag=feast] at @s run tp @s ^0.8 ^ ^
execute as @e[tag=fwest] at @s run tp @s ^-0.8 ^ ^
execute as @e[tag=fnorth] at @s run tp @s ^ ^ ^0.8
execute as @e[tag=fsouth] at @s run tp @s ^ ^ ^-0.8

execute as @e[tag=fakafire] at @s run scoreboard players add @s FalseAkafireLife 1
execute as @e[tag=fakafire,scores={FalseAkafireLife=70..}] at @s run kill @s

execute if score world FalseakaDeathTimer matches 480.. at @e[tag=falseaka,tag=!usingfakaflame] if entity @a[distance=..64] run scoreboard players add world FalseakaSpamSkill 1

execute at @e[tag=falseaka] if score world FalseakaSpamSkill matches 1 run tag @a[distance=..32,gamemode=!spectator,gamemode=!creative] add fakatarget
execute as @e[tag=falseaka] at @s if score world FalseakaSpamSkill matches 1 run function akaclone:falseakasufsummon

execute at @e[tag=falseaka] if score world FalseakaSpamSkill matches 40 run function akaclone:falseakaskill

execute at @e[tag=falseaka] if score world FalseakaSpamSkill matches 60 run function akaclone:falseakarandomtp
execute at @e[tag=falseaka] if score world FalseakaSpamSkill matches 80 run function akaclone:falseakarandomtp
execute at @e[tag=falseaka] if score world FalseakaSpamSkill matches 100 run function akaclone:falseakarandomtp
execute at @e[tag=falseaka] if score world FalseakaSpamSkill matches 120 run function akaclone:falseakarandomtp
execute at @e[tag=falseaka] if score world FalseakaSpamSkill matches 140 run function akaclone:falseakarandomtp
execute at @e[tag=falseaka] if score world FalseakaSpamSkill matches 160 run function akaclone:falseakarandomtp

execute if score world FalseakaSpamSkill matches 180.. run scoreboard players set world FalseakaSpamSkill 0
