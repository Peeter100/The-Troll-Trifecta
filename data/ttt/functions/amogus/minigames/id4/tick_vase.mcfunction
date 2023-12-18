execute as @r[tag=amplayer] at @s anchored eyes if block ^ ^ ^1 #ttt:vase_passable run tp @e[type=armor_stand,tag=vase] ^ ^ ^1 facing entity @s
scoreboard players add @s[scores={am_gamescore1=..2}] am_gamescore1 1

scoreboard players operation @s am_visualizer = @s am_gamescore2
execute store result score @s am_gamescore2 run data get entity @e[type=armor_stand,tag=vase,limit=1] Pos[0] 100
scoreboard players operation @s am_visualizer -= @s am_gamescore2
execute unless entity @s[scores={am_visualizer=-14..14}] unless entity @s[scores={am_gamescore1=1..2}] if entity @e[tag=vase] run function ttt:amogus/minigames/id4/vase_break

scoreboard players operation @s am_visualizer = @s am_gamescore3
execute store result score @s am_gamescore3 run data get entity @e[type=armor_stand,tag=vase,limit=1] Pos[1] 100
scoreboard players operation @s am_visualizer -= @s am_gamescore3
execute unless entity @s[scores={am_visualizer=-14..14}] unless entity @s[scores={am_gamescore1=1..2}] if entity @e[tag=vase] run function ttt:amogus/minigames/id4/vase_break

scoreboard players operation @s am_visualizer = @s am_gamescore4
execute store result score @s am_gamescore4 run data get entity @e[type=armor_stand,tag=vase,limit=1] Pos[2] 100
scoreboard players operation @s am_visualizer -= @s am_gamescore4
execute unless entity @s[scores={am_visualizer=-14..14}] unless entity @s[scores={am_gamescore1=1..2}] if entity @e[tag=vase] run function ttt:amogus/minigames/id4/vase_break

execute if entity @a[tag=amplayer,scores={x=33..36,z=130}] unless entity @e[tag=baldi,tag=use_door2] run function ttt:amogus/minigames/id4/interact_double_door
execute unless entity @a[tag=amplayer,scores={x=33..36,z=130}] if entity @e[tag=baldi,tag=use_door2] run tag @e[tag=baldi] remove use_door2

scoreboard players remove @s[scores={am_gamescore7=1..}] am_gamescore7 1
execute if entity @s[scores={am_gamescore7=40}] run tellraw @a [{"text":"<","color":"white"},{"text":"Bully","color":"gold"},{"text":"> "},{"text":"No items? No pass!","color":"gold"}]
execute if entity @a[tag=amplayer,scores={x=41,z=144..147}] unless entity @e[tag=baldi,tag=talk_bully] if entity @s[scores={am_gamescore7=0}] run function ttt:amogus/minigames/id4/interact_bully_vase
execute if entity @a[tag=amplayer,scores={x=41,z=144..147}] unless entity @e[tag=baldi,tag=talk_bully] run tag @e[tag=baldi] add talk_bully
execute unless entity @a[tag=amplayer,scores={x=41,z=144..147}] if entity @e[tag=baldi,tag=talk_bully] run tag @e[tag=baldi] remove talk_bully

execute if entity @a[tag=amplayer,scores={x=23,z=144..147}] unless entity @e[tag=baldi,tag=talk_crew] run function ttt:amogus/minigames/id4/interact_crew

execute if entity @s[scores={am_gamescore2=3200..3499,am_gamescore4=14700..14999}] if entity @e[type=armor_stand,tag=vase] run function ttt:amogus/minigames/id4/vase_give

#title @a actionbar {"text":"Take it slow!","color":"green"}