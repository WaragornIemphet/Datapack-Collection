execute as @a[scores={use_musket=1..}] if items entity @s weapon.mainhand *[custom_data~{musket:1}] at @s unless score @s musket_stage matches 0.. run scoreboard players set @s musket_stage 0

execute as @a[scores={use_musket=1..}] if items entity @s weapon.mainhand *[custom_data~{musket:1}] at @s unless score @s musket_timer matches 0.. run scoreboard players set @s musket_timer 0


execute as @a[scores={use_musket=1..}] if items entity @s weapon.mainhand *[custom_data~{musket:1}] at @s run function akasword:try_fire

execute as @a[scores={musket_timer=0,musket_stage=..2},predicate=akasword:is_sneaking] if items entity @s weapon.mainhand *[custom_data~{musket:1}] at @s run function akasword:reload_start

execute as @a[scores={musket_timer=1..}] unless items entity @s weapon.mainhand *[custom_data~{musket:1}] at @s run scoreboard players set @s musket_timer 0

execute as @a[scores={musket_timer=1..}] at @s run function akasword:reload_tick

scoreboard players set @a use_musket 0

execute as @e[type=armor_stand, tag=akasword.bullet] at @s run function akasword:bullet_tick
