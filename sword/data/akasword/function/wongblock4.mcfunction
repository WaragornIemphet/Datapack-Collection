# --- YOUR CODE: STAGE 2 ---
execute at @e[tag=wongkura_singular,limit=1] run particle poof ~ ~ ~ 0 0 0 0.4 100 force
execute as @e[tag=wongkura_singular,limit=1] at @s run item replace entity @s weapon.mainhand with iron_axe[custom_name=[{"text":"Wongkura's Spoon","italic":false,"color":"#f41a1a"}],lore=[[{"text":"The metal bends unnaturally under its own power,","italic":false,"color":"gray"}],[{"text":"crackling with fractured enchantments that refuse to","italic":false,"color":"gray"}],[{"text":"stabilize. ","italic":false,"color":"gray"}],[{"text":"Few can wield it safely. Fewer survive its awakening.","italic":false,"color":"gray"}]],enchantment_glint_override=false,enchantments={efficiency:10,knockback:1},attribute_modifiers=[{type:attack_damage,amount:15,slot:mainhand,operation:add_value,id:"1778928391670"}],unbreakable={},item_model="syn:redspoon",custom_data={wongspoon:1},tooltip_display={hidden_components:[enchantments]}]

# Deal heavy damage (15)
execute as @e[tag=break_target] at @s run damage @s 15 minecraft:player_attack by @a[tag=wongkura_singular,limit=1]

# Clear the axe to make room for the shovel
execute as @e[tag=wongkura_singular,limit=1] at @s run item replace entity @s weapon.mainhand with air

# Clean up the target tag
execute as @e[tag=break_target] at @s run tag @s remove break_target

# Restore the original item via /give (As requested)
give @a[tag=wongkura_singular] netherite_shovel[custom_name=[{"text":"Wongkura's Spoon","italic":false,"color":"#f41a1a"}],lore=[[{"text":"The metal bends unnaturally under its own power,","italic":false,"color":"gray"}],[{"text":"crackling with fractured enchantments that refuse to","italic":false,"color":"gray"}],[{"text":"stabilize. ","italic":false,"color":"gray"}],[{"text":"Few can wield it safely. Fewer survive its awakening.","italic":false,"color":"gray"}]],enchantment_glint_override=false,enchantments={efficiency:10,knockback:1},attribute_modifiers=[{type:attack_damage,amount:15,slot:mainhand,operation:add_value,id:"1778928391670"}],unbreakable={},item_model="syn:redspoon",custom_data={wongspoon:1},tooltip_display={hidden_components:[enchantments]}]



