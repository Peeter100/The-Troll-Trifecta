execute if score @s npcbodytp matches 5 run tellraw @p[tag=needsgift] {"text":"You got Blidness for 10s!","color":"green"}
execute if score @s npcbodytp matches 6 run tellraw @p[tag=needsgift] {"text":"You got Nausea for 10s!","color":"green"}
execute if score @s npcbodytp matches 7 run tellraw @p[tag=needsgift] {"text":"You got Posion III for 15s!","color":"green"}

execute if score @s npcbodytp matches 5 run effect give @p[tag=needsgift] blindness 10 0 true
execute if score @s npcbodytp matches 6 run effect give @p[tag=needsgift] nausea 10 0 true
execute if score @s npcbodytp matches 7 run effect give @p[tag=needsgift] poison 15 2 true