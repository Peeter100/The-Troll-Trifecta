playsound custom.act1.mario.powerup master @a ~ ~ ~
tag @s add jbimmune
tellraw @s [{"text":"Gained permanent ","color":"yellow"},{"text":"Speed III","color":"#BDE2FF"},{"text":" and "},{"text":"Jump Boost V","color":"green"},{"text":"!"}]
effect clear @s jump_boost
effect give @s speed 99999 2 true
effect give @s jump_boost 99999 4 true
clear @s carrot_on_a_stick{mushroom:1b}
scoreboard players set @s rc 0