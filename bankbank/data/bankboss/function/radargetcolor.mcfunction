scoreboard players set #flags radarcalc 0

execute if data storage bankboss:ram {currentrange:8} at @s run function bankboss:radar/check8
execute if data storage bankboss:ram {currentrange:16} at @s run function bankboss:radar/check16
execute if data storage bankboss:ram {currentrange:32} at @s run function bankboss:radar/check32
execute if data storage bankboss:ram {currentrange:64} at @s run function bankboss:radar/check64
execute if data storage bankboss:ram {currentrange:128} at @s run function bankboss:radar/check128

data modify storage bankboss:ram currentcolor set value "green"

execute if score #flags radarcalc matches 1 run data modify storage bankboss:ram currentcolor set value "light_purple"
execute if score #flags radarcalc matches 2 run data modify storage bankboss:ram currentcolor set value "gold"
execute if score #flags radarcalc matches 4 run data modify storage bankboss:ram currentcolor set value "red"

execute if score #flags radarcalc matches 3 run data modify storage bankboss:ram currentcolor set value "gray"
execute if score #flags radarcalc matches 5.. run data modify storage bankboss:ram currentcolor set value "gray"
