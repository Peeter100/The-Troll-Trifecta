scoreboard players add @s dialoguetime 1
execute unless entity @a[tag=important,team=p] run tag @a[nbt={Inventory:[{id:"minecraft:stone_axe"}]}] add importantsans
execute if entity @s[scores={dialoguetime=1,cr_seensans=..1}] run tellraw @a [{"text":"<"},{"text":"Sans","color":"#C4E2FF"},{"text":"> "},{"text":"uh, yeah they're closed actually","color":"#C4E2FF","font":"sans"}]
execute if entity @s[scores={dialoguetime=1,cr_seensans=..1}] as @e[tag=sanshead] at @s run playsound custom.act2.sans.speech_long master @a ~ ~ ~ 1000
execute if entity @s[scores={dialoguetime=1,cr_seensans=2..}] run tellraw @a [{"text":"<"},{"text":"Sans","color":"#C4E2FF"},{"text":"> "},{"text":"welcome back","color":"#C4E2FF","font":"sans"}]
execute if entity @s[scores={dialoguetime=1,cr_seensans=2..}] as @e[tag=sanshead] at @s run playsound custom.act2.sans.speech_short master @a ~ ~ ~ 1000
execute if entity @s[scores={dialoguetime=10..,cr_seensans=2..}] run scoreboard players set @s dialoguetime 9
execute if entity @s[scores={dialoguetime=60}] run tellraw @a [{"text":"<"},{"text":"Sans","color":"#C4E2FF"},{"text":"> "},{"text":"can you put back the blocks you broke?","color":"#C4E2FF","font":"sans"}]
execute if entity @s[scores={dialoguetime=60}] as @e[tag=sanshead] at @s run playsound custom.act2.sans.speech_long master @a ~ ~ ~ 1000
execute if entity @s[scores={dialoguetime=120}] run tellraw @a [{"text":"<"},{"text":"Sans","color":"#C4E2FF"},{"text":"> "},{"text":"oh wait","color":"#C4E2FF","font":"sans"}]
execute if entity @s[scores={dialoguetime=120}] as @e[tag=sanshead] at @s run playsound custom.act2.sans.speech_short master @a ~ ~ ~ 1000
execute if entity @s[scores={dialoguetime=140}] run tellraw @a [{"text":"<"},{"text":"Sans","color":"#C4E2FF"},{"text":"> "},{"text":"you're in adventure mode heh heh heh","color":"#C4E2FF","font":"sans"}]
execute if entity @s[scores={dialoguetime=140}] as @e[tag=sanshead] at @s run playsound custom.act2.sans.speech_long master @a ~ ~ ~ 1000

execute if score @s cr_beeninbattle matches ..0 if entity @a[team=p,scores={x=-63,z=94..}] run function ttt:act2/dialogueseq2
execute if score @s cr_beeninbattle matches 1.. if entity @a[team=p,scores={x=..-51,z=87..}] run function ttt:act2/dialogueseq2