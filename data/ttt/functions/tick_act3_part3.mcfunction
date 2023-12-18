# ACT-WIDE KILL EVENTS

execute as @a[team=p] at @s unless block ~ ~ ~ #ttt:passable unless block ~ ~1 ~ #ttt:passable run effect give @s resistance 1 0 true
execute as @a[team=p] at @s unless block ~ ~ ~ #ttt:passable unless block ~ ~1 ~ #ttt:passable run effect give @s instant_damage 1 0 true
execute as @a[team=p,nbt=!{Fire:-20s}] at @s if block ~ ~ ~ lava run effect give @s instant_damage 1 0 true

execute as @a[team=p,nbt={OnGround:1b}] at @s if block ~ ~-0.1 ~ magma_block run function ttt:act1/magma_death
execute as @a[team=p,nbt={OnGround:1b}] at @s if block ~ ~-0.1 ~0.3 magma_block if block ~ ~-0.1 ~ #ttt:passable run function ttt:act1/magma_death
execute as @a[team=p,nbt={OnGround:1b}] at @s if block ~ ~-0.1 ~-0.3 magma_block if block ~ ~-0.1 ~ #ttt:passable run function ttt:act1/magma_death
execute as @a[team=p,nbt={OnGround:1b}] at @s if block ~0.3 ~-0.1 ~ magma_block if block ~ ~-0.1 ~ #ttt:passable run function ttt:act1/magma_death
execute as @a[team=p,nbt={OnGround:1b}] at @s if block ~-0.3 ~-0.1 ~ magma_block if block ~ ~-0.1 ~ #ttt:passable run function ttt:act1/magma_death
execute as @a[team=p,nbt={OnGround:1b}] at @s if block ~-0.3 ~-0.1 ~0.3 magma_block if block ~ ~-0.1 ~ #ttt:passable run function ttt:act1/magma_death


# BASIC TICK

execute as @a[tag=!testing,team=!s,scores={hp=1..}] at @s if entity @s[x=-1,y=35,z=8,dx=2,dy=1,dz=2] run tp @s -3 30 209
execute as @a[tag=!testing,team=!s] at @s if entity @s[x=-6,y=30,z=-6,dx=13,dy=4,dz=13] run tp @s -3 30 209
effect give @a weakness 99999 0 true
execute as @a[team=p] at @s store result score @s x run data get entity @s Pos[0]
execute as @a[team=p] at @s store result score @s y run data get entity @s Pos[1]
execute as @a[team=p] at @s store result score @s z run data get entity @s Pos[2]

execute if score @s dialogueseq matches 0 run function ttt:act3/aftermogus/dialogue_victory
execute if score @s dialogueseq matches 1 run function ttt:act3/aftermogus/dialogue_tails_stand
execute if score @s dialogueseq matches 2 run function ttt:act3/aftermogus/dialogue_tails_fly
execute if score @s dialogueseq matches 3 run scoreboard players set @s dialogueseq 2
execute if score @s dialogueseq matches 4 run function ttt:act3/aftermogus/dialogue_tails_carry
execute if score @s dialogueseq matches 5 run function ttt:act3/aftermogus/dialogue_preboss