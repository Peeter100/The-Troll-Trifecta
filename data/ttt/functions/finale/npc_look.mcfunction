#tp @s ~ ~ ~ facing entity @p eyes
execute if entity @s[tag=wgrp1] run function ttt:finale/npc_look_wgrp1
execute if entity @s[tag=wgrp2] run tp @s ~ ~ ~ facing entity @p[tag=wgrp2target] eyes
execute if entity @s[tag=wgrp3] run tp @s ~ ~ ~ facing entity @p[tag=wgrp3target] eyes
execute unless entity @s[tag=dontrotate] run function ttt:update_head_pose