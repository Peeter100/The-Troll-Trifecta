## DROP INDEX
# 1 --> strength
# 2 --> speed
# 3 --> invis
# 4 --> instant
# 5 --> blindness
# 6 --> nausea
# 7 --> poison

execute store result score @s npcbodytp run data get entity @s Item.tag.dropID
#execute store result score @s npcbodytp run data get entity @s Item.Count
execute if score @s npcbodytp matches ..4 run function ttt:xmas/rewards/potions/positive
execute if score @s npcbodytp matches 5.. run function ttt:xmas/rewards/potions/negative