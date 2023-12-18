playsound custom.act1.mario.hit_fire master @a ~ ~ ~ 1000
execute as @e[tag=goomba] at @s run particle flame ~ ~.5 ~ .2 .2 .2 0.25 25 force @a
kill @e[tag=goomba]
kill @e[type=item,nbt={Item:{tag:{fireflower:1b}}}]
clear @a carrot_on_a_stick{fireflower:1b}
scoreboard players reset @e[tag=leapball]
kill @e[tag=leapball]