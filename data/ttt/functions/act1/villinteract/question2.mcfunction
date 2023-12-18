# 1

execute if entity @s[scores={Answer_Q2=1}] run tellraw @a [{"text":"<","color":"white"},{"text":"Granter John","color":"yellow"},{"text":"> "},{"text":"Never heard of it. But it does sound pretty decent.","color":"yellow"}]

# 2

execute if entity @s[scores={Answer_Q2=2}] run tellraw @a [{"text":"<","color":"white"},{"text":"Granter John","color":"yellow"},{"text":"> "},{"text":"Don't you dare mention that stupid game.","color":"yellow"}]

# 3

execute if entity @s[scores={Answer_Q2=3}] run tellraw @a [{"text":"<","color":"white"},{"text":"Granter John","color":"yellow"},{"text":"> "},{"text":"Mhm, Super Idol的笑容. Music to my ears.","color":"yellow"}]
execute if entity @s[scores={Answer_Q2=3}] run scoreboard players enable @a[team=p] Answer_Q3
execute if entity @s[scores={Answer_Q2=3}] run execute as @e[tag=npcb2] at @s run particle minecraft:happy_villager ~ ~1 ~ .2 .5 .2 0 50 normal @a
execute if entity @s[scores={Answer_Q2=3}] run execute as @e[tag=npcb2] at @s run playsound entity.player.levelup master @a ~ ~ ~ 1000
#execute if entity @s[scores={Answer_Q2=3}] run tellraw @a [{"text":"","color":"yellow"},{"text":"Question 3: Pick the ","bold":true},{"text":"correct answer","bold":true,"clickEvent":{"action":"run_command","value":"/trigger Answer_Q3 set 78"}},{"text":".\n","bold":true},{"text":"[Correct answer]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Click to select!","color":"green"}]},"clickEvent":{"action":"run_command","value":"/trigger Answer_Q3 set 1"}},{"text":"\n"},{"text":"[Wrong answer]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Click to select!","color":"green"}]},"clickEvent":{"action":"run_command","value":"/trigger Answer_Q3 set 2"}},{"text":"\n"},{"text":"[Aw hell nah]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Click to select!","color":"green"}]},"clickEvent":{"action":"run_command","value":"/trigger Answer_Q3 set 3"}},{"text":"\n"},{"text":"[This is not even a question.]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Click to select!","color":"green"}]},"clickEvent":{"action":"run_command","value":"/trigger Answer_Q3 set 4"}}]
execute if entity @s[scores={Answer_Q2=3}] run tellraw @a [{"text":"","color":"yellow"},{"text":"Question 3: Pick the ","bold":true},{"text":"correct answer","bold":true,"clickEvent":{"action":"run_command","value":"/trigger Answer_Q3 set 78"}},{"text":".\n","bold":true},{"text":"[Correct answer]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Click to select!","color":"green"}]},"clickEvent":{"action":"run_command","value":"/trigger Answer_Q3 set 1"}},{"text":"\n"},{"text":"[Wrong answer]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Click to select!","color":"green"}]},"clickEvent":{"action":"run_command","value":"/trigger Answer_Q3 set 2"}},{"text":"\n"},{"text":"[This is not even a question.]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Click to select!","color":"green"}]},"clickEvent":{"action":"run_command","value":"/trigger Answer_Q3 set 3"}}]

# 4

execute if entity @s[scores={Answer_Q2=4}] run tellraw @a [{"text":"<","color":"white"},{"text":"Granter John","color":"yellow"},{"text":"> "},{"text":"I don't care + you fell off + ratio","color":"yellow"}]



tellraw @a[team=s] [{"text":"[SPECTATOR CHAT] ","color":"gray"},{"selector":"@s"},{"text":" picked answer ","color":"yellow"},{"score":{"name":"@s","objective":"Answer_Q1"},"color":"green"}]
execute as @e[tag=npcb2] at @s run playsound custom.act1.xina.question master @a ~ ~ ~ 1000
execute unless entity @s[scores={Answer_Q2=3}] run scoreboard players set @s deathreason 10
execute unless entity @s[scores={Answer_Q2=3}] run effect give @s instant_damage 1 100 true
scoreboard players reset @a Answer_Q2