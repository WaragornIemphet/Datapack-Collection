

function akasword:knifestep
execute if entity @s run function akasword:knifestep
execute if entity @s run function akasword:knifestep
execute if entity @s run function akasword:knifestep

scoreboard players add @s knife_life 1
execute if score @s knife_life matches 60.. run kill @s

