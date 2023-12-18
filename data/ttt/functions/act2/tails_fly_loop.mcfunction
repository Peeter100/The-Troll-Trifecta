stopsound @a master custom.act1.tails_fly_loop
execute at @e[type=armor_stand,tag=tailshead,limit=1] run playsound custom.act1.tails_fly_loop master @a ~ ~ ~ 1
execute if entity @e[type=marker,tag=sv,scores={playing=1,deathtime=0,act=2}] run schedule function ttt:act2/tails_fly_loop 8t replace