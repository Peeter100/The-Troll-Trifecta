## Tests for:
# block tags
# loot table
# predicate

tellraw @s {"text":"Testing supported features of datapacks. If any fail, reinstall the map and play in a different environment:","color":"yellow"}
execute store success score .debug-bt npcbodytp if block 0 30 0 #ttt:passable
execute if score .debug-bt npcbodytp matches 1 run tellraw @s [{"text":"Tags: "},{"text":"Working","color":"green"}]
execute if score .debug-bt npcbodytp matches 0 run tellraw @s [{"text":"Tags: "},{"text":"Unsupported","color":"red"}]
execute store result score .debug-lt npcbodytp run loot spawn 0 30 0 loot ttt:debug
execute if score .debug-lt npcbodytp matches 1 run tellraw @s [{"text":"Loot tables: "},{"text":"Working","color":"green"}]
execute unless score .debug-lt npcbodytp matches 1 run tellraw @s [{"text":"Loot tables: "},{"text":"Unsupported","color":"red"}]
execute store success score .debug-pr npcbodytp if predicate ttt:debug
execute if score .debug-pr npcbodytp matches 1 run tellraw @s [{"text":"Predicates: "},{"text":"Working","color":"green"}]
execute if score .debug-pr npcbodytp matches 0 run tellraw @s [{"text":"Predicates: "},{"text":"Unsupported","color":"red"}]
#kill @e[type=item,nbt={Item:{tag:{locked:1b}}}]

scoreboard players reset .debug-bt npcbodytp
scoreboard players reset .debug-lt npcbodytp
scoreboard players reset .debug-pr npcbodytp