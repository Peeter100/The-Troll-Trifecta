scoreboard players add @s dialoguetime 1

execute if entity @s[scores={dialoguetime=20}] run tellraw @a [{"text":"<"},{"text":"Sans","color":"#C4E2FF"},{"text":"> "},{"text":"y'know, i'm getting kinda tired of watching you do this part","color":"#C4E2FF","font":"sans"}]
execute if entity @s[scores={dialoguetime=20}] as @r[team=p] at @s run playsound custom.act2.sans.speech_very_long master @a ~ ~ ~ 1000

execute if entity @s[scores={dialoguetime=80}] run stopsound @a master custom.act2.sans.speech_very_long

execute if entity @s[scores={dialoguetime=90}] run scoreboard players enable @a[team=p] Game_Choice
execute if entity @s[scores={dialoguetime=90,cr_seensans=..2}] run tellraw @a [{"text":"<"},{"text":"Sans","color":"#C4E2FF"},{"text":"> "},{"text":"wanna skip it? ","color":"#C4E2FF","font":"sans"},{"color":"green","text":"[Skip]","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Click to accept Sans' offer!","color":"green","italic":false}]},"clickEvent":{"action":"run_command","value":"/trigger Game_Choice set 1"}}]
execute if entity @s[scores={dialoguetime=90,cr_seensans=3..}] run tellraw @a [{"text":"<"},{"text":"Sans","color":"#C4E2FF"},{"text":"> "},{"text":"wanna skip this part? ","color":"#C4E2FF","font":"sans"},{"color":"green","text":"[Skip]","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Click to accept Sans' offer!","color":"green","italic":false}]},"clickEvent":{"action":"run_command","value":"/trigger Game_Choice set 1"}}]
execute if entity @s[scores={dialoguetime=90}] as @r[team=p] at @s run playsound custom.act2.sans.speech_mid master @a ~ ~ ~ 1000

execute if entity @s[scores={acttimer=0..27}] if entity @a[scores={Game_Choice=1..}] run function ttt:act2/sans_skip

#execute as @a[team=p,scores={hp=20},tag=1hpchallenge] at @s run effect give @s resistance 1 2 true
#execute as @a[team=p,scores={hp=20},tag=1hpchallenge] at @s run effect give @s instant_damage 1 3 true

execute if entity @a[team=p,scores={z=75..}] run scoreboard players reset @a Game_Choice
#execute if entity @a[team=p,scores={z=87..}] run scoreboard players set @s dialoguetime 0
#execute if entity @a[team=p,scores={z=87..}] run scoreboard players set @s dialogueseq 1