scoreboard players add @s dialoguetime 1
execute if entity @s[scores={dialoguetime=1,cr_beeninbattle=1..2}] run scoreboard players set @s dialoguetime 440
execute if entity @s[scores={dialoguetime=1,cr_beeninbattle=3..}] run scoreboard players set @s dialoguetime 630
execute if entity @s[scores={dialoguetime=1}] run tellraw @a [{"text":"<"},{"text":"Sans","color":"#C4E2FF"},{"text":"> "},{"text":"buying a flame bow is not a bad idea, kid","color":"#C4E2FF","font":"sans"}]
execute if entity @s[scores={dialoguetime=1}] as @e[tag=sanshead] at @s run playsound custom.act2.sans.speech_long master @a ~ ~ ~ 1000

execute if entity @s[scores={dialoguetime=60}] run data merge entity @e[tag=sansbody,limit=1] {HandItems:[{id:"minecraft:bone",Count:1b,tag:{CustomModelData:12}},{}]}
execute if entity @s[scores={dialoguetime=60}] run data merge entity @e[tag=sanshead,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:bone",Count:1b,tag:{CustomModelData:22}}]}
execute if entity @s[scores={dialoguetime=60}] run tellraw @a [{"text":"<"},{"text":"Sans","color":"#C4E2FF"},{"text":"> "},{"text":"but how are you gonna find an arrow to use it?","color":"#C4E2FF","font":"sans"}]
execute if entity @s[scores={dialoguetime=60}] as @e[tag=sanshead] at @s run playsound custom.act2.sans.speech_long master @a ~ ~ ~ 1000

execute if entity @s[scores={dialoguetime=110}] run stopsound @a master custom.act2.sans.speech_very_long
execute if entity @s[scores={dialoguetime=110}] run data merge entity @e[tag=sansbody,limit=1] {HandItems:[{id:"minecraft:bone",Count:1b,tag:{CustomModelData:11}},{}]}
execute if entity @s[scores={dialoguetime=110}] run data merge entity @e[tag=sanshead,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:bone",Count:1b,tag:{CustomModelData:21}}]}

execute if entity @s[scores={dialoguetime=120}] run tellraw @a [{"text":"<"},{"text":"Sans","color":"#C4E2FF"},{"text":"> "},{"text":"y'know, the bow has INFINITY, so you only need one","color":"#C4E2FF","font":"sans"}]
execute if entity @s[scores={dialoguetime=120}] as @e[tag=sanshead] at @s run playsound custom.act2.sans.speech_very_long master @a ~ ~ ~ 1000

execute if entity @s[scores={dialoguetime=180}] run stopsound @a master custom.act2.sans.speech_very_long
execute if entity @s[scores={dialoguetime=240}] run tellraw @a [{"text":"<"},{"text":"Sans","color":"#C4E2FF"},{"text":"> "},{"text":"alright kid, let me help you out","color":"#C4E2FF","font":"sans"}]
execute if entity @s[scores={dialoguetime=240}] as @e[tag=sanshead] at @s run playsound custom.act2.sans.speech_long master @a ~ ~ ~ 1000

execute if entity @s[scores={dialoguetime=300}] run tellraw @a [{"text":"<"},{"text":"Sans","color":"#C4E2FF"},{"text":"> "},{"text":"i'm sure there are plenty of resources to craft an arrow in this cave","color":"#C4E2FF","font":"sans"}]
execute if entity @s[scores={dialoguetime=300}] as @e[tag=sanshead] at @s run playsound custom.act2.sans.speech_very_long master @a ~ ~ ~ 1000

execute if entity @s[scores={dialoguetime=385}] run stopsound @a master custom.act2.sans.speech_very_long
execute if entity @s[scores={dialoguetime=390}] run data merge entity @e[tag=sansbody,limit=1] {HandItems:[{id:"minecraft:bone",Count:1b,tag:{CustomModelData:12}},{}]}
execute if entity @s[scores={dialoguetime=390}] run data merge entity @e[tag=sanshead,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:bone",Count:1b,tag:{CustomModelData:22}}]}
execute if entity @s[scores={dialoguetime=390}] run tellraw @a [{"text":"<"},{"text":"Sans","color":"#C4E2FF"},{"text":"> "},{"text":"but crafting is probably disabled","color":"#C4E2FF","font":"sans"}]
execute if entity @s[scores={dialoguetime=390}] as @e[tag=sanshead] at @s run playsound custom.act2.sans.speech_very_long master @a ~ ~ ~ 1000

execute if entity @s[scores={dialoguetime=430}] run stopsound @a master custom.act2.sans.speech_very_long
execute if entity @s[scores={dialoguetime=430}] run data merge entity @e[tag=sansbody,limit=1] {HandItems:[{id:"minecraft:bone",Count:1b,tag:{CustomModelData:11}},{}]}
execute if entity @s[scores={dialoguetime=430}] run data merge entity @e[tag=sanshead,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:bone",Count:1b,tag:{CustomModelData:21}}]}

execute if entity @s[scores={dialoguetime=440}] run tellraw @a [{"text":"<"},{"text":"Sans","color":"#C4E2FF"},{"text":"> "},{"text":"if you complete my challenge, i'll let you borrow an arrow so you can get out of here","color":"#C4E2FF","font":"sans"}]
execute if entity @s[scores={dialoguetime=440}] as @e[tag=sanshead] at @s run playsound custom.act2.sans.speech_very_long master @a ~ ~ ~ 1000

execute if entity @s[scores={dialoguetime=540}] run stopsound @a master custom.act2.sans.speech_very_long
execute if entity @s[scores={dialoguetime=550}] run tellraw @a [{"text":"<"},{"text":"Sans","color":"#C4E2FF"},{"text":"> "},{"text":"you seem low on health, so i'll get ","color":"#C4E2FF","font":"sans"},{"text":"Papyrus","color":"red"},{"text":" to help you","color":"#C4E2FF","font":"sans"}]
execute if entity @s[scores={dialoguetime=550}] as @e[tag=sanshead] at @s run playsound custom.act2.sans.speech_very_long master @a ~ ~ ~ 1000

execute if entity @s[scores={dialoguetime=620}] run stopsound @a master custom.act2.sans.speech_very_long
execute if entity @s[scores={dialoguetime=630}] run scoreboard players enable @a[team=p] Game_Choice
execute if entity @s[scores={dialoguetime=630,cr_beeninbattle=..1}] run tellraw @a [{"text":"<"},{"text":"Sans","color":"#C4E2FF"},{"text":"> "},{"text":"so what'd'ya say, kid? ","color":"#C4E2FF","font":"sans"},{"color":"green","text":"[Accept]","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Click to accept Sans' offer!","color":"green","italic":false}]},"clickEvent":{"action":"run_command","value":"/trigger Game_Choice set 1"}}]
execute if entity @s[scores={dialoguetime=630,cr_beeninbattle=2..}] run tellraw @a [{"text":"<"},{"text":"Sans","color":"#C4E2FF"},{"text":"> "},{"text":"ready? ","color":"#C4E2FF","font":"sans"},{"color":"green","text":"[Start]","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Click to accept Sans' offer!","color":"green","italic":false}]},"clickEvent":{"action":"run_command","value":"/trigger Game_Choice set 1"}}]
execute if entity @s[scores={dialoguetime=630}] as @e[tag=sanshead] at @s run playsound custom.act2.sans.speech_short master @a ~ ~ ~ 1000

execute if entity @s[scores={acttimer=0..27}] if entity @a[team=p,scores={Game_Choice=1..}] run function ttt:act2/begin_clash