scoreboard players operation @e[type=marker,tag=taskmarker,scores={npcbodytp=7},limit=1] npcbodytp = @s am_gameid
scoreboard players set @e[type=marker,tag=taskmarker,limit=1,sort=nearest] npcbodytp 7
scoreboard players set @s am_gameid 7
tag @s add forcedtask