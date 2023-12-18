spreadplayers 2 112 10 30 under 17 false @e[tag=amogtask,tag=!viewcaster]
scoreboard players set @s am_gametimer 4

# one of entities is outside of the map
execute as @e[tag=amogtask,tag=!viewcaster] at @s run execute store result score @s npcbodytp run data get entity @s Pos[1]
execute as @e[tag=amogtask,tag=!viewcaster] at @s unless entity @s[scores={npcbodytp=15}] run scoreboard players set @e[tag=sv] am_gametimer 3
execute as @e[tag=amogtask,tag=!viewcaster] at @s unless block ~ 14 ~ chiseled_red_sandstone run scoreboard players set @e[tag=sv] am_gametimer 3

# items are too close to one another
execute as @e[tag=tpitem] at @s if entity @e[tag=tpitem,distance=1..20] run scoreboard players set @e[tag=sv] am_gametimer 3

# trollge is too close to the player
execute as @e[tag=tptrollge] at @s if entity @e[tag=tpplayer,distance=0..28.5] run scoreboard players set @e[tag=sv] am_gametimer 3

# an item spawned next to the player
execute as @e[tag=tpplayer] at @s if entity @e[tag=tpitem,distance=1..10] run scoreboard players set @e[tag=sv] am_gametimer 3