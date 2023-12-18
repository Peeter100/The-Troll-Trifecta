playsound block.snow.break master @a ~ ~ ~
playsound block.snow.break master @a ~ ~ ~
playsound block.glass.break master @a ~ ~ ~

particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force @a
particle block snow_block ~ ~ ~ 2 .3 2 .05 100 force @a
particle block ice ~ ~ ~ 2 .3 2 .05 50 force @a

execute as @e[type=#ttt:aggresive,distance=..7] at @s run function ttt:xmas/special_items/icebomb_damage_regular
execute as @e[type=#ttt:aggresive_undead,distance=..7] at @s run function ttt:xmas/special_items/icebomb_damage_undead

clear @s ender_eye{icebomb:1b} 1