scoreboard players add .pointer-range npcbodytp 2
particle crit ~ ~ ~ 0 0 0 0 1 force @a

execute if score .pointer-range npcbodytp matches ..26 positioned ^ ^ ^2 run function ttt:act1/carpet_game/pointer_gunshot