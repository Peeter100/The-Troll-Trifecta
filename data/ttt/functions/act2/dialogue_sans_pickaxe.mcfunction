scoreboard players add @s dialoguetime 1
execute if entity @s[scores={dialoguetime=1}] run tellraw @a [{"text":"<"},{"text":"Sans","color":"#C4E2FF"},{"text":"> "},{"text":"wait, so you spent all of your gold on a PICKAXE?","color":"#C4E2FF","font":"sans"}]
execute if entity @s[scores={dialoguetime=1}] as @e[tag=sanshead] at @s run playsound custom.act2.sans.speech_long master @a ~ ~ ~ 1000

execute if entity @s[scores={dialoguetime=60}] run tellraw @a [{"text":"<"},{"text":"Sans","color":"#C4E2FF"},{"text":"> "},{"text":"in ADVENTURE MODE?","color":"#C4E2FF","font":"sans"}]
execute if entity @s[scores={dialoguetime=60}] as @e[tag=sanshead] at @s run playsound custom.act2.sans.speech_mid master @a ~ ~ ~ 1000

execute if entity @s[scores={dialoguetime=90}] run stopsound @a master custom.act2.sans.speech_very_long
execute if entity @s[scores={dialoguetime=90}] run tellraw @a [{"text":"<"},{"text":"Sans","color":"#C4E2FF"},{"text":"> "},{"text":"it's not like it says that the pickaxe can break anything","color":"#C4E2FF","font":"sans"}]
execute if entity @s[scores={dialoguetime=90}] as @e[tag=sanshead] at @s run playsound custom.act2.sans.speech_very_long master @a ~ ~ ~ 1000

execute if entity @s[scores={dialoguetime=161}] run stopsound @a master custom.act2.sans.speech_very_long
execute if entity @s[scores={dialoguetime=170}] run data merge entity @e[tag=sansbody,limit=1] {HandItems:[{id:"minecraft:bone",Count:1b,tag:{CustomModelData:12}},{}]}
execute if entity @s[scores={dialoguetime=170}] run data merge entity @e[tag=sanshead,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:bone",Count:1b,tag:{CustomModelData:22}}]}
#execute if entity @s[scores={dialoguetime=180}] run tellraw @a [{"text":"<"},{"text":"Sans","color":"#C4E2FF"},{"text":"> "},{"text":"y'know, i can think a lot smarter for someone who doesn't have a brain","color":"#C4E2FF","font":"sans"}]
#execute if entity @s[scores={dialoguetime=180}] run tellraw @a [{"text":"<"},{"text":"Sans","color":"#C4E2FF"},{"text":"> "},{"text":"y'know, that brain you supposedly have clearly doesn't make you smarter","color":"#C4E2FF","font":"sans"}]
execute if entity @s[scores={dialoguetime=170}] run tellraw @a [{"text":"<"},{"text":"Sans","color":"#C4E2FF"},{"text":"> "},{"text":"looks like having a brain doesn't make you any better at reading","color":"#C4E2FF","font":"sans"}]
execute if entity @s[scores={dialoguetime=170}] as @e[tag=sanshead] at @s run playsound custom.act2.sans.speech_very_long master @a ~ ~ ~ 1000

execute if entity @s[scores={dialoguetime=250}] run stopsound @a master custom.act2.sans.speech_very_long
execute if entity @s[scores={dialoguetime=250}] run data merge entity @e[tag=sansbody,limit=1] {HandItems:[{id:"minecraft:bone",Count:1b,tag:{CustomModelData:11}},{}]}
execute if entity @s[scores={dialoguetime=250}] run data merge entity @e[tag=sanshead,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:bone",Count:1b,tag:{CustomModelData:21}}]}
#execute if entity @s[scores={dialoguetime=265}] run tellraw @a [{"text":"<"},{"text":"Sans","color":"#C4E2FF"},{"text":"> "},{"text":"have fun figuring out which blocks this pickaxe can SUPPOSEDLY break","color":"#C4E2FF","font":"sans"}]