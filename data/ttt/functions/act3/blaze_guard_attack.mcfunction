execute as @e[tag=blazeprot] at @s run tp @s ~ ~ ~ facing entity @p[x=15,y=16,z=178,dx=5,dy=2,dz=4,team=p]
execute as @e[tag=blazeprot] at @s run playsound entity.blaze.shoot master @a ~ ~ ~ 1000
execute as @e[tag=blazeprot] at @s run playsound entity.blaze.shoot master @a ~ ~ ~ 1000
execute as @e[tag=blazeprot] at @s run playsound entity.blaze.ambient master @a ~ ~ ~ 1000
execute as @e[tag=blazeprot] at @s run playsound entity.blaze.ambient master @a ~ ~ ~ 1000
execute as @e[tag=blazeprot] at @s anchored eyes run particle flame ~ ~ ~ .2 .2 .2 0 10 force @a
execute as @e[tag=blazeprot] at @s anchored eyes positioned ^ ^ ^1 run particle flame ~ ~ ~ .2 .2 .2 0 10 force @a
execute as @e[tag=blazeprot] at @s anchored eyes positioned ^ ^ ^2 run particle flame ~ ~ ~ .2 .2 .2 0 10 force @a
execute as @e[tag=blazeprot] at @s anchored eyes positioned ^ ^ ^3 run particle flame ~ ~ ~ .2 .2 .2 0 10 force @a
execute as @e[tag=blazeprot] at @s anchored eyes positioned ^ ^ ^4 run particle flame ~ ~ ~ .2 .2 .2 0 10 force @a

execute as @e[tag=blazeprot] at @s run scoreboard players set @p[x=15,y=16,z=178,dx=5,dy=2,dz=4,team=p] deathreason 34
execute as @e[tag=blazeprot] at @s run kill @p[x=15,y=16,z=178,dx=5,dy=2,dz=4,team=p]