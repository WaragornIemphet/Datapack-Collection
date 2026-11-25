
execute as @a[scores={akasword_cd=..-1}] run scoreboard players set @s akasword_cd 0
execute unless score @p akasword_cd matches -2147483648..2147483647 run scoreboard players set @a akasword_cd 0

execute as @a[scores={akasword_cd=1..}] run scoreboard players remove @s akasword_cd 1
execute as @a[scores={akasword_blockbreak_cd=1..}] run scoreboard players remove @s akasword_blockbreak_cd 1
execute as @a[scores={akasword_counter_timer=1..}] run scoreboard players remove @s akasword_counter_timer 1



execute as @a[scores={akasword_blockbreak_cd=0},predicate=akasword:is_sneaking] if items entity @s weapon.mainhand *[minecraft:custom_data~{wongspoon:1}] run function akasword:wongblock

execute as @a[scores={akasword_cd=0},tag=!akasword_counter_active,tag=!akasword_counter_success] if items entity @s weapon.offhand *[minecraft:custom_data~{wongspoon:1}] run function akasword:wongkura_counter

execute as @a[tag=akasword_counter_active] if items entity @s weapon.offhand *[minecraft:custom_data~{wongspoon:1}] run function akasword:wongkura_force_cd

execute as @a[tag=akasword_counter_success] if items entity @s weapon.offhand *[minecraft:custom_data~{wongspoon:1}] run function akasword:wongkura_tp



execute as @a[tag=akasword_counter_active,scores={akasword_dmg_taken=1..}] run function akasword:wonkura_countersuccess
execute as @a[tag=akasword_counter_active,scores={akasword_dmg_resisted=1..}] run function akasword:wonkura_countersuccess
execute as @a[tag=akasword_counter_active,scores={akasword_dmg_absorbed=1..}] run function akasword:wonkura_countersuccess

execute as @a[tag=akasword_counter_active,scores={akasword_counter_timer=0}] run function akasword:wongkura_timeoutguard

execute as @a[tag=akasword_counter_active,scores={akasword_counter_timer=0}] run tag @s remove akasword_counter_active
execute as @a[tag=akasword_counter_success,scores={akasword_counter_timer=0}] run function akasword:wonkura_countertimeout



execute as @a if items entity @s weapon.mainhand *[minecraft:custom_data~{wongspoon:1}] run function akasword:wongkura_action

execute as @a[tag=wongkura_singular] if items entity @s weapon.offhand *[minecraft:custom_data~{wongspoon:1}] run function akasword:wongkura_action

execute as @a[tag=!wongkura_singular] at @s if items entity @s container.* *[custom_data~{wongspoon:1}] run clear @s[tag=!wongkura_singular] *[custom_data~{wongspoon:1}]
scoreboard players enable @a[tag=wongkura_singular] wong
execute as @a[scores={wong=1..}] run give @s netherite_shovel[custom_name=[{"text":"Wongkura's Spoon","italic":false,"color":"#f41a1a"}],lore=[[{"text":"The metal bends unnaturally under its own power,","italic":false,"color":"gray"}],[{"text":"crackling with fractured enchantments that refuse to","italic":false,"color":"gray"}],[{"text":"stabilize. ","italic":false,"color":"gray"}],[{"text":"Few can wield it safely. Fewer survive its awakening.","italic":false,"color":"gray"}]],enchantment_glint_override=false,enchantments={efficiency:10,knockback:1},attribute_modifiers=[{type:attack_damage,amount:15,slot:mainhand,operation:add_value,id:"1778928391670"}],unbreakable={},item_model="syn:redspoon",custom_data={wongspoon:1},tooltip_display={hidden_components:[enchantments]}]
execute as @a[scores={wong=1..}] run stopsound @s voice minecraft:music_disc.kongkura_phase2
execute as @a[scores={wong=1..}] run playsound minecraft:music_disc.wongkuramotif voice @a[distance=..60,tag=!wongkura_singular] ~ ~ ~ 150 1 1
execute as @a[scores={wong=1..}] run playsound minecraft:music_disc.kongkura_phase2 voice @s ~ ~ ~ 150 1 1
scoreboard players set @a[scores={wong=1..}] wong 0

