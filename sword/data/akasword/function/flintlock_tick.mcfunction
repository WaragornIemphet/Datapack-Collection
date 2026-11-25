execute as @a[scores={use_pistol=1..}] if items entity @s weapon.mainhand *[custom_data~{flintlock:1}] at @s unless score @s pistol_stage matches 0.. run scoreboard players set @s pistol_stage 0

execute as @a[scores={use_pistol=1..}] if items entity @s weapon.mainhand *[custom_data~{flintlock:1}] at @s unless score @s pistol_timer matches 0.. run scoreboard players set @s pistol_timer 0


execute as @a[scores={use_pistol=1..}] if items entity @s weapon.mainhand *[custom_data~{flintlock:1}] at @s run function akasword:ftry_fire

execute as @a[scores={pistol_timer=0,pistol_stage=..2},predicate=akasword:is_sneaking] if items entity @s weapon.mainhand *[custom_data~{flintlock:1}] at @s run function akasword:freload_start

execute as @a[scores={pistol_timer=1..}] unless items entity @s weapon.mainhand *[custom_data~{flintlock:1}] at @s run scoreboard players set @s pistol_timer 0

execute as @a[scores={pistol_timer=1..}] at @s run function akasword:freload_tick

scoreboard players set @a use_pistol 0

execute as @e[type=armor_stand, tag=akasword.fbullet] at @s run function akasword:fbullet_tick
