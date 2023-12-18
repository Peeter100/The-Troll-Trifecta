scoreboard players operation @e[type=marker,tag=taskmarker,scores={npcbodytp=10},limit=1] npcbodytp = @s am_gameid
scoreboard players set @e[type=marker,tag=taskmarker,limit=1,sort=nearest] npcbodytp 10
scoreboard players set @s am_gameid 10
tag @s add forcedtask