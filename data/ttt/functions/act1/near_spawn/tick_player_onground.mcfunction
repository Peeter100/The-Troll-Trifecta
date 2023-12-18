execute if block ~ ~-0.1 ~ spruce_planks run function ttt:act1/plank_poison
#execute if block ~ ~-0.1 ~0.3 spruce_planks run function ttt:act1/plank_poison
#execute if block ~ ~-0.1 ~-0.3 spruce_planks run function ttt:act1/plank_poison
execute if score @s z matches 54..56 if block ~ ~-0.1 ~ air unless block ~ 31 55 jungle_planks run function ttt:act1/plank_poison_strict_check
effect give @s[scores={y=40..},tag=!jbimmune] jump_boost 1 200 true
effect give @s[tag=!jbimmune,scores={x=-7..18,y=35..40,z=25..40}] jump_boost 1 200 true

execute if score @s y matches 33 if block ~ ~-0.1 ~ iron_block unless block 0 30 49 oak_log unless entity @e[type=marker,tag=globalmsg2] run function ttt:act1/ironblock_notify