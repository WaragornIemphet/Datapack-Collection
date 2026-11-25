execute at @e[tag=falseaka2] as @e[tag=falseaka2] store result score @s Falseaka run data get entity @s Health
function akaclone:falseakafx
execute store result bossbar falseaka value run data get entity @e[tag=falseaka2,limit=1] Health


execute as @e[tag=fakafire] at @s as @e[distance=..1.3,type=!armor_stand, type=!item, type=!item_frame, type=!vex, type=!mannequin, tag=!falseaka2] run damage @s 10.5 minecraft:magic by @e[tag=falseaka2,limit=1]
execute at @e[tag=fakafire] run particle dust{color:[1.0,0.0,0.0],scale:3} ~ ~ ~ 0.0 0.0 0.0 0 1
execute as @e[tag=feast] at @s run tp @s ^0.8 ^ ^
execute as @e[tag=fwest] at @s run tp @s ^-0.8 ^ ^
execute as @e[tag=fnorth] at @s run tp @s ^ ^ ^0.8
execute as @e[tag=fsouth] at @s run tp @s ^ ^ ^-0.8

execute as @e[tag=fakafire] at @s run scoreboard players add @s FalseAkafireLife 1
execute as @e[tag=fakafire,scores={FalseAkafireLife=70..}] at @s if score @s FalseAkafireLife matches 70.. run kill @s

execute at @e[tag=falseaka,tag=!falseakaram,tag=!usingfakaflame,tag=!falseakadeathphase] if entity @a[distance=..64] run scoreboard players add world FalseakaSkill 1
execute at @e[tag=falseaka2] if score world FalseakaSkill matches 100 run function akaclone:falseakasufsummon

execute at @e[tag=falseaka2] if score world FalseakaSkill matches 400 run function akaclone:falseakaram


execute as @e[tag=falseakaram] at @s run tp @s ^ ^ ^1
execute at @e[tag=falseakaram] as @a[distance=..1.5] run damage @s 15.5 magic by @e[tag=falseakaram,limit=1]

execute at @e[tag=falseaka2] if score world FalseakaSkill matches 830 run tag @a[distance=..32,gamemode=!spectator,gamemode=!creative] add fakatarget
execute as @e[tag=falseaka2] at @s if score world FalseakaSkill matches 830 run function akaclone:falseakaskill

execute as @e[tag=falseaka2] at @s if score world FalseakaSkill matches 840 run function akaclone:falseakatp

execute if score world FalseakaSkill matches 850.. run scoreboard players set world FalseakaSkill 0

function akaclone:falseakaramtick

execute at @e[tag=falseaka2] as @e[tag=falseaka2,tag=!p2falseaka2,tag=!fakaclp2,scores={Falseaka=151..250}] run function akaclone:falseakaphase2

execute at @e[tag=p2falseaka2,limit=1] as @e[tag=p2falseaka2,limit=1] run data merge entity @s {Invulnerable:1b}
execute at @e[tag=p2falseaka,limit=1] as @e[tag=p2falseaka,limit=1] run effect give @s glowing 1 1 true

execute at @e[tag=p2falseaka] if entity @a[distance=..64] run scoreboard players add world GuncloneSkill 1
execute at @e[tag=gunclone2] if score world GuncloneSkill matches 100 run function akaclone:gunclonetp
execute at @e[tag=gunclone2] if score world GuncloneSkill matches 200.. run scoreboard players set world GuncloneSkill 0

execute at @e[tag=p2falseaka] if entity @a[distance=..64] run scoreboard players add world TancloneSkill 1
execute at @e[tag=tan2] if score world TancloneSkill matches 300 run function akaclone:gordlayslash
execute at @e[tag=tan2] if score world TancloneSkill matches 330 run function akaclone:gordlayslash
execute at @e[tag=tan2] if score world TancloneSkill matches 360 run function akaclone:gordlayslash
execute at @e[tag=tan2] if score world TancloneSkill matches 390 run function akaclone:gordlayslash
execute at @e[tag=tan2] if score world TancloneSkill matches 420 run function akaclone:gordlayslash
execute at @e[tag=tan2] if score world TancloneSkill matches 480 run function akaclone:tantp
execute at @e[tag=tan2] if score world TancloneSkill matches 500 run function akaclone:gordlayslash
execute at @e[tag=tan2] if score world TancloneSkill matches 501.. run scoreboard players set world TancloneSkill 0
execute as @e[tag=slashfly] at @s run tp @s ^ ^ ^1.4
execute as @e[tag=slashfly] at @s if entity @e[tag=tan2,limit=1,distance=50..] run kill @s
execute as @e[tag=slashfly] at @s if entity @p[distance=..2,tag=!tanimp] run function akaclone:gordlayimpact
execute as @e[tag=slashfly] at @s run playsound entity.player.attack.sweep voice @a[distance=..50] ~ ~ ~ 100 1 1
execute as @e[tag=slashfly] at @s run particle sweep_attack ^ ^1 ^ 0.1 0.0 0.0 0.001 3 force
execute as @e[tag=slashfly] at @s run particle glow_squid_ink ^ ^1 ^ 0.5 0.5 0.5 0.001 1 force

execute at @e[tag=p2falseaka] if entity @a[distance=..64] run scoreboard players add world WongcloneSkill 1
execute at @e[tag=kra2] if entity @p[distance=..3] if score world WongcloneSkill matches 120.. run function akaclone:kraaoe
execute at @e[tag=kra2] if score world WongcloneSkill matches 300 run function akaclone:kratp

execute at @e[tag=p2falseaka] if entity @a[distance=..64] run scoreboard players add world LutancecloneSkill 1
execute at @e[tag=lutanclone2] if score world LutancecloneSkill matches 400 run function akaclone:lutanceclonetp
execute at @e[tag=lutanclone2] if score world LutancecloneSkill matches 450 run function akaclone:lutcloneskill
execute at @e[tag=lutanclone2] if score world LutancecloneSkill matches 1300 run function akaclone:lutcloneskill
execute at @e[tag=lutanclone2] if score world LutancecloneSkill matches 1400.. run scoreboard players set world LutancecloneSkill 0

execute at @e[tag=p2falseaka] if entity @a[distance=..64] run scoreboard players add world LisliecloneSkill 1
execute at @e[tag=lislieclone2] if score world LisliecloneSkill matches 100 run function akaclone:lislieclonetp
execute at @e[tag=lislieclone2] if score world LisliecloneSkill matches 160 run function akaclone:lisliecloneskill
execute at @e[tag=lislieclone2] if score world LisliecloneSkill matches 200.. run scoreboard players set world LisliecloneSkill 0

execute as @e[tag=kra] if entity @s[tag=kra] unless entity @e[tag=kra2,limit=1] run function akaclone:kradead
execute as @e[tag=tan] if entity @s[tag=tan] unless entity @e[tag=tan2,limit=1] run function akaclone:atandead
execute as @e[tag=lutanclone] if entity @s[tag=lutanclone] unless entity @e[tag=lutanclone2,limit=1] run function akaclone:lutanceclonedeath
execute as @e[tag=gunclone] if entity @s[tag=gunclone] unless entity @e[tag=gunclone2,limit=1] run function akaclone:gunclonedeath
execute as @e[tag=lisclone] if entity @s[tag=lisclone] unless entity @e[tag=lislieclone2,limit=1] run function akaclone:lislieclonedeath
execute if score world FalseakaProgress matches 5 run function akaclone:falseakainterphase

execute at @e[tag=falseaka2] as @e[tag=falseaka2,tag=fakaclp2,tag=!falseakadeathphase,tag=!p3falseaka2,scores={Falseaka=..150}] run function akaclone:falseakaphase3

execute as @e[tag=falseakaclone] if entity @s[tag=falseakaclone] unless entity @e[tag=falseakaclone2,limit=1] run function akaclone:falseclonedeath1
execute as @e[tag=falseakaclone1] if entity @s[tag=falseakaclone1] unless entity @e[tag=falseakaclone21,limit=1] run function akaclone:falseclonedeath2

execute at @e[tag=falseaka,tag=!falseakadeathphase] as @e[tag=falseaka,tag=!falseakadeathphase] if score world FalseAkacloneProgress matches 2 unless entity @e[tag=falseaka2,limit=1] run function akaclone:falseakadeathphase
