spreadplayers ~ ~ 5 10 under 17 false @e[type=armor_stand,tag=tptrollge]
scoreboard players set @s am_gamescore3 180

# one of entities is outside of the map
execute as @e[type=armor_stand,tag=tptrollge] store result score @s npcbodytp run data get entity @s Pos[1]
execute unless score @e[type=armor_stand,tag=tptrollge,limit=1] npcbodytp matches 15 run scoreboard players set @s am_gamescore3 0
execute at @e[type=armor_stand,tag=tptrollge] unless block ~ 14 ~ chiseled_red_sandstone run scoreboard players set @s am_gamescore3 0

# trollge is too close to the player
execute at @e[type=armor_stand,tag=tptrollge] if entity @a[tag=amplayer,distance=0..10] run scoreboard players set @s am_gamescore3 0


execute if score @s am_gamescore3 matches 180 run function ttt:amogus/minigames/id1/attempt_scatter_finish