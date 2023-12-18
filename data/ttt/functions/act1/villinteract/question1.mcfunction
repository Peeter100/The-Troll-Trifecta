# 1

execute if entity @s[scores={Answer_Q1=1}] run tellraw @a [{"text":"<","color":"white"},{"text":"Granter John","color":"yellow"},{"text":"> "},{"text":"What protest? This is a peaceful village.","color":"yellow"}]

# 2

execute if entity @s[scores={Answer_Q1=2}] run tellraw @a [{"text":"<","color":"white"},{"text":"Granter John","color":"yellow"},{"text":"> "},{"text":"Not specific enough, but correct.","color":"yellow"}]
execute if entity @s[scores={Answer_Q1=2}] run scoreboard players enable @a[team=p] Answer_Q2
execute if entity @s[scores={Answer_Q1=2}] run execute as @e[tag=npcb2] at @s run particle minecraft:happy_villager ~ ~1 ~ .2 .5 .2 0 50 normal @a
execute if entity @s[scores={Answer_Q1=2}] run execute as @e[tag=npcb2] at @s run playsound entity.player.levelup master @a ~ ~ ~ 1000
execute if entity @s[scores={Answer_Q1=2}] run tellraw @a [{"text":"","color":"yellow"},{"text":"Question 2: What represents the best song?\n","bold":true},{"text":"[Turi ip ip ip]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Click to select!","color":"green"}]},"clickEvent":{"action":"run_command","value":"/trigger Answer_Q2 set 1"}},{"text":"\n"},{"text":"[beep boop skbeep]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Click to select!","color":"green"}]},"clickEvent":{"action":"run_command","value":"/trigger Answer_Q2 set 2"}},{"text":"\n"},{"text":"[105°C]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Click to select!","color":"green"}]},"clickEvent":{"action":"run_command","value":"/trigger Answer_Q2 set 3"}},{"text":"\n"},{"text":"[Uhmmm... Actually, the term \"best\" is subjective, and without context or any specific rules as to what \"best\" means, it cannot be used in such quiz.]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Click to select!","color":"green"}]},"clickEvent":{"action":"run_command","value":"/trigger Answer_Q2 set 4"}}]

# 3

execute if entity @s[scores={Answer_Q1=3}] run tellraw @a [{"text":"<","color":"white"},{"text":"Granter John","color":"yellow"},{"text":"> "},{"text":"I don't quiz fools! You need to provide an answer.","color":"yellow"}]

# 4

execute if entity @s[scores={Answer_Q1=4}] run tellraw @a [{"text":"<","color":"white"},{"text":"Granter John","color":"yellow"},{"text":"> "},{"text":"So you think my marriage is nothing-?!!","color":"yellow"}]



tellraw @a[team=s] [{"text":"[SPECTATOR CHAT] ","color":"gray"},{"selector":"@s"},{"text":" picked answer ","color":"yellow"},{"score":{"name":"@s","objective":"Answer_Q1"},"color":"green"}]
execute as @e[tag=npcb2] at @s run playsound custom.act1.xina.question master @a ~ ~ ~ 1000
execute unless entity @s[scores={Answer_Q1=2}] run scoreboard players set @s deathreason 10
execute unless entity @s[scores={Answer_Q1=2}] run effect give @s instant_damage 1 100 true
scoreboard players reset @a Answer_Q1