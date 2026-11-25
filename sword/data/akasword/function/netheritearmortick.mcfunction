execute as @a[scores={TookDamage=1..}] run function akasword:neth_armor_hurt
execute as @a[scores={TookDamage=1..}] run scoreboard players set @s TookDamage 0

execute as @a run tag @s remove base_netherite_set

execute as @a if items entity @s armor.head minecraft:netherite_helmet[!minecraft:custom_data] if items entity @s armor.chest minecraft:netherite_chestplate[!minecraft:custom_data] if items entity @s armor.legs minecraft:netherite_leggings[!minecraft:custom_data] if items entity @s armor.feet minecraft:netherite_boots[!minecraft:custom_data] run tag @s add base_netherite_set

execute as @a[scores={NethCooldown=1..}] run scoreboard players remove @s NethCooldown 1

execute as @a[scores={NethCooldown=1..}] run tag @s remove last_stand_ready

execute as @a[tag=base_netherite_set,scores={NethCooldown=0}] unless entity @s[tag=last_stand_ready] run tellraw @s {"text":"Last Stand is Ready !","color":"dark_red","bold":true}

execute as @a[tag=base_netherite_set,scores={NethCooldown=600}] unless entity @s[tag=last_stand_ready] run tellraw @s {"text":"Last Stand is 50% Ready !","color":"red","bold":true}

execute as @a[tag=base_netherite_set,scores={NethCooldown=0}] run tag @s add last_stand_ready
