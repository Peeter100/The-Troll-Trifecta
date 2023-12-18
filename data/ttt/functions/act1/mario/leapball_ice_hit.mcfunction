playsound custom.act1.mario.hit_ice master @a ~ ~ ~ 1000
fill 17 40 34 19 41 32 ice
fill 19 40 33 21 41 31 ice
fill 20 41 31 22 40 29 ice
setblock 19 41 34 air
setblock 21 41 33 air
setblock 18 42 33 ice
fill 19 42 32 20 42 32 ice
fill 20 42 31 21 42 31 ice
setblock 21 42 30 ice
tag @e[tag=goomba] remove wguntarget
tag @e[tag=goomba] remove goomba
kill @e[type=item,nbt={Item:{tag:{iceflower:1b}}}]
clear @a carrot_on_a_stick{iceflower:1b}

execute as @e[tag=leapball] run function ttt:act1/mario/leapball_kill