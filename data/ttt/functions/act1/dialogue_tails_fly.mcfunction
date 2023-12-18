scoreboard players add @s dialoguetime 1

# execute if score @s dialoguetime matches ..120 if score @s fnf_seentails matches 2 run function ttt:act1/tails_look
# execute if score @s dialoguetime matches ..120 if score @s fnf_seentails matches 3..4 as @e[type=armor_stand,tag=tailshead] at @s if entity @p[team=p,scores={z=..103}] anchored eyes run tp @s ~ ~ ~ facing entity @p[team=p,scores={z=..103}] eyes
# execute if score @s dialoguetime matches ..120 if score @s fnf_seentails matches 3..4 as @e[type=armor_stand,tag=tailshead] at @s if entity @p[team=p,scores={z=..103}] run function ttt:update_head_pose
execute if score @s dialoguetime matches ..118 if score @s fnf_tailsstate matches 0 run function ttt:act1/tails_look
execute if score @s dialoguetime matches ..118 if score @s fnf_tailsstate matches 1 if score @s fnf_seentails matches ..4 as @e[type=armor_stand,tag=tailshead] at @s if entity @p[team=p,scores={z=..103}] anchored eyes run tp @s ~ ~ ~ facing entity @p[team=p,scores={z=..103}] eyes
execute if score @s dialoguetime matches ..118 if score @s fnf_tailsstate matches 1 if score @s fnf_seentails matches ..4 as @e[type=armor_stand,tag=tailshead] at @s if entity @p[team=p,scores={z=..103}] run function ttt:update_head_pose

execute if score @s dialoguetime matches 40 run function ttt:act1/tails_question
execute if score @s dialoguetime matches 120 if score @s fnf_seentails matches ..4 run function ttt:act1/tails_question_ignore

execute if score @s dialoguetime matches 40..124 if entity @p[team=p,scores={Game_Choice=1..}] run function ttt:act1/tails_question_accept
execute if score @s dialoguetime matches 124 run scoreboard players set @s dialoguetime 123

execute if score @s dialoguetime matches 127..184 as @e[type=armor_stand,tag=tails] at @s run tp @a[tag=tailstarget] ~ ~-0.75 ~-0.1
execute if score @s dialoguetime matches 128..184 as @e[type=armor_stand,tag=tails] at @s run tp @s ~ ~ ~0.345 0 0

execute if score @s dialoguetime matches 185 run function ttt:act1/tails_flight_release

execute if score @s dialoguetime matches 186..250 as @e[type=armor_stand,tag=tails] at @s run tp @s ~0.25 ~0.1 ~ -90 0
execute if score @s dialoguetime matches 251..278 as @e[type=armor_stand,tag=tails] at @s run tp @s ~0.25 ~-0.1 ~ -90 0
execute if score @s dialoguetime matches 279 run kill @e[type=armor_stand,tag=tails]

execute if score @s dialoguetime matches 300.. run function ttt:act1/water_gun/tails_wgun_tick
execute if score @s dialoguetime matches 279 run scoreboard players set @s dialoguetime 750