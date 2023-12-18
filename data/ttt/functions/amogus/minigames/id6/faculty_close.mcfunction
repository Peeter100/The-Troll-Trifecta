playsound custom.act3.bald.doors_single_close master @a ~ ~ ~ 1000
item replace entity @s weapon.mainhand with gold_ingot{CustomModelData:32} 1
#fill 26 27 146 26 29 146 barrier
tag @s add locked

execute if entity @a[tag=amplayer,scores={x=..25}] run fill 26 27 146 26 29 146 barrier
execute if entity @a[tag=amplayer,scores={x=..25}] run tag @s add forceclose