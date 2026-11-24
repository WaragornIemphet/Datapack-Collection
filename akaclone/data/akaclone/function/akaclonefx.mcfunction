effect give @e[tag=akaclone2] minecraft:invisibility infinite 1 true

execute at @e[tag=akaclone] run particle minecraft:large_smoke ~ ~1 ~ 0.0 0.0 0.0 0.001 5 force
tp @e[tag=akaclone] @e[tag=akaclone2,limit=1]
execute at @e[tag=akaclone2,limit=1] run bossbar set minecraft:akaclone players @a[distance=..128]

tp @e[tag=kra] @e[tag=kra2,limit=1]
tp @e[tag=tan] @e[tag=tan2,limit=1]
effect give @e[tag=kra2] invisibility infinite 1 true
effect give @e[tag=tan2] invisibility infinite 1 true
