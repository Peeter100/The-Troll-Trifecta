execute if score @s deathreason matches 60 run tellraw @a [{"selector":"@s"},{"text":" slightly inconvenienced ","color":"white"},{"selector":"@e[type=villager,tag=wgunangry,limit=1]","color":"yellow"}]
execute if score @s deathreason matches 61 run tellraw @a [{"selector":"@s"},{"text":" got spindashed by ","color":"white"},{"text":"Tails","color":"gold"}]
execute if score @s deathreason matches 62 run tellraw @a [{"selector":"@s"},{"text":" felt the power of Christmas","color":"white"}]
execute if score @s deathreason matches 62 run playsound custom.xmas.death master @a ~ ~ ~ 1000
execute if score @s deathreason matches 62 run tag @e[type=marker,tag=sv] add silentdeath