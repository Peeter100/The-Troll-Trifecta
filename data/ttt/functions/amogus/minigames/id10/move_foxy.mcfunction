# note: still run by server entity

#say moved
scoreboard players operation @s am_gamescore7 = @s am_gamescore3


# checkpoint (light doesn't work here yet)
execute if score @s am_gamescore3 matches ..0 run tp @e[type=armor_stand,tag=foxy,limit=1] -20 21 126 180 0
execute if score @s am_gamescore3 matches 1 run tp @e[type=armor_stand,tag=foxy,limit=1] -24 21 125 180 0
execute if score @s am_gamescore3 matches 2 run tp @e[type=armor_stand,tag=foxy,limit=1] -25 21 121 -178 0

# checkpoint
execute if score @s am_gamescore3 matches 3 run tp @e[type=armor_stand,tag=foxy,limit=1] -27 21 118 0 0
execute if score @s am_gamescore3 matches 4 run tp @e[type=armor_stand,tag=foxy,limit=1] -27 21 114 -169 0

# checkpoint
execute if score @s am_gamescore3 matches 5 run tp @e[type=armor_stand,tag=foxy,limit=1] -19 21 112 135 0
execute if score @s am_gamescore3 matches 6 run tp @e[type=armor_stand,tag=foxy,limit=1] -22 21 111 170 0
execute if score @s am_gamescore3 matches 7 run tp @e[type=armor_stand,tag=foxy,limit=1] -24 21 108 180 0

# checkpoint
execute if score @s am_gamescore3 matches 8 run tp @e[type=armor_stand,tag=foxy,limit=1] -29 21 105 -150 0
execute if score @s am_gamescore3 matches 9 run tp @e[type=armor_stand,tag=foxy,limit=1] -26 21 105 -165 0
execute if score @s am_gamescore3 matches 10 run tp @e[type=armor_stand,tag=foxy,limit=1] -24 21 103 180 0


item replace entity @e[type=armor_stand,tag=foxy,limit=1] weapon.mainhand with chain{CustomModelData:8}
execute if score @s am_gamescore3 matches 4 run item replace entity @e[type=armor_stand,tag=foxy,limit=1] weapon.mainhand with chain{CustomModelData:9}
execute if score @s am_gamescore3 matches 7..9 run item replace entity @e[type=armor_stand,tag=foxy,limit=1] weapon.mainhand with chain{CustomModelData:9}
execute if score @s am_gamescore3 matches 10 run item replace entity @e[type=armor_stand,tag=foxy,limit=1] weapon.mainhand with chain{CustomModelData:10}

# death
execute if score @s am_gamescore3 matches 11 as @e[type=armor_stand,tag=foxy,limit=1] at @s run function ttt:amogus/minigames/id10/jumpscare_foxy