execute as @a[scores={healstaff_cd=1..}] run scoreboard players remove @s healstaff_cd 1

execute as @a[scores={healstaff_cd=0, used_healstaff=0}] at @s run function akasword:notify_ready

execute as @a[scores={used_healstaff=1..}] if items entity @s weapon.mainhand *[custom_data~{syn_staff:true}] at @s run function akasword:attempt_cast

execute as @a[scores={used_healstaff=1..}] run scoreboard players set @s used_healstaff 0
