execute unless block ~ ~ ~ #ttt:passable run tp @s ~ 30 ~1
execute if block ~ ~ ~ cobblestone_wall[up=true] if block 0 30 39 grass run function ttt:act1/lava_pit_armorstand
execute if block ~ ~ ~ cobblestone_wall[up=true] align x run tp @s ~.5 29 40.5