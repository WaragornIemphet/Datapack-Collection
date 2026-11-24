advancement revoke @s only akasword:vanadsword
tag @e[tag=current_weak] remove current_weak
tag @s add current_weaker
execute as @e[distance=..7,nbt={HurtTime:10s},tag=!current_weaker] at @s run function akasword:vanadiumswordeffect
tag @s remove current_weaker

