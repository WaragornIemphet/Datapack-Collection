# Phase 1: If charging, constantly check for a target in front of the player
execute as @a[tag=skill_charging] at @s run function akasword:jackpot_chargedetect

# Phase 2: If currently dragging a target, handle the 5-second countdown
execute as @a[scores={drag_time=1..100}] at @s run function akasword:jackpot_chargeloop

