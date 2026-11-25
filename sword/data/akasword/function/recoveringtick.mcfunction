execute as @a if items entity @s weapon.mainhand *[minecraft:custom_data~{recover:1}] run function akasword:recovering_display
execute as @a if items entity @s weapon.offhand *[minecraft:custom_data~{recover:1}] run function akasword:recovering_display
execute as @a[scores={akasword_slot_cd=1..}] run scoreboard players remove @s akasword_slot_cd 1

execute as @a[tag=akasword_rolling,scores={akasword_roll_timer=1..}] run scoreboard players remove @s akasword_roll_timer 1

execute as @a[tag=akasword_rolling,scores={akasword_roll_timer=1}] run function akasword:slot_roll

execute as @a[tag=!akasword_rolling,scores={akasword_slot_cd=0}] if items entity @s weapon.offhand *[minecraft:custom_data~{recover:1}] run function akasword:slot_pay_start
