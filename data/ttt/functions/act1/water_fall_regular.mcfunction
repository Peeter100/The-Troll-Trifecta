execute if score @s hp matches ..3 run stopsound @a master
execute if score @s hp matches ..3 run scoreboard players set @s deathreason 12
execute if score @s hp matches ..3 run kill @s

execute if score @s hp matches 4.. run tp @s 2 30 101 0 0
playsound minecraft:entity.player.hurt_on_fire master @a ~ ~ ~ 1000
playsound minecraft:entity.generic.splash master @a ~ ~ ~ 1000
playsound minecraft:entity.generic.splash master @a ~ ~ ~ 1000
particle splash ~ ~ ~ .5 .3 .5 1 50 force @a
execute if score @s hp matches 4.. run particle poof 2 31 101 .2 .5 .2 0 25 force @a
execute if score @s hp matches 4.. run particle flame 2 31 101 .3 .5 .3 0 50 force @a
execute if score @s hp matches 4.. as @e[type=marker,tag=sv,limit=1] if entity @s[scores={act=1,fnf_seentails=2..,dialogueseq=..2}] run function ttt:act1/dialogueseq3
execute if score @s hp matches 4.. run effect give @s resistance 1 2 true
execute if score @s hp matches 4.. run effect give @s instant_damage 1 0 true