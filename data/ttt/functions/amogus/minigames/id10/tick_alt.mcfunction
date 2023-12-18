# powerout
execute if score @s am_gametimer matches 1100 as @e[type=armor_stand,tag=freddy,limit=1] at @s run stopsound @a master
execute if score @s am_gametimer matches 1100 as @e[type=armor_stand,tag=freddy,limit=1] at @s run function ttt:amogus/minigames/id10/jumpscare_freddy

# success
execute if score @s am_gametimer matches 1200 run function ttt:amogus/minigames/id10/task_complete