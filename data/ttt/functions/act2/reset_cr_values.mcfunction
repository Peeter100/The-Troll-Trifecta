scoreboard players set @e[type=marker,tag=sv] cr_icespawned 0
scoreboard players set @e[type=marker,tag=sv] cr_icealive 0
scoreboard players set @e[type=marker,tag=sv] cr_gobspawned 0
scoreboard players set @e[type=marker,tag=sv] cr_gobalive 0
scoreboard players set @e[type=marker,tag=sv] cr_barspawned 0
scoreboard players set @e[type=marker,tag=sv] cr_baralive 0
scoreboard players set @e[type=marker,tag=sv] cr_witspawned 0
scoreboard players set @e[type=marker,tag=sv] cr_witalive 0
scoreboard players set @e[type=marker,tag=sv] cr_hogspawned 0
scoreboard players set @e[type=marker,tag=sv] cr_hogalive 0
scoreboard players set @e[type=marker,tag=sv] cr_gianthp 200
scoreboard players set @e[type=marker,tag=sv,scores={cr_beeninbattle=..2}] cr_score 0
scoreboard players set @e[type=marker,tag=sv,scores={cr_beeninbattle=3..}] cr_score 1250
scoreboard players set @a cr_killvex 0
bossbar set minecraft:gianthp players @a
bossbar set minecraft:gianthp value 200
kill @e[tag=clashmob]
setblock -7 31 160 lever[powered=false,face=wall,facing=north]
setblock 1 31 160 lever[powered=false,face=wall,facing=north]