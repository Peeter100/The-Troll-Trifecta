execute at 00000001-0000-0000-0000-000000000000 run playsound entity.generic.explode master @a ~ ~ ~ 1000
execute at 00000001-0000-0000-0000-000000000000 run particle explosion ~ ~1 ~ 1.2 1.2 1.2 0 5 force @a
execute at 00000001-0000-0000-0000-000000000000 run particle block redstone_block ~ ~1 ~ 1.2 1.2 1.2 0 2 force @a
execute if entity @e[type=marker,tag=sv,scores={act=3,actpart=4,dialoguetime=1..60}] run schedule function ttt:finale/afterfinale/trollge_explode 3t replace