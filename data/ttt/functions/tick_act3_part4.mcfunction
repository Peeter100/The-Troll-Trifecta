# ACT-WIDE KILL EVENTS


# BASIC TICK

execute as @a[tag=!testing,team=!s,scores={hp=1..}] at @s if entity @s[x=-1,y=35,z=8,dx=2,dy=1,dz=2] run tp @s -118 11 21
execute as @a[tag=!testing,team=!s] at @s if entity @s[x=-6,y=30,z=-6,dx=13,dy=4,dz=13] run tp @s -118 11 21
effect give @a weakness 99999 0 true
execute as @a[team=p] store result score @s x run data get entity @s Pos[0]
execute as @a[team=p] store result score @s y run data get entity @s Pos[1]
execute as @a[team=p] store result score @s z run data get entity @s Pos[2]

execute if score @s dialogueseq matches 4 run function ttt:finale/afterfinale/tick
execute if score @s dialogueseq matches 2..3 run function ttt:finale/phase2/tick
execute if score @s dialogueseq matches 1 run function ttt:finale/phase1/tick
execute if score @s dialogueseq matches 0 run function ttt:finale/intro/tick