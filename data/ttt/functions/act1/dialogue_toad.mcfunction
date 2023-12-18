scoreboard players add @s dialoguetime 1

execute if entity @s[scores={dialoguetime=2}] at @e[type=armor_stand,tag=toadhead] run playsound custom.act1.toad master @a ~ ~ ~ 1000
execute if entity @s[scores={dialoguetime=2}] run tellraw @a [{"text":"<","color":"white"},{"text":"Toad","color":"red"},{"text":"> "},{"text":"Oh no! There are Goombas blocking the way!","color":"red"}]
execute if entity @s[scores={dialoguetime=60}] at @e[type=armor_stand,tag=toadhead] run playsound custom.act1.toad master @a ~ ~ ~ 1000
execute if entity @s[scores={dialoguetime=60}] run tellraw @a [{"text":"<","color":"white"},{"text":"Toad","color":"red"},{"text":"> "},{"text":"Powerups from the Super Mario Bros universe should be the most useful.","color":"red"}]
execute if entity @s[scores={dialoguetime=140}] at @e[type=armor_stand,tag=toadhead] run playsound custom.act1.toad master @a ~ ~ ~ 1000
execute if entity @s[scores={dialoguetime=140}] run tellraw @a [{"text":"<","color":"white"},{"text":"Toad","color":"red"},{"text":"> "},{"text":"You can borrow my ","color":"red"},{"text":"Flower Cutters","color":"green"},{"text":" and take one item from my garden.","color":"red"}]
execute if entity @s[scores={dialoguetime=220}] at @e[type=armor_stand,tag=toadhead] run playsound custom.act1.toad master @a ~ ~ ~ 1000
execute if entity @s[scores={dialoguetime=220}] run tellraw @a [{"text":"<","color":"white"},{"text":"Toad","color":"red"},{"text":"> "},{"text":"But I want them back later!","color":"red"}]

execute if entity @s[scores={dialoguetime=840}] run tellraw @a[scores={deathreason=39}] {"text":"You can still move by spamming jump while sprinting.","color":"#777A10"}
execute if entity @s[scores={dialoguetime=1000}] run tellraw @a[scores={deathreason=39}] {"text":"You should probably get to it by now.","color":"#777A10"}