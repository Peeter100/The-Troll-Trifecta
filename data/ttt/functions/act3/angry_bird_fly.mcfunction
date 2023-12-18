#execute store result score @s x run data get entity @s Pos[0]
#execute store result score @s y run data get entity @s Pos[1]
#execute store result score @s z run data get entity @s Pos[2]

particle dust 1 0 0 1 ~ ~ ~ 0 0 0 0 1 force @a
execute as @e[type=piglin,distance=0..1.5] at @s run playsound custom.act3.angry_birds.pig_die master @a ~ ~ ~ 1000
execute as @e[type=piglin,distance=0..1.5] at @s run kill @s
execute as @e[type=hoglin,distance=0..3] at @s run playsound custom.act3.angry_birds.pig_die master @a ~ ~ ~ 1000
execute as @e[type=hoglin,distance=0..3] at @s run kill @s

execute unless block ^ ^ ^0.2 #ttt:passable run playsound custom.act3.angry_birds.hurt master @a ~ ~ ~ 1000
execute unless block ^ ^ ^0.2 #ttt:passable run particle explosion ~ ~ ~ 0 0 0 0 10 force @a
execute unless block ^ ^ ^0.2 #ttt:passable run kill @s

execute if block ^ ^ ^0.2 #ttt:passable run tp @s ^ ^ ^0.2