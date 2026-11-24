# 1. COOLDOWN MANAGEMENT
# Decrement the timer if it is active (1 or higher)
execute as @a[scores={healstaff_cd=1..}] run scoreboard players remove @s healstaff_cd 1

# 2. RECHARGE NOTIFICATION
# Trigger ONLY when it hits exactly 0.
# We check 'used_healstaff=0' to ensure we don't play this sound if they are currently clicking.
execute as @a[scores={healstaff_cd=0, used_healstaff=0}] at @s run function akasword:notify_ready

# 3. CASTING LOGIC (With Security Check)
# We strictly check if the item has the custom data '{syn_staff:true}'
execute as @a[scores={used_healstaff=1..}] if items entity @s weapon.mainhand *[custom_data~{syn_staff:true}] at @s run function akasword:attempt_cast

# 4. GLOBAL RESET (Critical)
# Reset the click score for EVERYONE (Valid staff users and Vanilla users).
# If you don't do this, the code runs 20 times a second forever.
execute as @a[scores={used_healstaff=1..}] run scoreboard players set @s used_healstaff 0
