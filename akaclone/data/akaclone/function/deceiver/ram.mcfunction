# 1. Set the F skill cooldown (10 seconds = 200 ticks)
scoreboard players set @s flamecd 360

# 2. Start the Ram duration timer (3 seconds = 60 ticks)
scoreboard players set @s ramactive 60

# 3. Play an activation sound (Dragon flap sounds like a heavy dash)
playsound block.fire.extinguish voice @a[distance=..60] ^ ^ ^ 300 1.5 1