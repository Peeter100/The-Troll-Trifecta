execute if score @s rc matches 1.. if entity @s[nbt={SelectedItem:{tag:{wgun:1b,filled:0b}}}] run function ttt:act1/water_gun/try_empty
#execute if score @s rc matches 1.. if entity @s[nbt={SelectedItem:{tag:{wgun:1b,filled:1b}}}] run function ttt:act1/water_gun/use_full
execute if score @s rc matches 1.. if entity @s[nbt={SelectedItem:{tag:{wgun:1b,filled:1b}}}] unless score @s gun_haswater matches ..0 run function ttt:act1/water_gun/use_full_altammo

scoreboard players set @s rc 0