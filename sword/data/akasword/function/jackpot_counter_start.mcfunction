item replace entity @s weapon.mainhand with carrot_on_a_stick[custom_name=[{"text":"Jackpot Hour","italic":false,"color":"green"}],lore=[["",{"text":"I JUST HIT THE ","italic":false,"color":"gray"},{"text":"JACKPOT","italic":false,"color":"green"},{"text":" AY AYA YA YAY AAE AE AYE","italic":false,"color":"gray"}],"",["",{"text":"Reserved Ball ","italic":false,"color":"gold"},{"text":"[ RMB ]","italic":false,"color":"yellow"}],["",{"text":"Shutter Doors ","italic":false,"color":"gold"},{"text":"[ F ]","italic":false,"color":"yellow"}],["",{"text":"Counter","italic":false,"color":"gold"},{"text":" [ Sneak ]","italic":false,"color":"yellow"}]],enchantment_glint_override=false,enchantments={knockback:4},unbreakable={},item_model="syn:jackpothour",custom_data={jackpot:1},tooltip_display={hidden_components:[enchantments]}]
item replace entity @s weapon.offhand with iron_nautilus_armor[item_model="syn:shutterdoor",custom_data={shut:1}]

scoreboard players set @s akasword_cnt_active 40

# 2. Set Cooldown (8 Seconds = 160 Ticks)
scoreboard players set @s akasword_cnt_cd 350

# 3. Visuals (Shield Up)
execute at @s run playsound minecraft:item.shield.block voice @a[distance=..60] ~ ~ ~ 100 0.5
execute at @s run playsound minecraft:block.respawn_anchor.charge voice @a[distance=..60] ~ ~ ~ 100 2

# 4. Reset Detection Immediate
scoreboard players set @s akasword_take_dmg 0
scoreboard players set @s akasword_res_dmg 0
scoreboard players set @s akasword_abs_dmg 0
