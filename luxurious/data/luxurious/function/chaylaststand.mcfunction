tag @s add chay_laststand

summon vindicator ~ ~ ~ {CustomName:[{"text":"0_Chay_0","color":"aqua"}],CustomNameVisible:1b,Health:100,PersistenceRequired:1b,Silent:1b,Tags:[chay2,chayls,chayp2],attributes:[{id:armor,base:20f},{id:attack_damage,base:7f},{id:scale,base:1.25f},{id:follow_range,base:40f},{id:max_health,base:100f}]}

execute at @e[tag=chay] run tellraw @a[distance=..128] [{"text":"<0_Chay_0> ","color":"aqua"},{"text":"BUT I REFUSE!","color":"white"}]
execute at @s run item replace entity @s weapon.offhand with air
execute at @s run item replace entity @s weapon.mainhand with iron_hoe[custom_name=[{"text":"Sanguine Scythe","italic":false,"color":"dark_red"}],lore=[[{"text":"Born from countless pain and suffering while also","italic":false,"color":"red"}],[{"text":"inflicting them to whoever's at the receiving end of this blade.","italic":false,"color":"red"}],[{"text":"You may fall, but it refused to.","bold":true,"italic":false,"color":"red"}],""],attribute_modifiers=[{type:attack_damage,amount:6,slot:mainhand,operation:add_value,id:"1790159709986"},{type:attack_speed,amount:-1.2,slot:mainhand,operation:add_value,id:"1790159709987"}],death_protection={death_effects:[{type:apply_effects,probability:1,effects:[{id:regeneration,duration:40,amplifier:255,ShowParticles:0b,ShowIcon:0b},{id:saturation,duration:40,amplifier:255,ShowParticles:0b,ShowIcon:0b}]}]},unbreakable={},item_model="syn:sanguinescythe",custom_data={sanguinescythe:1}]
execute at @s run playsound minecraft:entity.wither.spawn master @a[distance=..128] ~ ~ ~ 100 0.8 1
execute at @s run particle minecraft:flame ~ ~1 ~ 0.5 1 0.5 0.2 500 force
execute at @s run particle minecraft:lava ~ ~1 ~ 0.5 1 0.5 0.1 50 force

