execute if entity @s[scores={rc=1..}] unless entity @s[nbt=!{SelectedItem:{tag:{mushroom:1b}}},nbt=!{Inventory:[{Slot:-106b,tag:{mushroom:1b}}]}] run function ttt:act1/mario/item_mushroom
execute if entity @s[scores={rc=1..,ring_charge=..14,ring_energy=50..},nbt={OnGround:1b}] unless entity @s[nbt=!{SelectedItem:{tag:{ring:1b}}},nbt=!{Inventory:[{Slot:-106b,tag:{ring:1b}}]}] run function ttt:act3/ring_use
# no one cares
execute if entity @s[scores={rc=1..}] unless entity @s[nbt=!{SelectedItem:{tag:{ggun:1b}}},nbt=!{Inventory:[{Slot:-106b,tag:{ggun:1b}}]}] run playsound custom.act3.deny_use master @s ~ ~ ~
execute if entity @s[scores={rc=1..}] unless entity @s[nbt=!{SelectedItem:{tag:{bird:1b}}},nbt=!{Inventory:[{Slot:-106b,tag:{bird:1b}}]}] run function ttt:act3/angry_bird_launch