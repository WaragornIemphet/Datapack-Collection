execute as @e[tag=smq2,scores={SmqtrSkillTimer=1..}] run scoreboard players remove @s SmqtrSkillTimer 1
execute as @e[tag=smq2,scores={SmqtrSkillTimer=0},tag=!smqtr_stunned,tag=!SmqtrCharging,tag=!smqtrdown] at @s run function luxurious:smqtrmacereset

execute as @e[tag=smq2,tag=smqtr_air_attack,scores={SmqtrSkillTimer=..120}] at @s unless block ~ ~-0.1 ~ #minecraft:replaceable run tag @s add smqtr_landed

execute as @e[tag=smq2,tag=smqtr_landed] at @s unless block ~ ~ ~ #minecraft:replaceable run tp @s ~ ~1 ~

execute as @e[tag=smq2,tag=smqtr_landed] at @s as @a[distance=..2] run scoreboard players set @s Blocks 0

execute as @e[tag=smq2,tag=smqtr_landed] at @s as @a[distance=..2] run damage @s 15 minecraft:mace_smash by @e[tag=smq2,distance=..0.1,limit=1]

execute as @e[tag=smq2,tag=smqtr_landed] at @s if entity @a[distance=..2,scores={Blocks=0}] run particle minecraft:explosion ~ ~ ~ 1 1 1 0.1 5
execute as @e[tag=smq2,tag=smqtr_landed] at @s if entity @a[distance=..2,scores={Blocks=0}] run playsound minecraft:item.mace.smash_ground master @a ~ ~ ~ 2 1
execute as @e[tag=smq2,tag=smqtr_landed] at @s if entity @a[distance=..2,scores={Blocks=0}] run function luxurious:smqtrmace
execute as @e[tag=smq2,tag=smqtr_landed] at @s if entity @a[distance=..2,scores={Blocks=0}] run tag @s remove smqtr_landed

execute as @e[tag=smq2,tag=smqtr_landed] at @s if entity @a[distance=..2,scores={Blocks=1..}] run playsound minecraft:block.anvil.place master @a ~ ~ ~ 1 1.5
execute as @e[tag=smq2,tag=smqtr_landed] at @s as @a[distance=..2,scores={Blocks=1..}] at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoBasePlate:1b,HandItems:[{id:"minecraft:netherite_axe",count:1},{}] ,Tags:["temp_shield_breaker"]}
execute as @e[type=armor_stand,tag=temp_shield_breaker] at @s as @a[distance=..2] run damage @s 0.1 minecraft:player_attack by @e[type=armor_stand,tag=temp_shield_breaker,limit=1]
kill @e[type=armor_stand,tag=temp_shield_breaker]
execute as @e[tag=smq2,tag=smqtr_landed] at @s if entity @a[distance=..2,scores={Blocks=1..}] run function luxurious:smqtrmacestun

execute as @e[tag=smq2,tag=smqtr_landed] at @s unless entity @a[distance=..2] run function luxurious:smqtrmacereset

execute as @e[tag=smq2,tag=smqtr_air_attack,scores={SmqtrSkillTimer=100}] at @s run function luxurious:spearlunge

execute as @e[tag=smq2,tag=smqtr_air_attack,scores={SmqtrSkillTimer=..120}] at @s run tp @s ~ ~ ~ facing entity @a[sort=nearest,limit=1] feet
execute as @e[tag=smq2,tag=smqtr_air_attack,scores={SmqtrSkillTimer=117..120}] at @s rotated ~ 0 run tp @s ^ ^-0.1 ^0.3
execute as @e[tag=smq2,tag=smqtr_air_attack,scores={SmqtrSkillTimer=113..116}] at @s rotated ~ 0 run tp @s ^ ^-0.3 ^0.3
execute as @e[tag=smq2,tag=smqtr_air_attack,scores={SmqtrSkillTimer=109..112}] at @s rotated ~ 0 run tp @s ^ ^-0.5 ^0.3
execute as @e[tag=smq2,tag=smqtr_air_attack,scores={SmqtrSkillTimer=105..108}] at @s rotated ~ 0 run tp @s ^ ^-0.7 ^0.3
execute as @e[tag=smq2,tag=smqtr_air_attack,scores={SmqtrSkillTimer=101..104}] at @s rotated ~ 0 run tp @s ^ ^-0.9 ^0.3
execute as @e[tag=smq2,tag=smqtr_air_attack,scores={SmqtrSkillTimer=..100}] at @s rotated ~ 0 run tp @s ^ ^-1.0 ^0.3

execute as @e[tag=smq2,tag=smqtr_stunned] run scoreboard players remove @s SmqtrStunTimer 1
execute as @e[tag=smq2,tag=smqtr_stunned] at @s run particle dust{color:[1.0, 0.8, 0.0], scale:1.0} ~ ~2 ~ 0.3 0.1 0.3 0 4
execute as @e[tag=smq2,tag=smqtr_stunned] at @s run particle end_rod ~ ~2 ~ 0.3 0 0.3 0 1
execute as @e[tag=smq2,tag=smqtr_stunned,scores={SmqtrStunTimer=..0},tag=!SmqtrCharging,tag=!smqtrdown] at @s run function luxurious:smqtrmacereset
