scoreboard players operation @e[type=marker,tag=taskmarker,scores={npcbodytp=11},limit=1] npcbodytp = @s am_gameid
scoreboard players set @e[type=marker,tag=taskmarker,limit=1,sort=nearest] npcbodytp 11
scoreboard players set @s am_gameid 11
tag @s add forcedtask