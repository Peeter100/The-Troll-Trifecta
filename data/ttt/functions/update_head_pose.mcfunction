# Updates head pose of armor stand to match their actual horizontal rotation
# Used when armor stands can have a lot of horizontal rotation depending on world

## Design 1 (raw rotation)
execute store result storage headtest Head[0] float 0.5 run data get entity @s Rotation[1]
data modify entity @s Pose merge from storage headtest

## Design 2 (takes into account that the player is shorter than armor stands)
#execute store result score .headtest npcbodytp run data get entity @s Rotation[1] 0.5
#execute if score .headtest npcbodytp matches -2..5 run scoreboard players set .headtest npcbodytp 0
#execute store result storage headtest Head[0] float 1 run scoreboard players get .headtest npcbodytp
#data modify entity @s Pose merge from storage headtest

## Design 3 (takes into account that the player is shorter than armor stands) + FRACTIONS
#execute store result score .headtest npcbodytp run data get entity @s Rotation[1] 0.5
#execute if score .headtest npcbodytp matches 0..5 run data modify storage headtest Head[0] set value 0f
#execute unless score .headtest npcbodytp matches 0..5 store result storage headtest Head[0] float 1 run data get entity @s Rotation[1] 0.5
#data modify entity @s Pose merge from storage headtest