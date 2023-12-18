execute as @e[tag=p100target] positioned ~ 15 ~ unless entity @s[distance=..5] facing entity @s eyes rotated ~ 0 positioned ^ ^ ^.2 positioned ~ 19 ~ run tp 00000004-0000-0000-0000-000000000000 ~ ~ ~
execute if entity @s[tag=faceplayer] at @s anchored eyes run tp @s ~ ~ ~ facing entity @p[tag=bossplayer] eyes
function ttt:update_head_pose