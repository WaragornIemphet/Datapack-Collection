execute as @e[tag=break_target] at @s run particle sweep_attack ^ ^1 ^ 0.2 1 0.2 0.1 15 force
execute as @e[tag=break_target,type=!item] at @s run damage @s 15 player_attack by @a[tag=wongkura_singular,limit=1]
schedule function akasword:wongblock4 1s
