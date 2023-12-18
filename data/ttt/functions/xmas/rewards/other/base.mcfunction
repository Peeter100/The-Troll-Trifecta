## DROP INDEX
# 1 --> death
# 2 --> air
# 3 --> clear
# 4 --> random tp
# 5 --> start tp
# 6 --> end tp

execute store result score @s npcbodytp run data get entity @s Item.tag.dropID
#execute store result score @s npcbodytp run data get entity @s Item.Count
execute if score @s npcbodytp matches ..5 run function ttt:xmas/rewards/other/half1 
execute if score @s npcbodytp matches 6.. run function ttt:xmas/rewards/other/half2 