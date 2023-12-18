
# SHEARS
execute if entity @s[scores={rc=1..,sneak=1..},x_rotation=45..90] if block ~ ~ ~ #ttt:toad_powerup unless entity @s[nbt=!{SelectedItem:{tag:{shears:1b}}},nbt=!{Inventory:[{Slot:-106b,tag:{shears:1b}}]}] if entity @e[tag=sv,tag=gotwand] run tellraw @s [{"text":"<","color":"white"},{"selector":"@s","color":"aqua"},{"text":"> "},{"text":"Toad","color":"red"},{"text":" said I can only have one item!","color":"aqua"}]
execute if entity @s[scores={rc=1..,sneak=1..},x_rotation=45..90] if block ~ ~ ~ #ttt:toad_powerup unless entity @s[nbt=!{SelectedItem:{tag:{shears:1b}}},nbt=!{Inventory:[{Slot:-106b,tag:{shears:1b}}]}] unless entity @e[tag=sv,tag=gotwand] run function ttt:act1/mario/shears

# POWERUPS
execute if entity @s[scores={rc=1..}] unless entity @s[nbt=!{SelectedItem:{tag:{mushroom:1b}}},nbt=!{Inventory:[{Slot:-106b,tag:{mushroom:1b}}]}] if entity @e[type=armor_stand,tag=goomba] run function ttt:act1/mario/item_mushroom
execute if entity @s[scores={rc=1..}] unless entity @s[nbt=!{SelectedItem:{tag:{poisonshroom:1b}}},nbt=!{Inventory:[{Slot:-106b,tag:{poisonshroom:1b}}]}] if entity @e[type=armor_stand,tag=goomba] run function ttt:act1/mario/item_poisonshroom
execute if entity @s[scores={rc=1..}] unless entity @s[nbt=!{SelectedItem:{tag:{fireflower:1b}}},nbt=!{Inventory:[{Slot:-106b,tag:{fireflower:1b}}]}] if entity @e[type=armor_stand,tag=goomba] run function ttt:act1/mario/item_fire
execute if entity @s[scores={rc=1..}] unless entity @s[nbt=!{SelectedItem:{tag:{iceflower:1b}}},nbt=!{Inventory:[{Slot:-106b,tag:{iceflower:1b}}]}] if entity @e[type=armor_stand,tag=goomba] run function ttt:act1/mario/item_ice
execute if entity @s[scores={rc=1..}] unless entity @s[nbt=!{SelectedItem:{tag:{goldflower:1b}}},nbt=!{Inventory:[{Slot:-106b,tag:{goldflower:1b}}]}] if entity @e[type=armor_stand,tag=goomba] run function ttt:act1/mario/item_gold
execute if entity @s[scores={rc=1..}] unless entity @s[nbt=!{SelectedItem:{tag:{leanflower:1b}}},nbt=!{Inventory:[{Slot:-106b,tag:{leanflower:1b}}]}] if entity @e[type=armor_stand,tag=goomba] run function ttt:act1/mario/item_lean
execute if entity @s[scores={rc=1..}] unless entity @s[nbt=!{SelectedItem:{tag:{thunderflower:1b}}},nbt=!{Inventory:[{Slot:-106b,tag:{thunderflower:1b}}]}] if entity @e[type=armor_stand,tag=goomba] run function ttt:act1/mario/item_thunder