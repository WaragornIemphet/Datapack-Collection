execute if score @s luckyrush_cd matches 1.. run return 0

scoreboard players set @s luckyrush_cd 400

item replace entity @s weapon.mainhand with carrot_on_a_stick[custom_name=[{"text":"JACKPOT HOUR","italic":false,"color":"green","bold":true}],lore=[["",{"text":"I JUST HIT THE ","italic":false,"color":"gray"},{"text":"JACKPOT","italic":false,"color":"green"},{"text":" AY AYA YA YAY AAE AE AYE","italic":false,"color":"gray"}],"",["",{"text":"Energy Surge ","italic":false,"color":"gold"},{"text":"[ LMB ]","italic":false,"color":"yellow"}],["",{"text":"Lucky Volley ","italic":false,"color":"gold"},{"text":"[ RMB ]","italic":false,"color":"yellow"}],["",{"text":"Lucky Rushdown ","italic":false,"color":"gold"},{"text":"[ F ]","italic":false,"color":"yellow"}],["",{"text":"Overwhelming Luck ","italic":false,"color":"gold"},{"text":" [ Sneak ]","italic":false,"color":"yellow"}]],enchantment_glint_override=false,enchantments={knockback:4},unbreakable={},item_model="syn:jackpothour",custom_data={jackpot:2},tooltip_display={hidden_components:[enchantments]}]
item replace entity @s weapon.offhand with air
effect give @s minecraft:speed 4 5 true

tag @s add skill_charging
tag @s add luckyrushdown
