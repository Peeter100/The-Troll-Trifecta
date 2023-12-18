# 1

execute if entity @s[scores={Answer_Q3=1}] run tellraw @a [{"text":"<","color":"white"},{"text":"Granter John","color":"yellow"},{"text":"> "},{"text":"\"Correct answer\" does not equal \"correct answer\", bucko.","color":"yellow"}]

# 2

execute if entity @s[scores={Answer_Q3=2}] run tellraw @a [{"text":"<","color":"white"},{"text":"Granter John","color":"yellow"},{"text":"> "},{"text":"Why would you pick the wrong answer?","color":"yellow"}]

# 3

#execute if entity @s[scores={Answer_Q3=3}] run tellraw @a [{"text":"<","color":"white"},{"text":"Granter John","color":"yellow"},{"text":"> "},{"text":"Then get out of here.","color":"yellow"}]
execute if entity @s[scores={Answer_Q3=3}] run tellraw @a [{"text":"<","color":"white"},{"text":"Granter John","color":"yellow"},{"text":"> "},{"text":"You could tell by the tone of my voice.","color":"yellow"}]

# 4

#execute if entity @s[scores={Answer_Q3=4}] run tellraw @a [{"text":"<","color":"white"},{"text":"Granter John","color":"yellow"},{"text":"> "},{"text":"You could tell by the tone of my voice.","color":"yellow"}]

# 5

execute if entity @s[scores={Answer_Q3=4..5}] run tellraw @a [{"text":"<","color":"white"},{"text":"Granter John","color":"yellow"},{"text":"> "},{"text":"Nice try.","color":"yellow"}]

# 78

execute if entity @s[scores={Answer_Q3=78}] run scoreboard players set @e[type=marker,tag=sv,scores={fnf_actprog=..1}] fnf_actprog 2
execute if entity @s[scores={Answer_Q3=78}] run tellraw @a [{"text":"<","color":"white"},{"text":"Granter John","color":"yellow"},{"text":"> "},{"text":"Indeed. You've proven yourself worthy.","color":"yellow"}]
execute if entity @s[scores={Answer_Q3=78}] as @e[tag=npcb2] at @s run particle minecraft:happy_villager ~ ~1 ~ .2 .5 .2 0 50 normal @a
execute if entity @s[scores={Answer_Q3=78}] as @e[tag=npcb2] at @s run playsound entity.player.levelup master @a ~ ~ ~ 1000
execute if entity @s[scores={Answer_Q3=78}] run tellraw @s {"text":"+25 Social Credits","color":"green"}
execute if entity @s[scores={Answer_Q3=78}] run give @s gold_ingot{display:{Name:'{"text":"Social Credit","color":"yellow","italic":false}'},CustomModelData:1,credit:1b} 25


execute unless entity @s[scores={Answer_Q3=78}] run tellraw @a[team=s] [{"text":"[SPECTATOR CHAT] ","color":"gray"},{"selector":"@s"},{"text":" picked answer ","color":"yellow"},{"score":{"name":"@s","objective":"Answer_Q1"},"color":"green"}]
execute as @e[tag=npcb2] at @s run playsound custom.act1.xina.question master @a ~ ~ ~ 1000
execute unless entity @s[scores={Answer_Q3=78}] run scoreboard players set @s deathreason 10
execute unless entity @s[scores={Answer_Q3=78}] run effect give @s instant_damage 1 100 true
scoreboard players reset @a Answer_Q3