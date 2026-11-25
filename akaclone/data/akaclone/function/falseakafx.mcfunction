effect give @e[tag=falseaka2] minecraft:invisibility infinite 1 true
effect give @e[tag=falseaka2] minecraft:speed infinite 3 true

tp @e[tag=falseaka] @e[tag=falseaka2,limit=1]
tp @e[tag=lisclone] @e[tag=lislieclone2,limit=1]
tp @e[tag=kra] @e[tag=kra2,limit=1]
tp @e[tag=tan] @e[tag=tan2,limit=1]
tp @e[tag=lutanclone] @e[tag=lutanclone2,limit=1]
tp @e[tag=gunclone] @e[tag=gunclone2,limit=1]
execute at @e[tag=falseaka2,limit=1] run bossbar set minecraft:falseaka players @a[distance=..128]

effect give @e[tag=gunclone2] minecraft:invisibility infinite 1 true
effect give @e[tag=lutanclone2] minecraft:invisibility infinite 1 true
effect give @e[tag=lislieclone2] minecraft:invisibility infinite 1 true
effect give @e[tag=tan2] minecraft:invisibility infinite 1 true
effect give @e[tag=kra2] minecraft:invisibility infinite 1 true

tp @e[tag=falseakaclone] @e[tag=falseakaclone2,limit=1]
tp @e[tag=falseakaclone1] @e[tag=falseakaclone21,limit=1]
effect give @e[tag=falseakaclone2] invisibility infinite 1 true
effect give @e[tag=falseakaclone21] invisibility infinite 1 true
execute at @e[tag=falseakaclone] run particle minecraft:large_smoke ~ ~1 ~ 0.0 0.0 0.0 0.001 5 force
execute at @e[tag=falseakaclone1] run particle minecraft:large_smoke ~ ~1 ~ 0.0 0.0 0.0 0.001 5 force
