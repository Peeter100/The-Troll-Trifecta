execute unless block ~ ~0.45 ~ #ttt:passable run particle block ice ~ ~ ~ 0 0 0 0 15 force @a
execute unless block ~ ~0.45 ~ #ttt:passable run kill @s

particle dust 0.5 0.75 1 1 ~ ~ ~ 0 0 0 0 1 force @a

execute if entity @e[tag=goomba,distance=0..2] unless entity @a[team=p,scores={deathreason=40}] run function ttt:act1/mario/leapball_ice_hit