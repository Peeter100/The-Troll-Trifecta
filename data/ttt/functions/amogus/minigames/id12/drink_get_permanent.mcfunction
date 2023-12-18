stopsound @a master

execute if score @s Game_Choice matches 1 run give @s gold_ingot{display:{Name:'{"text":"Whiskersy","color":"yellow","italic":false}'},CustomModelData:7,rickdrink:1b} 1
execute if score @s Game_Choice matches 2 run give @s gold_ingot{display:{Name:'{"text":"Death Fuel","color":"yellow","italic":false}'},CustomModelData:7,rickdrink:1b} 1
execute if score @s Game_Choice matches 3 run give @s gold_ingot{display:{Name:'{"text":"Vodka","color":"yellow","italic":false}'},CustomModelData:7,rickdrink:1b} 1
execute if score @s Game_Choice matches 4 run give @s gold_ingot{display:{Name:'{"text":"Lean Juice","color":"yellow","italic":false}'},CustomModelData:6,rickdrink:1b} 1
execute if score @s Game_Choice matches 5 run give @s gold_ingot{display:{Name:'{"text":"Beer","color":"yellow","italic":false}'},CustomModelData:7,rickdrink:1b} 1
execute if score @s Game_Choice matches 6 run give @s gold_ingot{display:{Name:'{"text":"Grimace Shake","color":"yellow","italic":false}'},CustomModelData:6,rickdrink:1b} 1

scoreboard players set @e[type=marker,tag=sv] am_gamescore4 1
scoreboard players reset @a Game_Choice