scoreboard players remove @e[type=marker,tag=sv,limit=1] f3_bosshp 3
particle block redstone_block ~ ~1 ~ .5 .7 .5 0 8 normal @a
playsound entity.player.attack.crit master @a ~ ~ ~ 1000
playsound entity.player.attack.strong master @a ~ ~ ~ 1000
tag @s add hitringboss