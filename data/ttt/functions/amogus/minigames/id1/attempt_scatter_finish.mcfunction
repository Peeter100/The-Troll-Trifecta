tp @e[tag=trollgeai] @e[tag=tptrollge,limit=1]
data merge entity @e[tag=trollgefeet,limit=1] {HandItems:[{},{}],ArmorItems:[{},{},{},{}]}
data merge entity @e[tag=trollgearm,limit=1] {HandItems:[{},{}],ArmorItems:[{},{},{},{}]}
tag @e[tag=trollgeai] remove camping
effect clear @e[tag=trollgeai] slowness
tag @e[tag=trollgeent] remove campingpick
tag @e[tag=trollgeent] remove loud
tag @e[tag=trollgeent,limit=1,sort=random] add loud