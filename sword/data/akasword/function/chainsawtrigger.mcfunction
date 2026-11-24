advancement revoke @s only akasword:chainsawattack

execute if items entity @s weapon.mainhand *[custom_data~{chainsaw:1}] if score @s chain_cooldown matches 0 run function akasword:chainsawstartlink

