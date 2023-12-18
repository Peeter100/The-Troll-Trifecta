execute as @e[tag=vase] at @s if block ~ ~-0.1 ~ #ttt:vase_passable run scoreboard players add @e[tag=sv] am_gamescore5 1
execute as @e[tag=vase] at @s if block ~ ~-0.1 ~ #ttt:vase_passable run tp @s ~ ~-0.1 ~
execute as @e[tag=vase] at @s if block ~ ~-0.1 ~ #ttt:vase_passable run tp @s ~ ~-0.1 ~
execute if entity @s[scores={am_gamescore3=2101..2109}] as @e[type=armor_stand,tag=vase] at @s run tp @s ~ 21 ~
execute if entity @s[scores={am_gamescore3=2201..2209}] as @e[type=armor_stand,tag=vase] at @s run tp @s ~ 22 ~

execute if entity @s[scores={am_gamescore5=4..}] if entity @e[type=armor_stand,tag=vase] run function ttt:amogus/minigames/id4/vase_break

execute if entity @a[tag=amplayer,scores={x=31,z=138}] if entity @e[tag=doorinteract,tag=locked] unless entity @e[tag=baldi,tag=use_door1] run function ttt:amogus/minigames/id4/interact_vase_door
execute unless entity @a[tag=amplayer,scores={x=31,z=138}] if entity @e[tag=baldi,tag=use_door1] run tag @e[tag=baldi] remove use_door1

execute if entity @a[tag=amplayer,scores={x=33..36,z=130}] unless entity @e[tag=baldi,tag=use_door2] run function ttt:amogus/minigames/id4/interact_double_door
execute unless entity @a[tag=amplayer,scores={x=33..36,z=130}] if entity @e[tag=baldi,tag=use_door2] run tag @e[tag=baldi] remove use_door2

scoreboard players remove @s[scores={am_gamescore7=1..}] am_gamescore7 1
execute if entity @s[scores={am_gamescore7=40}] run tellraw @a [{"text":"<","color":"white"},{"text":"Bully","color":"gold"},{"text":"> "},{"text":"No items? No pass!","color":"gold"}]
execute if entity @a[tag=amplayer,scores={x=41,z=144..147}] unless entity @e[tag=baldi,tag=talk_bully] if entity @s[scores={am_gamescore7=0}] run function ttt:amogus/minigames/id4/interact_bully_no_vase
execute if entity @a[tag=amplayer,scores={x=41,z=144..147}] unless entity @e[tag=baldi,tag=talk_bully] run tag @e[tag=baldi] add talk_bully
execute unless entity @a[tag=amplayer,scores={x=41,z=144..147}] if entity @e[tag=baldi,tag=talk_bully] run tag @e[tag=baldi] remove talk_bully

execute if entity @a[tag=amplayer,scores={x=23,z=144..147}] unless entity @e[tag=baldi,tag=talk_crew] run function ttt:amogus/minigames/id4/interact_crew

execute store result score @s am_gamescore2 run data get entity @e[type=armor_stand,tag=vase,limit=1] Pos[0] 100
execute store result score @s am_gamescore3 run data get entity @e[type=armor_stand,tag=vase,limit=1] Pos[1] 100
execute store result score @s am_gamescore4 run data get entity @e[type=armor_stand,tag=vase,limit=1] Pos[2] 100