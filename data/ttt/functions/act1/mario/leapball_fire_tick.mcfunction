execute unless block ~ ~0.45 ~ #ttt:passable run particle lava ~ ~ ~ 0 0 0 0 3 force @a
execute unless block ~ ~0.45 ~ #ttt:passable run kill @s

particle flame ~ ~ ~ 0 0 0 0 1 force @a

execute if score @e[type=marker,tag=sv,limit=1] fnf_lavarock matches 0 positioned 21 41 51 if entity @s[distance=..3] run function ttt:act1/torchwood/ph1

execute if entity @e[tag=goomba,distance=0..2] unless entity @a[team=p,scores={deathreason=40}] run function ttt:act1/mario/leapball_fire_hit