scoreboard players set @s am_sabid 2
scoreboard players set @s am_sabtimer 600
scoreboard players set @s am_maintimer 39
scoreboard players set @s am_sabfix 0
scoreboard players set @s am_sabfix2 0
worldborder warning distance 900000000
function ttt:amogus/slot_disable_all_sabotages
function ttt:amogus/bossbar_update_name
execute as @e[tag=amogai] at @s run data merge entity @s {NoAI:1b}

scoreboard players operation @s am_gamescore2 = @p[tag=amplayer] x
scoreboard players operation @s am_gamescore3 = @p[tag=amplayer] z
scoreboard players set .current am_sabrange 0
execute positioned 21 1 113 facing entity @p[tag=amplayer] feet run function ttt:amogus/distance/distance_raycast
scoreboard players operation .prev am_sabrange = .current am_sabrange
scoreboard players remove @s am_helpmeter 1
scoreboard players set .leeway am_sabrange 5

setblock 26 2 122 iron_trapdoor[facing=west,open=false,half=top]
setblock 17 2 120 iron_trapdoor[facing=west,half=top,open=false]
playsound block.iron_door.open master @a 17 2 120
playsound block.iron_door.open master @a 26 2 122

tag @e[tag=amogai,x=2,dx=22,z=92,dz=29] add fixing1
tag @e[tag=amogai,x=22,dx=28,z=117,dz=38] add fixing2
tag @e[tag=amogai,z=123,dz=15] add fixing2

execute positioned 26 1 122 run tag @e[tag=amogai,tag=!fixing1,tag=!fixing2,limit=1,sort=nearest] add fixing2
execute positioned 17 1 120 run tag @e[tag=amogai,tag=!fixing1,tag=!fixing2,limit=1,sort=nearest] add fixing1
execute positioned 26 1 122 run tag @e[tag=amogai,tag=!fixing1,tag=!fixing2,limit=1,sort=nearest] add fixing2
execute positioned 17 1 120 run tag @e[tag=amogai,tag=!fixing1,tag=!fixing2,limit=1,sort=nearest] add fixing1
execute positioned 26 1 122 run tag @e[tag=amogai,tag=!fixing1,tag=!fixing2,limit=1,sort=nearest] add fixing2
execute positioned 17 1 120 run tag @e[tag=amogai,tag=!fixing1,tag=!fixing2,limit=1,sort=nearest] add fixing1
execute positioned 26 1 122 run tag @e[tag=amogai,tag=!fixing1,tag=!fixing2,limit=1,sort=nearest] add fixing2
execute positioned 17 1 120 run tag @e[tag=amogai,tag=!fixing1,tag=!fixing2,limit=1,sort=nearest] add fixing1
execute positioned 26 1 122 run tag @e[tag=amogai,tag=!fixing1,tag=!fixing2,limit=1,sort=nearest] add fixing2
execute positioned 17 1 120 run tag @e[tag=amogai,tag=!fixing1,tag=!fixing2,limit=1,sort=nearest] add fixing1