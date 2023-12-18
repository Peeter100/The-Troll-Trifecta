scoreboard players set @s am_gametimer 800
scoreboard players set @s am_gamescore7 0
execute as @e[tag=vase] at @s run playsound custom.act3.bald.vase_break master @a ~ ~ ~ 1000
execute as @e[tag=vase] at @s run particle item gold_ingot{CustomModelData:29} ~ ~0.25 ~ .4 .6 .4 .1 100 force @a
kill @e[tag=vase]
tag @e[tag=vase] remove vase
#title @a actionbar {"text":""}
#title @a clear
execute if score @s am_gamescore1 matches ..0 run tellraw @a {"text":"The vase fell from too high!","color":"green"}
execute if score @s am_gamescore1 matches 1.. run tellraw @a {"text":"You moved the vase too quickly!","color":"green"}