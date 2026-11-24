# Phase 1: 20-Sword Halo Barrage
execute if score @s atonestate matches 1 run return run function akasword:atonehover

# Phase 2: Sequential 64-Block Marking & Freeze (Cap 50)
execute if score @s atonestate matches 2 run return run function akasword:atonemarktick

# Phase 3: 0.5s Tension Hold -> Simultaneous Detonation
execute if score @s atonestate matches 3 run return run function akasword:atonephase3