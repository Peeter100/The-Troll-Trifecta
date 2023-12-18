setblock -24 22 100 lever[face=floor,facing=south,powered=false]
setblock -22 22 98 lever[face=floor,facing=east,powered=false]
setblock -26 22 98 lever[face=floor,facing=west,powered=false]
setblock -23 22 98 barrier
setblock -25 22 98 barrier
setblock -24 22 99 barrier
fill -25 26 98 -23 26 99 minecraft:stone
fill -26 26 105 -22 26 105 minecraft:stone
fill -26 26 109 -22 26 109 minecraft:stone
fill -25 26 112 -23 26 112 minecraft:stone

stopsound @a master
schedule clear ttt:amogus/minigames/id10/play_ambience
fill -19 21 97 -19 23 99 air
fill -29 21 97 -29 23 99 air

execute as @a[tag=amplayer] at @s run tp @s ~-3 ~-4 ~
scoreboard players set @s am_gametimer 1020
scoreboard players set @s am_gamescore5 1000
tp @e[type=chest_minecart,tag=linux] -24 0 97.55 90 0
execute as @r[tag=amplayer] at @s run playsound custom.act3.fnaf.blackout master @a ~ ~ ~ 0.5