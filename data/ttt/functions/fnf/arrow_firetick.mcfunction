#particle flame 1.0 ~ 136.0 1 0 .2 0 10 force @a
#particle smoke 1.0 ~ 136.0 1 0 .2 0 1 normal @a
execute if block ~ ~ ~ #ttt:passable run data merge entity @s {Glowing:1b}
particle flame ~ ~ ~ .5 .5 .5 0 3 force @a