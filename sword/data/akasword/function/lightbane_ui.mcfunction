scoreboard players set #20 lb_math 20

scoreboard players operation #tc_sec lb_math = @s lb_tc_cd
scoreboard players add #tc_sec lb_math 19
scoreboard players operation #tc_sec lb_math /= #20 lb_math

scoreboard players operation #rop_sec lb_math = @s lb_rop_cd
scoreboard players add #rop_sec lb_math 19
scoreboard players operation #rop_sec lb_math /= #20 lb_math

scoreboard players operation #ft_sec lb_math = @s lb_ft_cd
scoreboard players add #ft_sec lb_math 19
scoreboard players operation #ft_sec lb_math /= #20 lb_math

scoreboard players operation #at_sec lb_math = @s lb_atone_cd
scoreboard players add #at_sec lb_math 19
scoreboard players operation #at_sec lb_math /= #20 lb_math

scoreboard players operation #ss_sec lb_math = @s lb_ss_cd
scoreboard players add #ss_sec lb_math 19
scoreboard players operation #ss_sec lb_math /= #20 lb_math

scoreboard players operation #hd_sec lb_math = @s lb_hd_cd
scoreboard players add #hd_sec lb_math 19
scoreboard players operation #hd_sec lb_math /= #20 lb_math

scoreboard players operation #ss_act_sec lb_math = @s lb_ss_active
scoreboard players add #ss_act_sec lb_math 19
scoreboard players operation #ss_act_sec lb_math /= #20 lb_math

execute if score @s lb_mode matches 0 unless score @s lb_tc_cd matches 1.. run data modify storage akasword:ui shift_skill set value [{"text":"Trinity Cleave : ","color":"yellow"},{"text":"READY","color":"green","bold":true}]
execute if score @s lb_mode matches 0 if score @s lb_tc_cd matches 1.. run data modify storage akasword:ui shift_skill set value [{"text":"Trinity Cleave : ","color":"yellow"},{"score":{"name":"#tc_sec","objective":"lb_math"},"color":"red"},{"text":"s","color":"red"}]

execute if score @s lb_mode matches 0 unless score @s lb_rop_cd matches 1.. run data modify storage akasword:ui f_skill set value [{"text":"Rite of Passage : ","color":"yellow"},{"text":"READY","color":"green","bold":true}]
execute if score @s lb_mode matches 0 if score @s lb_rop_cd matches 1.. run data modify storage akasword:ui f_skill set value [{"text":"Rite of Passage : ","color":"yellow"},{"score":{"name":"#rop_sec","objective":"lb_math"},"color":"red"},{"text":"s","color":"red"}]

execute if score @s lb_mode matches 1 unless score @s lb_ft_cd matches 1.. if score @s ult_charge matches 20.. run data modify storage akasword:ui shift_skill set value [{"text":"Final Testament : ","color":"gold","bold":true},{"text":"READY","color":"green","bold":true}]
execute if score @s lb_mode matches 1 unless score @s lb_ft_cd matches 1.. if score @s ult_charge matches ..19 run data modify storage akasword:ui shift_skill set value [{"text":"Final Testament : ","color":"gold"},{"text":"20","color":"red"}]
execute if score @s lb_mode matches 1 if score @s lb_ft_cd matches 1.. run data modify storage akasword:ui shift_skill set value [{"text":"Final Testament : ","color":"gold"},{"score":{"name":"#ft_sec","objective":"lb_math"},"color":"red"},{"text":"s","color":"red"}]

execute if score @s lb_mode matches 1 unless score @s lb_atone_cd matches 1.. if score @s ult_charge matches 10.. run data modify storage akasword:ui f_skill set value [{"text":"Atonement : ","color":"gold","bold":true},{"text":"READY","color":"green","bold":true}]
execute if score @s lb_mode matches 1 unless score @s lb_atone_cd matches 1.. if score @s ult_charge matches ..9 run data modify storage akasword:ui f_skill set value [{"text":"Atonement : ","color":"gold"},{"text":"10","color":"red"}]
execute if score @s lb_mode matches 1 if score @s lb_atone_cd matches 1.. run data modify storage akasword:ui f_skill set value [{"text":"Atonement : ","color":"gold"},{"score":{"name":"#at_sec","objective":"lb_math"},"color":"red"},{"text":"s","color":"red"}]

execute if score @s lb_mode matches 2 unless score @s lb_ss_active matches 1.. unless score @s lb_ss_cd matches 1.. if score @s ult_charge matches 50.. run data modify storage akasword:ui shift_skill set value [{"text":"Sacred Sanctuary : ","color":"gold","bold":true},{"text":"READY","color":"green","bold":true}]
execute if score @s lb_mode matches 2 unless score @s lb_ss_active matches 1.. unless score @s lb_ss_cd matches 1.. if score @s ult_charge matches ..49 run data modify storage akasword:ui shift_skill set value [{"text":"Sacred Sanctuary : ","color":"gold"},{"text":"50","color":"dark_red"}]
execute if score @s lb_mode matches 2 unless score @s lb_ss_active matches 1.. if score @s lb_ss_cd matches 1.. run data modify storage akasword:ui shift_skill set value [{"text":"Sacred Sanctuary : ","color":"gold"},{"score":{"name":"#ss_sec","objective":"lb_math"},"color":"red"},{"text":"s","color":"red"}]

execute if score @s lb_mode matches 2 unless score @s lb_ss_active matches 1.. unless score @s lb_hd_cd matches 1.. if score @s ult_charge matches 50.. run data modify storage akasword:ui f_skill set value [{"text":"Heaven's Decree : ","color":"gold","bold":true},{"text":"READY","color":"green","bold":true}]
execute if score @s lb_mode matches 2 unless score @s lb_ss_active matches 1.. unless score @s lb_hd_cd matches 1.. if score @s ult_charge matches ..49 run data modify storage akasword:ui f_skill set value [{"text":"Heaven's Decree : ","color":"gold"},{"text":"50","color":"dark_red"}]
execute if score @s lb_mode matches 2 unless score @s lb_ss_active matches 1.. if score @s lb_hd_cd matches 1.. run data modify storage akasword:ui f_skill set value [{"text":"Heaven's Decree : ","color":"gold"},{"score":{"name":"#hd_sec","objective":"lb_math"},"color":"red"},{"text":"s","color":"red"}]

execute if score @s lb_mode matches 2 if score @s lb_ss_active matches 1.. run data modify storage akasword:ui shift_skill set value [{"text":"Sacred Sanctuary : ","color":"gold","bold":true},{"text":"ACTIVE (","color":"aqua","bold":true},{"score":{"name":"#ss_act_sec","objective":"lb_math"},"color":"aqua","bold":true},{"text":"s)","color":"aqua","bold":true}]
execute if score @s lb_mode matches 2 if score @s lb_ss_active matches 1.. run data modify storage akasword:ui f_skill set value [{"text":"Heaven's Decree : ","color":"dark_gray"},{"text":"LOCKED","color":"dark_red","bold":true}]

title @s actionbar ["",{"text":"[ ","color":"dark_gray"},{"score":{"name":"@s","objective":"ult_charge"},"color":"gold","bold":true},{"text":"/50","color":"yellow"},{"text":" | ","color":"dark_gray"},{"nbt":"shift_skill","storage":"akasword:ui","interpret":true},{"text":" | ","color":"dark_gray"},{"nbt":"f_skill","storage":"akasword:ui","interpret":true},{"text":" ]","color":"dark_gray"}]
