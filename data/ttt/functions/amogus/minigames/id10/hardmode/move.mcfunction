# bonnie & chica >= 1
# foxy >= 100 (150)
# freddy >= 200 (300)


scoreboard players set @s am_gametimer 2040

scoreboard players operation @s am_gamescore4 += @e[type=armor_stand,tag=fazbear,tag=bonnie] npcbodytp
scoreboard players operation @s am_gamescore4 += @e[type=armor_stand,tag=fazbear,tag=chica] npcbodytp
scoreboard players operation @s am_gamescore4 += @e[type=armor_stand,tag=fazbear,tag=freddy] npcbodytp
scoreboard players operation @s am_gamescore4 += @e[type=armor_stand,tag=fazbear,tag=foxy] npcbodytp
scoreboard players operation @s am_gamescore4 += @s am_gamescore1
scoreboard players operation @s am_gamescore4 %= @s am_secondworth
execute if score @s am_gamescore4 matches 18..20 run scoreboard players remove @s am_gametimer 25
execute if score @s am_gamescore4 matches 6..10 run scoreboard players remove @s am_gametimer 10
execute if score @s am_gamescore4 matches 3..7 run scoreboard players add @s am_gametimer 5

tag @e[type=armor_stand,tag=fazbear,tag=stage3,tag=!attackphase,limit=1,sort=random] add picked

execute as @e[type=armor_stand,tag=bonnie,tag=picked] at @s run function ttt:amogus/minigames/id10/move_bonnie
execute as @e[type=armor_stand,tag=chica,tag=picked] at @s run function ttt:amogus/minigames/id10/move_chica
execute as @e[type=armor_stand,tag=foxy,tag=picked] at @s run scoreboard players add @s npcbodytp 175
execute as @e[type=armor_stand,tag=freddy,tag=picked,scores={npcbodytp=..1999}] at @s run scoreboard players add @s npcbodytp 175
execute as @e[type=armor_stand,tag=freddy,tag=picked,scores={npcbodytp=2000..2140}] at @s run scoreboard players add @s npcbodytp 60

tag @e[type=armor_stand,tag=fazbear] remove picked