stopsound @a master
scoreboard players set @s deathreason 3
playsound minecraft:entity.player.hurt_sweet_berry_bush master @a ~ ~ ~ 1000
particle dust 0 .3 0 1 ~ ~ ~ .3 .1 .3 0 30 force @a
particle minecraft:falling_dust green_terracotta ~ ~ ~ .3 0 .3 0 30 force @a
kill @s