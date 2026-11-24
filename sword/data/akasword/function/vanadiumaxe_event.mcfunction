advancement revoke @s only akasword:vanadaxe
tag @e[tag=current_axe] remove current_axe
tag @s add current_axer
execute as @e[distance=..7,nbt={HurtTime:10s},tag=!current_axer,sort=nearest,limit=1] at @s run function akasword:vanadiumaxeeffect
tag @s remove current_axer

