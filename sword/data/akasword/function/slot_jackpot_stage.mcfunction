title @s title {"text":"7 7 7","color":"green","bold":true}
playsound minecraft:ui.toast.challenge_complete player @a ~ ~ ~ 1 1
particle minecraft:firework ~ ~1 ~ 0.5 0.5 0.5 0.1 50

execute if score #lucky_flag akasword_global matches 0 run function akasword:reward_first

execute if score #lucky_flag akasword_global matches 1 run function akasword:reward_repeat
