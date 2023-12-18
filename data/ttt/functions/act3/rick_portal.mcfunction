playsound entity.enderman.teleport master @a -3 30 250 1000
particle dust 0.6 1 0.6 1 -3 31 250 .2 .5 .2 0 50 force @a
particle cloud -3 31 250 .2 .5 .2 0.1 10 force @a
clear @a[team=p]
kill @e[type=item]
tp @a[team=p,scores={hp=1..}] -3 30 250 0 0