item replace entity @s weapon.mainhand with netherite_shovel[custom_name=[{"text":"Wongkura's Spoon","italic":false,"color":"#f41a1a"}],lore=[[{"text":"The metal bends unnaturally under its own power,","italic":false,"color":"gray"}],[{"text":"crackling with fractured enchantments that refuse to","italic":false,"color":"gray"}],[{"text":"stabilize. ","italic":false,"color":"gray"}],[{"text":"Few can wield it safely. Fewer survive its awakening.","italic":false,"color":"gray"}]],enchantment_glint_override=false,enchantments={efficiency:10,knockback:1},attribute_modifiers=[{type:attack_damage,amount:15,slot:mainhand,operation:add_value,id:"1778928391670"}],unbreakable={},item_model="syn:redspoon",custom_data={wongspoon:1},tooltip_display={hidden_components:[enchantments]}]
item replace entity @s weapon.offhand with minecraft:air

tag @s add akasword_counter_active

scoreboard players set @s akasword_counter_timer 60

scoreboard players set @s akasword_dmg_taken 0
scoreboard players set @s akasword_dmg_resisted 0
scoreboard players set @s akasword_dmg_absorbed 0

playsound minecraft:item.shield.block player @a[distance=..64] ~ ~ ~ 1 1.5

