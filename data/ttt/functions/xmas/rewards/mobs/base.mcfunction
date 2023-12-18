## DROP INDEX
# 1 --> phantom
# 2 --> silverfish
# 3 --> enderman
# 4 --> illusioner
# 5 --> clash
# 6 --> vex
# 7 --> creeper

execute store result score @s npcbodytp run data get entity @s Item.tag.dropID
#execute store result score @s npcbodytp run data get entity @s Item.Count
execute if score @s npcbodytp matches 1 run function ttt:xmas/rewards/mobs/phantom
execute if score @s npcbodytp matches 2 run function ttt:xmas/rewards/mobs/silverfish
execute if score @s npcbodytp matches 3 run function ttt:xmas/rewards/mobs/enderman
execute if score @s npcbodytp matches 4 run function ttt:xmas/rewards/mobs/illusioner
execute if score @s npcbodytp matches 5 run function ttt:xmas/rewards/mobs/clash
execute if score @s npcbodytp matches 6 run function ttt:xmas/rewards/mobs/vex
execute if score @s npcbodytp matches 7 run function ttt:xmas/rewards/mobs/creeper