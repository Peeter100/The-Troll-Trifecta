tellraw @s {"text":"You got death!","color":"green"}
summon lightning_bolt ~ ~ ~
tag @s remove needsgift
scoreboard players set @s deathreason 62
kill @s