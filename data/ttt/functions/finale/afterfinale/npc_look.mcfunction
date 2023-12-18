#tp @s ~ ~ ~ facing entity 00000001-0000-0000-0000-000000000000 eyes
execute if entity @s[tag=shadow] run function ttt:finale/npc_look_shadow
execute unless entity @s[tag=dontrotate] run function ttt:update_head_pose