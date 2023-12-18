execute store result storage headfulltest Head[0] float 0.5 run data get entity @s Rotation[1]
execute store result storage headfulltest LeftArm[0] float 0.5 run data get entity @s Rotation[1]
execute store result storage headfulltest RightArm[0] float 0.5 run data get entity @s Rotation[1]
data modify entity @s Pose merge from storage headfulltest