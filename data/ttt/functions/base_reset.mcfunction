# THIS FUNCTION SETS ALL SCOREBOARDS TO THEIR BASIC VALUES
# (In case they were deleted)

# DO NOT USE AS RESET FUNCTION


scoreboard players set @a deathvis 0
scoreboard players set @a ready 0

scoreboard players set @e[type=marker,tag=sv] playing 0
scoreboard players set @e[type=marker,tag=sv] act 1
scoreboard players set @e[type=marker,tag=sv] actpart 1
scoreboard players set @e[type=marker,tag=sv] actunlocked 1
scoreboard players set @e[type=marker,tag=sv] knowsbname 0
scoreboard players set @e[type=marker,tag=sv] st_social 1
scoreboard players set @e[type=marker,tag=sv] st_list 1
scoreboard players set @e[type=marker,tag=sv] st_scoreboard 1
scoreboard players set @e[type=marker,tag=sv] st_am_forceid 0
scoreboard players set @e[type=marker,tag=sv] st_am_singletask 0
scoreboard players set @e[type=marker,tag=sv] st_am_blindcrew 0
scoreboard players set @e[type=marker,tag=sv] st_am_opimp 0
scoreboard players set @e[type=marker,tag=sv] st_am_reqtask 1
scoreboard players set @e[type=marker,tag=sv] st_bossdiff 0
scoreboard players set @e[type=marker,tag=sv] st_twt 1
scoreboard players set @e[type=marker,tag=sv] st_wgun 3
scoreboard players set @e[type=marker,tag=sv] st_fnf_fire 1
scoreboard players set @e[type=marker,tag=sv] st_actprog 0
scoreboard players set @e[type=marker,tag=sv] deathtime 0
scoreboard players set @e[type=marker,tag=sv] readytimer 0

scoreboard players set @e[type=marker,tag=sv] d1 0
scoreboard players set @e[type=marker,tag=sv] d2 0
scoreboard players set @e[type=marker,tag=sv] d3 0
scoreboard players set @e[type=marker,tag=sv] d4 0
scoreboard players set @e[type=marker,tag=sv] d5 0
scoreboard players set @e[type=marker,tag=sv] d6 0

data merge storage headtest {Head:[0f,0f,0f]}
data merge storage headfulltest {Head:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}
data merge storage amogtaskdata {taskData:{id1:{completed:0b},id2:{completed:0b},id3:{completed:0b},id4:{completed:0b},id5:{completed:0b},id6:{completed:0b},id7:{completed:0b},id8:{completed:0b},id9:{completed:0b},id10:{completed:0b},id11:{completed:0b},id12:{completed:0b}}}