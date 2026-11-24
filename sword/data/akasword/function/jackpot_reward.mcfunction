# 1. REFRESH ALL COOLDOWNS
scoreboard players set @s akasword_jackpot_cd 0
scoreboard players set @s akasword_door_cd 0
scoreboard players set @s akasword_cnt_cd 0

execute at @s run stopsound @a voice minecraft:music_disc.gunbgm
tag @s add luckybastard_jackpot
execute as @s run scoreboard players set @a[tag=luckybastard_jackpot] jackpot_state_time 2680
clear @s *[custom_data~{jackpot:1}]
give @s carrot_on_a_stick[custom_name=[{"text":"JACKPOT HOUR","italic":false,"color":"green","bold":true}],lore=[["",{"text":"I JUST HIT THE ","italic":false,"color":"gray"},{"text":"JACKPOT","italic":false,"color":"green"},{"text":" AY AYA YA YAY AAE AE AYE","italic":false,"color":"gray"}],"",["",{"text":"Energy Surge ","italic":false,"color":"gold"},{"text":"[ LMB ]","italic":false,"color":"yellow"}],["",{"text":"Lucky Volley ","italic":false,"color":"gold"},{"text":"[ RMB ]","italic":false,"color":"yellow"}],["",{"text":"Lucky Rushdown ","italic":false,"color":"gold"},{"text":"[ F ]","italic":false,"color":"yellow"}],["",{"text":"Overwhelming Luck ","italic":false,"color":"gold"},{"text":" [ Sneak ]","italic":false,"color":"yellow"}]],enchantment_glint_override=false,enchantments={knockback:4},unbreakable={},item_model="syn:jackpothour",custom_data={jackpot:2},tooltip_display={hidden_components:[enchantments]}]
