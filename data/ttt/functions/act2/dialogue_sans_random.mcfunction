scoreboard players add @s dialoguetime 1
execute if entity @s[scores={dialoguetime=1}] run data merge entity @e[tag=sansbody,limit=1] {HandItems:[{id:"minecraft:bone",Count:1b,tag:{CustomModelData:12}},{}]}
execute if entity @s[scores={dialoguetime=1}] run data merge entity @e[tag=sanshead,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:bone",Count:1b,tag:{CustomModelData:22}}]}
execute if entity @s[scores={dialoguetime=1}] run tellraw @a [{"text":"<"},{"text":"Sans","color":"#C4E2FF"},{"text":"> "},{"text":"y'know, i'm pretty sure you're thinking about this the wrong way","color":"#C4E2FF","font":"sans"}]
execute if entity @s[scores={dialoguetime=1}] run execute as @e[tag=sanshead] at @s run playsound custom.act2.sans.speech_very_long master @a ~ ~ ~ 1000

execute if entity @s[scores={dialoguetime=71}] run stopsound @a master custom.act2.sans.speech_very_long
execute if entity @s[scores={dialoguetime=71}] run data merge entity @e[tag=sansbody,limit=1] {HandItems:[{id:"minecraft:bone",Count:1b,tag:{CustomModelData:11}},{}]}
execute if entity @s[scores={dialoguetime=71}] run data merge entity @e[tag=sanshead,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:bone",Count:1b,tag:{CustomModelData:21}}]}
execute if entity @s[scores={dialoguetime=80}] run tellraw @a [{"text":"<"},{"text":"Sans","color":"#C4E2FF"},{"text":"> "},{"text":"instead of buying whatever, you should try to think what will actually help you PROGRESS in the map","color":"#C4E2FF","font":"sans"}]
execute if entity @s[scores={dialoguetime=80}] run execute as @e[tag=sanshead] at @s run playsound custom.act2.sans.speech_very_long master @a ~ ~ ~ 1000

execute if entity @s[scores={dialoguetime=191}] run stopsound @a master custom.act2.sans.speech_very_long
execute if entity @s[scores={dialoguetime=200}] run tellraw @a [{"text":"<"},{"text":"Sans","color":"#C4E2FF"},{"text":"> "},{"text":"analyze the things you can buy, and buy the thing that will help you get out of this cave","color":"#C4E2FF","font":"sans"}]
execute if entity @s[scores={dialoguetime=200}] run execute as @e[tag=sanshead] at @s run playsound custom.act2.sans.speech_very_long master @a ~ ~ ~ 1000

execute if entity @s[scores={dialoguetime=311}] run stopsound @a master custom.act2.sans.speech_very_long
execute if entity @s[scores={dialoguetime=320}] run data merge entity @e[tag=sansbody,limit=1] {HandItems:[{id:"minecraft:bone",Count:1b,tag:{CustomModelData:12}},{}]}
execute if entity @s[scores={dialoguetime=320}] run data merge entity @e[tag=sanshead,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:bone",Count:1b,tag:{CustomModelData:22}}]}
execute if entity @s[scores={dialoguetime=320}] run tellraw @a [{"text":"<"},{"text":"Sans","color":"#C4E2FF"},{"text":"> "},{"text":"unless you wanna keep talking to me","color":"#C4E2FF","font":"sans"}]
execute if entity @s[scores={dialoguetime=320}] run execute as @e[tag=sanshead] at @s run playsound custom.act2.sans.speech_very_long master @a ~ ~ ~ 1000

execute if entity @s[scores={dialoguetime=361}] run stopsound @a master custom.act2.sans.speech_very_long
execute if entity @s[scores={dialoguetime=361}] run data merge entity @e[tag=sansbody,limit=1] {HandItems:[{id:"minecraft:bone",Count:1b,tag:{CustomModelData:11}},{}]}
execute if entity @s[scores={dialoguetime=361}] run data merge entity @e[tag=sanshead,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:bone",Count:1b,tag:{CustomModelData:21}}]}

#execute if entity @a[nbt={Inventory:[{tag:{unditem:1b,obamasword:1b}}]},scores={x=-48..}] run scoreboard players set @s dialoguetime 0
#execute if entity @a[nbt={Inventory:[{tag:{unditem:1b,flamebow:1b}}]},scores={x=-48..}] run scoreboard players set @s dialoguetime 0
#execute if entity @a[nbt={Inventory:[{tag:{unditem:1b,pickaxe:1b}}]},scores={x=-48..}] run scoreboard players set @s dialoguetime 0
#execute if entity @a[nbt={Inventory:[{tag:{unditem:1b,obamasword:1b}}]},scores={x=-48..}] run scoreboard players set @s dialogueseq 4
#execute if entity @a[nbt={Inventory:[{tag:{unditem:1b,flamebow:1b}}]},scores={x=-48..}] run scoreboard players set @s dialogueseq 5
#execute if entity @a[nbt={Inventory:[{tag:{unditem:1b,pickaxe:1b}}]},scores={x=-48..}] run scoreboard players set @s dialogueseq 6