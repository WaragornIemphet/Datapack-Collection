
# --- YOUR CODE: STAGE 1 ---
execute at @a[tag=wongkura_singular,limit=1] run particle poof ~ ~ ~ 0 0 0 0.4 100 force
execute as @a[tag=wongkura_singular,limit=1] at @s run item replace entity @s weapon.offhand with iron_axe[custom_name=[{"text":"Wongkura's Spoon","italic":false,"color":"#f41a1a"}],lore=[[{"text":"The metal bends unnaturally under its own power,","italic":false,"color":"gray"}],[{"text":"crackling with fractured enchantments that refuse to","italic":false,"color":"gray"}],[{"text":"stabilize. ","italic":false,"color":"gray"}],[{"text":"Few can wield it safely. Fewer survive its awakening.","italic":false,"color":"gray"}]],enchantment_glint_override=false,enchantments={efficiency:10,knockback:1},attribute_modifiers=[{type:attack_damage,amount:15,slot:mainhand,operation:add_value,id:"1778928391670"}],unbreakable={},item_model="syn:redspoon",custom_data={wongspoon:1},tooltip_display={hidden_components:[enchantments]}]
execute as @e[tag=break_target,type=!item] at @s run damage @s 10 minecraft:player_attack by @a[tag=wongkura_singular,limit=1]
execute as @a[tag=wongkura_singular,limit=1] at @s run item replace entity @s weapon.offhand with air

# 4. Schedule the finisher (1 second later)
schedule function akasword:wongblock2 1s
