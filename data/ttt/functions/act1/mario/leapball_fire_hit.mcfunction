playsound custom.act1.mario.hit_fire master @a ~ ~ ~ 1000
execute as @e[tag=goomba] at @s run particle flame ~ ~.5 ~ .2 .2 .2 0.25 25 force @a
kill @e[tag=goomba]
kill @e[type=item,nbt={Item:{tag:{fireflower:1b}}}]
clear @a carrot_on_a_stick{fireflower:1b}

execute as @e[type=marker,tag=sv] if score @s fnf_lavarock matches 0 run scoreboard players add @s fnf_lavarockmiss 1
execute as @e[type=marker,tag=sv] if score @s fnf_lavarock matches 0 if score @s fnf_lavarockmiss matches 3.. as @r[team=p] run tellraw @a [{"text":"<","color":"white"},{"selector":"@s","color":"aqua"},{"text":"> "},{"text":"Why was that wooden construction unit there?","color":"aqua"}]

execute as @e[tag=leapball] run function ttt:act1/mario/leapball_kill