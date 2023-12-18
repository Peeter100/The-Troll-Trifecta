playsound entity.player.hurt_sweet_berry_bush master @a ~ ~ ~ 1000 2
playsound entity.player.hurt master @a ~ ~ ~ 1000 2
playsound entity.creeper.primed master @a ~ ~ ~ 1000 2
particle dust 1 1 .3 2 ~ ~ ~ .2 .2 .2 0 10 normal @a
particle dust 1 1 .3 2 -4 23 93 .3 .5 .3 0 75 normal @a
execute if entity @s[nbt={SelectedItem:{tag:{hoverwand:1b}}}] as @e[type=marker,tag=sv,limit=1] if score @s am_seensans matches ..1 run scoreboard players set @s am_seensans 2
tag @s add noheal

execute if score @s hp matches ..6 run scoreboard players set @s deathreason 56
execute if score @s hp matches ..6 run kill @s

execute if score @s hp matches 15.. run effect give @s resistance 1 0 true
execute if score @s hp matches ..14 run effect clear @s resistance

execute if score @s hp matches 7.. run tp @s -4 22 93 180 0
execute if score @s hp matches 7.. run effect give @s instant_damage 1 0 true