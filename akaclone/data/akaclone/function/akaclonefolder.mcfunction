execute at @e[tag=akaclone2] as @e[tag=akaclone2] store result score @s Akaclone run data get entity @s Health
function akaclone:akaclonefx

execute as @e[tag=akaclone,tag=!akaclonedead] if entity @s[tag=akaclone,tag=!akaclonedead] unless entity @e[tag=akaclone2,limit=1] run function akaclone:akaclonedeath

execute as @e[tag=east] at @s run tp @s ^0.5 ^ ^
execute as @e[tag=west] at @s run tp @s ^-0.5 ^ ^

execute as @e[tag=akafire] at @s as @e[distance=..0.75,type=!armor_stand, type=!item, type=!item_frame, type=!vex, type=!mannequin] run damage @s 7 minecraft:magic by @e[tag=akaclone2, limit=1]
execute at @e[tag=east] run particle dust{color:[0.52,0.0,0.0],scale:2} ~ ~ ~ 0.0 0.0 0.0 0.0001 1
execute at @e[tag=west] run particle dust{color:[1.0,1.0,1.0],scale:2} ~ ~ ~ 0.0 0.0 0.0 0.0001 1


##########
execute as @e[tag=akafire] at @s run scoreboard players add @s AkafireLife 1
execute as @e[tag=akafire,scores={AkafireLife=80..}] at @s if score @s AkafireLife matches 80.. run kill @s
##########

execute at @e[tag=akaclone2] as @e[tag=akaclone2,tag=!p2akaclone,tag=!akaclp2,scores={Akaclone=250..300}] run function akaclone:akaclonephase2
execute at @e[tag=akaclone2] as @e[tag=akaclone2,tag=!akaclonedes,scores={Akaclone=..200}] run function akaclone:akaclonedesperate


execute at @e[tag=tan] if entity @a[distance=..64] run scoreboard players add world TancloneSkill 1

execute at @e[tag=tan2] if score world TancloneSkill matches 300 run function akaclone:gordlayslash
execute at @e[tag=tan2] if score world TancloneSkill matches 330 run function akaclone:gordlayslash
execute at @e[tag=tan2] if score world TancloneSkill matches 360 run function akaclone:gordlayslash
execute at @e[tag=tan2] if score world TancloneSkill matches 390 run function akaclone:gordlayslash
execute at @e[tag=tan2] if score world TancloneSkill matches 420 run function akaclone:gordlayslash
execute at @e[tag=tan2] if score world TancloneSkill matches 500 run function akaclone:gordlayslash
execute at @e[tag=tan2] if score world TancloneSkill matches 501.. run scoreboard players set world TancloneSkill 0

execute at @e[tag=kra] if entity @a[distance=..64] run scoreboard players add world WongcloneSkill 1

execute at @e[tag=kra2] if entity @p[distance=..3] if score world WongcloneSkill matches 120.. run function akaclone:kraaoe
execute at @e[tag=kra2] if score world WongcloneSkill matches 300 run function akaclone:kratp

execute at @e[tag=akaclone,tag=!akacloneram] if entity @a[distance=..64] run scoreboard players add world AkacloneSkill 1

execute at @e[tag=akaclone2] if score world AkacloneSkill matches 400 run function akaclone:sacsummon
execute at @e[tag=akaclone2,tag=akaclonedes] if score world AkacloneSkill matches 440 run function akaclone:akacloneram
execute at @e[tag=akaclone2] if score world AkacloneSkill matches 600 run tag @a[sort=nearest,limit=1,gamemode=!spectator,gamemode=!creative] add akatarget
execute at @e[tag=akaclone2] if score world AkacloneSkill matches 600 run function akaclone:akacloneskill

execute if score world AkacloneSkill matches 850 run function akaclone:akaclonetp

execute if score world AkacloneSkill matches 851.. run scoreboard players set world AkacloneSkill 0

execute at @e[tag=p2akaclone,limit=1] as @e[tag=p2akaclone,limit=1] run data merge entity @s {Invulnerable:1b}
execute at @e[tag=p2akaclone2,limit=1] as @e[tag=p2akaclone2,limit=1] run effect give @s glowing 1 1 true

execute as @e[tag=kra] if entity @s[tag=kra] unless entity @e[tag=kra2,limit=1] run function akaclone:kradead
execute as @e[tag=tan] if entity @s[tag=tan] unless entity @e[tag=tan2,limit=1] run function akaclone:atandead
execute if score world AkacloneProgress matches 2 run function akaclone:akainterphase

execute as @e[tag=akacloneram] at @s run tp @s ^ ^ ^1
execute at @e[tag=akacloneram] as @a[distance=..1.5] run damage @s 14 magic by @e[tag=akacloneram,limit=1]

execute as @e[tag=slashfly] at @s run tp @s ^ ^ ^1.4
execute as @e[tag=slashfly] at @s if entity @e[tag=tan2,limit=1,distance=50..] run kill @s
execute as @e[tag=slashfly] at @s if entity @p[distance=..2,tag=!tanimp] run function akaclone:gordlayimpact
execute as @e[tag=slashfly] at @s run playsound entity.player.attack.sweep voice @a[distance=..50] ~ ~ ~ 100 1 1
execute as @e[tag=slashfly] at @s run particle sweep_attack ^ ^1 ^ 0.1 0.0 0.0 0.001 3 force
execute as @e[tag=slashfly] at @s run particle glow_squid_ink ^ ^1 ^ 0.5 0.5 0.5 0.001 1 force

execute as @e[tag=sui] at @s run function akaclone:suivex
execute as @e[tag=akaclonedes] at @s run function akaclone:akacloneramtick