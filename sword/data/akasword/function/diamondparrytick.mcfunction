
execute as @a[scores={diamondcooldown=1..}] run scoreboard players remove @s diamondcooldown 1
execute as @a[scores={diamondstance=1..}] run scoreboard players remove @s diamondstance 1


execute as @a[predicate=akasword:is_sneaking] at @s if items entity @s weapon.mainhand *[custom_data~{realdiamondsword:1b}] if score @s diamondcooldown matches ..0 run function akasword:diamondparry