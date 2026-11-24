# 1. Swap Light Bane (currently offhand) and mainhand item back using a 0-tick temporary carrier
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",count:1},Tags:["lb_swap_temp"]}
item replace entity @e[type=minecraft:item,tag=lb_swap_temp,limit=1] contents from entity @s weapon.offhand
item replace entity @s weapon.offhand from entity @s weapon.mainhand
item replace entity @s weapon.mainhand from entity @e[type=minecraft:item,tag=lb_swap_temp,limit=1] contents
kill @e[type=minecraft:item,tag=lb_swap_temp]

# ==========================================
#  MODE 0 (SAVIOR) — RITE OF PASSAGE (5s CD / 0 Charges)
# ==========================================
execute if score @s lb_mode matches 0 if score @s lb_rop_cd matches 1.. run playsound minecraft:block.note_block.bass voice @s ~ ~ ~ 1.0 0.6
execute if score @s lb_mode matches 0 unless score @s lb_rop_cd matches 1.. run return run function akasword:rite_of_passage

# ==========================================
#  MODE 1 (PURIFICATION) — ATONEMENT (15s CD / 10 Charges)
# ==========================================
execute if score @s lb_mode matches 1 if score @s lb_atone_cd matches 1.. run playsound minecraft:block.note_block.bass voice @s ~ ~ ~ 1.0 0.6
execute if score @s lb_mode matches 1 unless score @s lb_atone_cd matches 1.. if score @s ult_charge matches ..9 run playsound minecraft:block.note_block.bass voice @s ~ ~ ~ 1.0 0.6
execute if score @s lb_mode matches 1 unless score @s lb_atone_cd matches 1.. if score @s ult_charge matches 10.. run return run function akasword:atonement

# ==========================================
#  MODE 2 (ERADICATION) — HEAVEN'S DECREE (60s CD / 50 Charges / Blocked During Sacred Sanctuary!)
# ==========================================
execute if score @s lb_mode matches 2 if score @s lb_ss_active matches 1.. run playsound minecraft:block.note_block.bass voice @s ~ ~ ~ 1.0 0.5
execute if score @s lb_mode matches 2 if score @s lb_ss_active matches 1.. run return 0

execute if score @s lb_mode matches 2 if score @s lb_hd_cd matches 1.. run playsound minecraft:block.note_block.bass voice @s ~ ~ ~ 1.0 0.6
execute if score @s lb_mode matches 2 unless score @s lb_hd_cd matches 1.. if score @s ult_charge matches ..49 run playsound minecraft:block.note_block.bass voice @s ~ ~ ~ 1.0 0.6
execute if score @s lb_mode matches 2 unless score @s lb_hd_cd matches 1.. if score @s ult_charge matches 50.. run return run function akasword:heavens_decree