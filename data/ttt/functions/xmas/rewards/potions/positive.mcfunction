execute if score @s npcbodytp matches 1 run tellraw @p[tag=needsgift] {"text":"You got Strength III for 5s!","color":"green"}
execute if score @s npcbodytp matches 2 run tellraw @p[tag=needsgift] {"text":"You got Speed V for 10s!","color":"green"}
execute if score @s npcbodytp matches 3 run tellraw @p[tag=needsgift] {"text":"You got Invisibility for 10s!","color":"green"}
execute if score @s npcbodytp matches 4 run tellraw @p[tag=needsgift] {"text":"You got Instant Health II!","color":"green"}

execute if score @s npcbodytp matches 1 run effect give @p[tag=needsgift] strength 5 2 true
execute if score @s npcbodytp matches 2 run effect give @p[tag=needsgift] speed 10 4 true
execute if score @s npcbodytp matches 3 run effect give @p[tag=needsgift] invisibility 10 0 true
execute if score @s npcbodytp matches 4 run effect give @p[tag=needsgift] instant_health 1 1 true