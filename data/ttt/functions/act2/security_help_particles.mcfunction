#particle dust 0.8 0.8 1 1 -31 30.1 33.0 0 0 .5 0 10 normal @a
#particle dust 0.8 0.8 1 1 -32.0 30.1 32 .5 0 0 0 10 normal @a

particle dust 0.8 0.8 1 1 -31 30.1 32 .3 0 .3 0 3 normal @a
particle dust 0.8 0.8 1 1 -33 30.1 32 .3 0 .3 0 3 normal @a
particle dust 0.8 0.8 1 1 -33 30.1 29 .3 0 .3 0 3 normal @a
particle dust 0.8 0.8 1 1 -35 30.1 29 .3 0 .3 0 3 normal @a
particle dust 0.8 0.8 1 1 -35 30.1 29 .3 0 .3 0 3 normal @a
particle dust 0.8 0.8 1 1 -35 30.1 26 .3 0 .3 0 3 normal @a
particle dust 0.8 0.8 1 1 -28 30.1 26 .3 0 .3 0 3 normal @a
particle dust 0.8 0.8 1 1 -28 30.1 29 .3 0 .3 0 3 normal @a
particle dust 0.8 0.8 1 1 -26 30.1 29 .3 0 .3 0 3 normal @a
particle dust 0.8 0.8 1 1 -26 30.1 24 .3 0 .3 0 3 normal @a
particle dust 0.8 0.8 1 1 -29 30.1 24 .3 0 .3 0 3 normal @a
execute as @e[type=marker,tag=sv,limit=1] if score @s securitytime matches 0 if score @s deathtime matches 0 unless score @s actpart matches 2 run schedule function ttt:act2/security_help_particles 10t replace