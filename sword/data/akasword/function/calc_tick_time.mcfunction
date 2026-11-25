scoreboard players operation @s mih_math = @s mih_accel_stage
scoreboard players set #const 10 10
scoreboard players operation @s mih_math *= #const 10

execute store result storage akasword:macro time_add int 1 run scoreboard players get @s mih_math


scoreboard players operation @s mih_math = @s mih_accel_stage

scoreboard players set #const 5 5
scoreboard players operation @s mih_math *= #const 5

scoreboard players remove @s mih_math 1

scoreboard players set #max_byte 255 255
execute if score @s mih_math > #max_byte mih_math run scoreboard players set @s mih_math 255

execute store result storage akasword:macro speed_amp int 1 run scoreboard players get @s mih_math


function akasword:run_time_add with storage akasword:macro
