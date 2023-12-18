playsound entity.blaze.shoot master @a ~ ~ ~ 1000
particle flame 21 43 51 2 2 2 0 300 force @a
particle large_smoke 21 43 51 2 2 2 .1 100 normal @a
fill 22 41 50 20 41 52 fire replace #ttt:torchwood

scoreboard players set @e[type=marker,tag=sv] fnf_lavarock 1
schedule function ttt:act1/torchwood/ph2 8t replace

function ttt:act1/mario/leapball_kill