tag @a remove base_diamond_set

execute as @a if items entity @s armor.head minecraft:diamond_helmet[!minecraft:custom_data] if items entity @s armor.chest minecraft:diamond_chestplate[!minecraft:custom_data] if items entity @s armor.legs minecraft:diamond_leggings[!minecraft:custom_data] if items entity @s armor.feet minecraft:diamond_boots[!minecraft:custom_data] run tag @s add base_diamond_set


execute as @a[scores={DmgTaken=1..}] run scoreboard players set @s SetTimer 0
execute as @a[scores={DmgTaken=1..},tag=diamond_buff_active] run effect clear @s regeneration
execute as @a[scores={DmgTaken=1..}] run tag @s remove diamond_buff_active

execute as @a[tag=!base_diamond_set,scores={SetTimer=1..}] run scoreboard players set @s SetTimer 0
execute as @a[tag=!base_diamond_set,tag=diamond_buff_active] run effect clear @s regeneration
execute as @a[tag=!base_diamond_set] run tag @s remove diamond_buff_active


execute as @a[tag=base_diamond_set,tag=!diamond_buff_active] run scoreboard players add @s SetTimer 1

execute as @a[tag=base_diamond_set,tag=!diamond_buff_active,scores={SetTimer=240..}] at @s run particle dust{color:[0.2, 1.0, 1.0], scale:0.5} ~ ~1 ~ 0.4 0.4 0.4 0 1

execute as @a[scores={SetTimer=300..}] at @s run playsound minecraft:block.amethyst_block.chime voice @a[distance=..5] ~ ~ ~ 150 1.2
execute as @a[scores={SetTimer=300..}] at @s run particle end_rod ~ ~1 ~ 0.3 0.4 0.3 0.05 5
execute as @a[scores={SetTimer=300..}] run tag @s add diamond_buff_active
execute as @a[scores={SetTimer=300..}] run scoreboard players set @s SetTimer 0

execute as @a[tag=diamond_buff_active,tag=base_diamond_set] at @s run particle dust{color:[0.2, 1.0, 1.0], scale:0.6} ~ ~1 ~ 0.4 0.4 0.4 0 1

execute as @a[tag=diamond_buff_active,tag=base_diamond_set] run effect give @s regeneration 1 5 true


scoreboard players set @a DmgTaken 0
