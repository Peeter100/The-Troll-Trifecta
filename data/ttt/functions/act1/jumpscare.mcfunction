tag @e[type=marker,tag=sv] add silentdeath
effect give @s blindness 10 0 true
playsound custom.act3.jumpscare master @a ~ ~ ~ 1000
playsound custom.act3.augh master @a ~ ~ ~ 1000
stopsound @a master custom.act3.kissme
stopsound @a master custom.act3.backroom.lights
stopsound @a master custom.act3.backroom.chase.static

execute as @e[type=marker,tag=sv] if score @s act matches 1 run function ttt:act1/jumpscare_server

scoreboard players set @s deathreason 33
kill @e[tag=backrooment]
kill @s