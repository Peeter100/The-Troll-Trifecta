scoreboard players add @s dialoguetime 1
execute if entity @s[scores={dialoguetime=1}] run tellraw @a [{"text":"<"},{"text":"Sans","color":"#C4E2FF"},{"text":"> "},{"text":"that's a nice sword you got there, kid","color":"#C4E2FF","font":"sans"}]
execute if entity @s[scores={dialoguetime=1}] run execute as @e[tag=sanshead] at @s run playsound custom.act2.sans.speech_long master @a ~ ~ ~ 1000

execute if entity @s[scores={dialoguetime=60}] run tellraw @a [{"text":"<"},{"text":"Sans","color":"#C4E2FF"},{"text":"> "},{"text":"what's it for?","color":"#C4E2FF","font":"sans"}]
execute if entity @s[scores={dialoguetime=60}] run execute as @e[tag=sanshead] at @s run playsound custom.act2.sans.speech_mid master @a ~ ~ ~ 1000

execute if entity @s[scores={dialoguetime=80}] run tellraw @a [{"text":"<"},{"text":"Sans","color":"#C4E2FF"},{"text":"> "},{"text":"hitting things?","color":"#C4E2FF","font":"sans"}]
execute if entity @s[scores={dialoguetime=80}] run execute as @e[tag=sanshead] at @s run playsound custom.act2.sans.speech_mid master @a ~ ~ ~ 1000

execute if entity @s[scores={dialoguetime=110}] run tellraw @a [{"text":"<"},{"text":"Sans","color":"#C4E2FF"},{"text":"> "},{"text":"maybe it's just me, but-","color":"#C4E2FF","font":"sans"}]
execute if entity @s[scores={dialoguetime=110}] run execute as @e[tag=sanshead] at @s run playsound custom.act2.sans.speech_long master @a ~ ~ ~ 1000

execute if entity @s[scores={dialoguetime=152}] run stopsound @a master custom.act2.sans.speech_long
execute if entity @s[scores={dialoguetime=160}] run data merge entity @e[tag=sansbody,limit=1] {HandItems:[{id:"minecraft:bone",Count:1b,tag:{CustomModelData:12}},{}]}
execute if entity @s[scores={dialoguetime=160}] run data merge entity @e[tag=sanshead,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:bone",Count:1b,tag:{CustomModelData:22}}]}
execute if entity @s[scores={dialoguetime=160}] run tellraw @a [{"text":"<"},{"text":"Sans","color":"#C4E2FF"},{"text":"> "},{"text":"i don't see any enemies you need to use that sword on","color":"#C4E2FF","font":"sans"}]
execute if entity @s[scores={dialoguetime=160}] run execute as @e[tag=sanshead] at @s run playsound custom.act2.sans.speech_very_long master @a ~ ~ ~ 1000

execute if entity @s[scores={dialoguetime=230}] run stopsound @a master custom.act2.sans.speech_very_long
execute if entity @s[scores={dialoguetime=230}] run data merge entity @e[tag=sansbody,limit=1] {HandItems:[{id:"minecraft:bone",Count:1b,tag:{CustomModelData:11}},{}]}
execute if entity @s[scores={dialoguetime=230}] run data merge entity @e[tag=sanshead,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:bone",Count:1b,tag:{CustomModelData:21}}]}
execute if entity @s[scores={dialoguetime=240}] run tellraw @a [{"text":"<"},{"text":"Sans","color":"#C4E2FF"},{"text":"> "},{"text":"but who knows, maybe you're on to something","color":"#C4E2FF","font":"sans"}]
execute if entity @s[scores={dialoguetime=240}] run execute as @e[tag=sanshead] at @s run playsound custom.act2.sans.speech_long master @a ~ ~ ~ 1000