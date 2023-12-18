## DROP INDEX
# 1-3 --> cocoa, frosty, charcoal sword
# 4-6 --> cocoa, frosty, charcoal axe
# 7-9 --> cocoa x2, charcoal helmet
# 10-12 --> cocoa, ice craved, charcoal chestplate
# 13-15 --> cocoa, charcoal leggings x2
# 16-18 --> cocoa, sacred, charcoal boots
# 19-21 --> shield
# 22-24 --> candy cane
# 25-26 --> snow blaster
# 27-28 --> ice bomb
# 29-30 --> jolly stick

execute store result score @s npcbodytp run data get entity @s Item.tag.dropID
#execute store result score @s npcbodytp run data get entity @s Item.Count
execute if score @s npcbodytp matches ..6 run function ttt:xmas/rewards/items/weapons
execute if score @s npcbodytp matches 7..12 run function ttt:xmas/rewards/items/armor_upper
execute if score @s npcbodytp matches 13..18 run function ttt:xmas/rewards/items/armor_lower
execute if score @s npcbodytp matches 19..24 run function ttt:xmas/rewards/items/specials_part1
execute if score @s npcbodytp matches 25.. run function ttt:xmas/rewards/items/specials_part2