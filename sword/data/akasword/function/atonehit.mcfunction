data modify entity @s HurtTime set value 0s
tag @p[tag=lightbane] add lb_skill_dmg
scoreboard players set #lb_paid_proc lb_math 1
function akasword:atonetrigger
scoreboard players set #lb_paid_proc lb_math 0
tag @p[tag=lightbane] remove lb_skill_dmg