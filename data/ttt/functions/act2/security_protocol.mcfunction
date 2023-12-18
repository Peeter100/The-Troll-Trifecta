scoreboard players add @s securitytime 1

execute if score @s securitytime matches 2 run playsound custom.act2.chargeup master @a ~ ~ ~ 1000

execute if score @s securitytime matches 26 run scoreboard players set @s[scores={cr_seentails=0}] cr_seentails 1
execute if score @s securitytime matches 27 run particle flame -31 32 33.0 5 2 .5 0 500 force @a
execute if score @s securitytime matches 28 run particle flame -31 32 31.0 5 2 .5 0 500 force @a
execute if score @s securitytime matches 29 run particle flame -31 32 29.0 5 2 .5 0 500 force @a
execute if score @s securitytime matches 30 run particle flame -31 32 27.0 5 2 .5 0 500 force @a
execute if score @s securitytime matches 31 run particle flame -31 32 25.0 5 2 .5 0 500 force @a
execute if score @s securitytime matches 32 run particle flame -31 32 23.0 5 2 .5 0 500 force @a

execute if score @s securitytime matches 27..28 run kill @a[x=-38,y=30,z=30,dx=14,dy=3,dz=4,team=p]
execute if score @s securitytime matches 29..30 run kill @a[x=-38,y=30,z=26,dx=14,dy=3,dz=5,team=p]
execute if score @s securitytime matches 31..32 run kill @a[x=-38,y=30,z=23,dx=14,dy=3,dz=5,team=p]

execute if score @s securitytime matches 33 run fill -25 31 22 -37 31 22 fire replace birch_planks
execute if score @s securitytime matches 35 run setblock -26 30 22 air destroy
execute if score @s securitytime matches 37 run setblock -32 30 22 air destroy
execute if score @s securitytime matches 38 run setblock -37 30 22 air destroy
execute if score @s securitytime matches 40 run setblock -34 30 22 air destroy
execute if score @s securitytime matches 43 run setblock -28 30 22 air destroy
execute if score @s securitytime matches 43 run setblock -35 30 22 air destroy
execute if score @s securitytime matches 45 run setblock -30 30 22 air destroy
execute if score @s securitytime matches 46 run setblock -25 30 22 air destroy
execute if score @s securitytime matches 49 run setblock -36 30 22 air destroy
execute if score @s securitytime matches 52 run setblock -33 30 22 air destroy
execute if score @s securitytime matches 53 run setblock -27 30 22 air destroy
execute if score @s securitytime matches 56 run setblock -31 30 22 air destroy

execute if score @s securitytime matches 40 run function ttt:act2/security1
execute if score @s securitytime matches 45 run playsound custom.act2.alarm_and_knuckles master @a ~ ~ ~ 1000
execute if score @s securitytime matches 60 run function ttt:act2/security2
execute if score @s securitytime matches 79 run function ttt:act2/security3
execute if score @s securitytime matches 97.. run scoreboard players set @s securitytime 39


#execute if score @s securitytime matches 40 run function ttt:act2/security1
#execute if score @s securitytime matches 44 run playsound custom.act2.alarm_and_knuckles master @a ~ ~ ~ 1000
#execute if score @s securitytime matches 58 run function ttt:act2/security2
#execute if score @s securitytime matches 76 run function ttt:act2/security3
#execute if score @s securitytime matches 93.. run scoreboard players set @s securitytime 39

# z = 23 - 33
# x = -37, -25