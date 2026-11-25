scoreboard players enable @a[tag=false,limit=1] false

execute as @a[tag=false,scores={false=1..},limit=1] run function akaclone:deceiver/give

execute as @a[tag=!false] at @s if items entity @s container.* *[custom_data~{deceiver:1}] run clear @s[tag=!false] *[custom_data~{deceiver:1}]

scoreboard players remove @a[scores={disruptwin=1..}] disruptwin 1

execute as @a[tag=false,scores={disruptwin=0,disruptuse=1..2}] run scoreboard players set @s disruptcd 100
execute as @a[tag=false,scores={disruptwin=0,disruptuse=1..2}] run scoreboard players set @s disruptuse 0

execute as @e[tag=false] at @s if items entity @s weapon.mainhand *[custom_data~{deceiver:1}] run function akaclone:deceiver/ui



scoreboard players set @a[scores={false=1..},limit=1] false 0

scoreboard players remove @a[scores={disruptcd=1..}] disruptcd 1

execute as @a[tag=false,scores={disruptcd=0},predicate=akaclone:is_sneaking] if items entity @s weapon.mainhand *[custom_data~{deceiver:1}] at @s run function akaclone:deceiver/disrupt

execute as @e[tag=falsesuf] at @s run function akaclone:deceiver/sufmikaze


scoreboard players remove @a[scores={firecd=1..}] firecd 1

execute as @a[tag=false,scores={deceiverclick=1..,firecd=0}] if items entity @s weapon.mainhand *[custom_data~{deceiver:1}] at @s run function akaclone:deceiver/akafire

scoreboard players set @a[scores={deceiverclick=1..}] deceiverclick 0

execute as @e[type=armor_stand,tag=akafireproj] at @s run function akaclone:deceiver/akafiretick


scoreboard players remove @a[scores={ramactive=1..}] ramactive 1
execute at @e[tag=false,scores={ramactive=1..}] as @e[distance=..1.5,type=!armor_stand,type=!item,type=!experience_orb,type=!item_frame,type=!glow_item_frame,type=!marker,type=!interaction,tag=!false,tag=!falsesuf] run damage @s 15 magic by @a[tag=false,limit=1]
execute as @a[scores={ramactive=1..},tag=false] at @s run tp @s ^ ^ ^1
execute as @a[scores={ramactive=1..},tag=false] at @s run effect give @s slow_falling 1 1 true
execute as @a[scores={ramactive=1..},tag=false] at @s run effect give @s resistance 1 4 true

execute as @a[scores={ramactive=1..}] at @s run particle dust{color:[1.0,0.0,0.0],scale:3} ^ ^1 ^ 0.1 0.2 0.1 0 25
execute as @a[scores={ramactive=1..}] at @s run playsound block.fire.extinguish voice @a[distance=..60] ^ ^ ^ 300 1.5 1



scoreboard players remove @a[scores={flamecd=1..}] flamecd 1

execute as @e[tag=akaflame] at @s run scoreboard players add @s akafireduration 1
execute as @e[tag=akaflame] at @s as @e[distance=..1.3,type=!armor_stand, type=!item, type=!item_frame, type=!mannequin, tag=!false] run damage @s 20 minecraft:magic by @a[tag=false,limit=1]
execute at @e[tag=akaflame] run particle dust{color:[1.0,0.0,0.0],scale:3} ~ ~ ~ 0.0 0.0 0.0 0 1
execute as @e[tag=deast] at @s run tp @s ^0.8 ^ ^
execute as @e[tag=dwest] at @s run tp @s ^-0.8 ^ ^
execute as @e[tag=dnorth] at @s run tp @s ^ ^ ^0.8
execute as @e[tag=dsouth] at @s run tp @s ^ ^ ^-0.8
execute as @e[tag=akaflame] at @s if score @s akafireduration matches 70.. run kill @s

execute at @e[tag=akaflametarget] run particle dust{color:[1.0,0.0,0.0],scale:1.0} ~ ~1 ~ 0.4 0.8 0.4 0 3 normal
execute as @e[tag=akaflametarget] at @s run effect give @s slowness 1 2 true
execute as @e[tag=akaflametarget] at @s run effect give @s wither 1 1 true
execute as @e[tag=akaflametarget] at @s run scoreboard players add @s akafirehitduration 1
execute as @e[tag=akaflametarget] at @s if score @s akafirehitduration matches 300.. run function akaclone:deceiver/akafireclear


execute as @a[tag=false,scores={flamecd=..0}] if items entity @s weapon.offhand *[custom_data~{deceiver:1}] at @s run function akaclone:deceiver/fskill

