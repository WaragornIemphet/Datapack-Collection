# [Existing Cooldown Decrement]
execute as @a if items entity @s weapon.mainhand *[minecraft:custom_data~{recover:1}] run function akasword:recovering_display
execute as @a if items entity @s weapon.offhand *[minecraft:custom_data~{recover:1}] run function akasword:recovering_display
execute as @a[scores={akasword_slot_cd=1..}] run scoreboard players remove @s akasword_slot_cd 1

# [NEW] Roll Animation Timer
# If player is rolling, count down the 7.2 seconds
execute as @a[tag=akasword_rolling,scores={akasword_roll_timer=1..}] run scoreboard players remove @s akasword_roll_timer 1

# [NEW] Trigger The Result
# When timer hits exactly 1, run the result function AS the player
execute as @a[tag=akasword_rolling,scores={akasword_roll_timer=1}] run function akasword:slot_roll

# [Existing Trigger Logic]
execute as @a[tag=!akasword_rolling,scores={akasword_slot_cd=0}] if items entity @s weapon.offhand *[minecraft:custom_data~{recover:1}] run function akasword:slot_pay_start
