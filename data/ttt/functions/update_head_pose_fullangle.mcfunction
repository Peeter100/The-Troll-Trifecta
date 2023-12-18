execute store result score .headtest npcbodytp run data get entity @s Rotation[1]
execute if score .headtest npcbodytp matches ..-12 run data modify storage headtest Head[0] set value -12f
execute if score .headtest npcbodytp matches -11.. store result storage headtest Head[0] float 1 run data get entity @s Rotation[1]
data modify entity @s Pose merge from storage headtest