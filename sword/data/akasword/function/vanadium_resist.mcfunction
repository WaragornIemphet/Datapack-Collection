item replace entity @s weapon.mainhand with iron_shovel[custom_name=[{"text":"Vanadium Spoon","italic":false}],lore=[[{"text":"You can dig and knock someone out","italic":false,"color":"blue"}],[{"text":"at the same time.","italic":false,"color":"blue"}]],attribute_modifiers=[{type:attack_damage,amount:6,slot:mainhand,operation:add_value,id:"1777105805690"}],item_model="syn:spoon",custom_data={vanad:1}] 1
item replace entity @s weapon.offhand with minecraft:air

effect give @s minecraft:resistance 3 255 true
effect give @s minecraft:slowness 3 4 true
effect give @s minecraft:regeneration 3 3 true
effect give @s minecraft:glowing 3 0 true

scoreboard players set @s vanadium_resist_cd 400

execute at @a[tag=wongkura_challenger,limit=1] run playsound minecraft:entity.iron_golem.repair voice @a[distance=..60] ~ ~ ~ 100 1
execute at @a[tag=wongkura_challenger,limit=1] run particle block{block_state:{Name:iron_block}} ^ ^1 ^ 0.5 0.5 0.5 1 30

