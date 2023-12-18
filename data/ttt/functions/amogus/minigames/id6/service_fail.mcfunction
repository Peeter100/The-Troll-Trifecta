execute unless entity @s[scores={am_gamescore2=0}] run tellraw @a {"text":"Wrong item!","color":"red","bold":true}
## execute if entity @s[scores={am_gamescore2=0}] run tellraw @a {"text":"Out of time!","color":"red","bold":"true"}

scoreboard players set @s am_gamescore7 0
tp @e[tag=baldi] 34 27.0 137
kill @e[type=item]
title @a reset

execute unless entity @a[tag=amplayer,scores={x=17..25,z=142..150}] run scoreboard players set @s am_gamescore2 -1000
execute if entity @a[tag=amplayer,scores={x=17..25,z=142..150}] run scoreboard players set @s am_gamescore2 -100
execute if entity @a[tag=amplayer,scores={x=17..25,z=142..150}] run playsound custom.act3.bald.ruler_slap master @a 34 27 137 1000

## execute if entity @a[tag=amplayer,scores={x=17..25,z=142..150}] run tellraw @a [{"text":"<","color":"white"},{"text":"Baldi","color":"green"},{"text":"> "},{"text":"Where is he?","color":"green"}]
## execute if entity @a[tag=amplayer,scores={x=17..25,z=142..150}] run playsound custom.t2s.baldi.cafeteria_where master @a 34 27 137 1000