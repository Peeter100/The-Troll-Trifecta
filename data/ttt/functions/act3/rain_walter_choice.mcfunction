execute if entity @s[scores={Answer_Q1=5}] run scoreboard players set @e[tag=sv] dialoguetime 630

execute unless entity @s[scores={Answer_Q1=5}] run scoreboard players set @s deathreason 10
execute unless entity @s[scores={Answer_Q1=5}] run effect give @s instant_damage 1 100 true
scoreboard players reset @a Answer_Q1