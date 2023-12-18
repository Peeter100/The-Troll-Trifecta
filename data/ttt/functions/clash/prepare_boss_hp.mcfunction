scoreboard players operation @s cr_gianthp *= @s playercount
execute store result bossbar minecraft:gianthp max run scoreboard players get @s cr_gianthp
#execute if score @s cr_beeninbattle matches 5.. run scoreboard players set .hpdivision npcbodytp 2
#execute if score @s cr_beeninbattle matches 5.. run scoreboard players operation @s cr_gianthp /= .hpdivision npcbodytp
execute store result entity @e[tag=giantboss,limit=1] Health float 1 run scoreboard players get @s cr_gianthp