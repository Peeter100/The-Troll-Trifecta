scoreboard players add @s dialoguetime 1
execute if entity @s[scores={dialoguetime=1}] run execute as @e[tag=npcb2] at @s run playsound custom.act1.xina.talk1 master @a ~ ~ ~ 1000
execute if entity @s[scores={dialoguetime=1}] run tellraw @a [{"text":"<","color":"white"},{"text":"Granter John","color":"yellow"},{"text":"> "},{"text":"You need more Social Credit?","color":"yellow"}]
execute if entity @s[scores={dialoguetime=60}] run execute as @e[tag=npcb2] at @s run playsound custom.act1.xina.talk2 master @a ~ ~ ~ 1000
execute if entity @s[scores={dialoguetime=60}] run tellraw @a [{"text":"<","color":"white"},{"text":"Granter John","color":"yellow"},{"text":"> "},{"text":"I first need to make sure you DESERVE the Social Credit.","color":"yellow"}]
execute if entity @s[scores={dialoguetime=120}] run execute as @e[tag=npcb2] at @s run playsound custom.act1.xina.talk3 master @a ~ ~ ~ 1000
execute if entity @s[scores={dialoguetime=120}] run tellraw @a [{"text":"<","color":"white"},{"text":"Granter John","color":"yellow"},{"text":"> "},{"text":"So, to prove you're a good citizen, you will need to answer my questions.","color":"yellow"}]
execute if entity @s[scores={dialoguetime=200}] run execute as @e[tag=npcb2] at @s run playsound custom.act1.xina.question master @a ~ ~ ~ 1000
execute if entity @s[scores={dialoguetime=200}] run scoreboard players enable @a[team=p] Answer_Q1
execute if entity @s[scores={dialoguetime=200}] run tellraw @a [{"text":"","color":"yellow"},{"text":"Question 1: What happened on June 4th 1989?\n","bold":"true"},{"text":"[A protest]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Click to select!","color":"green"}]},"clickEvent":{"action":"run_command","value":"/trigger Answer_Q1 set 1"}},{"text":"\n"},{"text":"[Something important]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Click to select!","color":"green"}]},"clickEvent":{"action":"run_command","value":"/trigger Answer_Q1 set 2"}},{"text":"\n"},{"text":"[I forgor ☠]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Click to select!","color":"green"}]},"clickEvent":{"action":"run_command","value":"/trigger Answer_Q1 set 3"}},{"text":"\n"},{"text":"[Nothing]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Click to select!","color":"green"}]},"clickEvent":{"action":"run_command","value":"/trigger Answer_Q1 set 4"}}]