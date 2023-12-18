# If hunger is enabled

execute as @a[team=p,scores={weight=0,x=-5..1,y=30..32,z=74..75}] at @s run function ttt:act1/villinteract/hunger_start
effect clear @a[scores={food=..1}] hunger
effect give @a[scores={food=..1}] saturation 1 0 true

execute as @a[team=p,tag=!hungertext,scores={x=-16..4,y=30..32,z=91}] at @s run function ttt:act1/villinteract/hunger_text

execute as @a[team=p,scores={villinteract=1..}] at @s run function ttt:act1/villinteract/villinteract

execute as @a[scores={Answer_Q1=1..}] at @s run function ttt:act1/villinteract/question1
execute as @a[scores={Answer_Q2=1..}] at @s run function ttt:act1/villinteract/question2
execute as @a[scores={Answer_Q3=1..}] at @s run function ttt:act1/villinteract/question3
execute as @a[scores={mcdonalds=1..}] at @s run function ttt:act1/villinteract/mcdonalds
execute as @e[tag=fartcloud] at @s run particle dust 0 .3 0 1 ~ ~1 ~ 2 .5 2 5 25 force @a

execute as @a[team=p,scores={weight=1..},nbt={OnGround:0b}] run tag @s add offground
execute as @a[team=p,scores={weight=1..2},nbt={OnGround:1b},tag=offground] at @s run function ttt:act1/villinteract/fat_land_pre
execute as @a[team=p,scores={weight=3},nbt={OnGround:1b},tag=offground] at @s run function ttt:act1/villinteract/fat_land
execute as @a[team=p,scores={weight=1..},tag=weightanim] at @s run function ttt:act1/villinteract/hunger_animate