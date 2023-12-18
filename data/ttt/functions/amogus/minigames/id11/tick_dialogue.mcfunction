scoreboard players add @s[scores={am_gametimer=..1098}] am_gametimer 1

execute if entity @s[scores={am_gametimer=11,am_seensans=1..}] run scoreboard players set @s am_gametimer 190
execute if entity @s[scores={am_gametimer=11}] run tellraw @a [{"text":"<"},{"text":"Papyrus","color":"red"},{"text":"> "},{"text":"HELLO HUMAN!","color":"red","font":"papyrus"}]
execute if entity @s[scores={am_gametimer=11}] as @r[tag=amplayer] at @s run playsound custom.act2.papyrus.speech master @a ~ ~ ~ 1000

execute if entity @s[scores={am_gametimer=40}] run stopsound @a master custom.act2.papyrus.speech

execute if entity @s[scores={am_gametimer=60}] run tellraw @a [{"text":"<"},{"text":"Papyrus","color":"red"},{"text":"> "},{"text":"EHRM...","color":"red","font":"papyrus"}]
execute if entity @s[scores={am_gametimer=60}] as @r[tag=amplayer] at @s run playsound custom.act2.papyrus.speech master @a ~ ~ ~ 1000

execute if entity @s[scores={am_gametimer=70}] run stopsound @a master custom.act2.papyrus.speech

execute if entity @s[scores={am_gametimer=80}] run tellraw @a [{"text":"<"},{"text":"Papyrus","color":"red"},{"text":"> "},{"text":"ARE YOU SURE THIS IS A HUMAN?","color":"red","font":"papyrus"}]
execute if entity @s[scores={am_gametimer=80}] as @r[tag=amplayer] at @s run playsound custom.act2.papyrus.speech master @a ~ ~ ~ 1000

execute if entity @s[scores={am_gametimer=140}] run tellraw @a [{"text":"<"},{"text":"Sans","color":"#C4E2FF"},{"text":"> "},{"text":"positive","color":"#C4E2FF","font":"sans"}]
execute if entity @s[scores={am_gametimer=140}] as @r[tag=amplayer] at @s run playsound custom.act2.sans.speech_short master @a ~ ~ ~ 1000

execute if entity @s[scores={am_gametimer=170}] run tellraw @a [{"text":"<"},{"text":"Papyrus","color":"red"},{"text":"> "},{"text":"ANYWAYS","color":"red","font":"papyrus"}]
execute if entity @s[scores={am_gametimer=170}] as @r[tag=amplayer] at @s run playsound custom.act2.papyrus.speech master @a ~ ~ ~ 1000

execute if entity @s[scores={am_gametimer=180}] run stopsound @a master custom.act2.papyrus.speech

execute if entity @s[scores={am_gametimer=190}] run tellraw @a [{"text":"<"},{"text":"Papyrus","color":"red"},{"text":"> "},{"text":"THIS PUZZLE WAS MADE BY THE GREAT DR. ALPHYS!","color":"red","font":"papyrus"}]
execute if entity @s[scores={am_gametimer=190}] as @r[tag=amplayer] at @s run playsound custom.act2.papyrus.speech master @a ~ ~ ~ 1000

execute if entity @s[scores={am_gametimer=260}] run tellraw @a [{"text":"<"},{"text":"Papyrus","color":"red"},{"text":"> "},{"text":"EACH COLORED TILE HAS A DIFFERENT FUNCTION!","color":"red","font":"papyrus"}]
execute if entity @s[scores={am_gametimer=260}] as @r[tag=amplayer] at @s run playsound custom.act2.papyrus.speech master @a ~ ~ ~ 1000

execute if entity @s[scores={am_gametimer=320}] run tellraw @a [{"text":"<"},{"text":"Papyrus","color":"red"},{"text":"> "},{"text":"RED TILES","color":"#FF0000","font":"papyrus"},{"text":" ARE IMPASSABLE!","color":"red","font":"papyrus"}]
execute if entity @s[scores={am_gametimer=320}] run function ttt:amogus/minigames/id11/papyrus_cycle_start

execute if entity @s[scores={am_gametimer=350}] run tellraw @a [{"text":"<"},{"text":"Papyrus","color":"red"},{"text":"> "},{"text":"YOU CANNOT WALK ON THEM!","color":"red","font":"papyrus"}]
execute if entity @s[scores={am_gametimer=380}] run tellraw @a [{"text":"<"},{"text":"Papyrus","color":"red"},{"text":"> "},{"text":"YELLOW TILES","color":"yellow","font":"papyrus"},{"text":" ARE ELECTRIC!","color":"red","font":"papyrus"}]
execute if entity @s[scores={am_gametimer=410}] run tellraw @a [{"text":"<"},{"text":"Papyrus","color":"red"},{"text":"> "},{"text":"THEY WILL ELECTROCUTE YOU!","color":"red","font":"papyrus"}]
execute if entity @s[scores={am_gametimer=440}] run tellraw @a [{"text":"<"},{"text":"Papyrus","color":"red"},{"text":"> "},{"text":"GREEN TILES","color":"green","font":"papyrus"},{"text":" ARE ALARM TILES!","color":"red","font":"papyrus"}]
execute if entity @s[scores={am_gametimer=470}] run tellraw @a [{"text":"<"},{"text":"Papyrus","color":"red"},{"text":"> "},{"text":"IF YOU STEP ON THEM...","color":"red","font":"papyrus"}]
execute if entity @s[scores={am_gametimer=500}] run tellraw @a [{"text":"<"},{"text":"Papyrus","color":"red"},{"text":"> "},{"text":"YOU WILL HAVE TO FIGHT A MONSTER!!","color":"red","font":"papyrus"}]
execute if entity @s[scores={am_gametimer=530}] run tellraw @a [{"text":"<"},{"text":"Papyrus","color":"red"},{"text":"> "},{"text":"ORANGE TILES","color":"gold","font":"papyrus"},{"text":" ARE ORANGE-SCENTED.","color":"red","font":"papyrus"}]
execute if entity @s[scores={am_gametimer=560}] run tellraw @a [{"text":"<"},{"text":"Papyrus","color":"red"},{"text":"> "},{"text":"THEY WILL MAKE YOU SMELL DELICIOUS!","color":"red","font":"papyrus"}]
execute if entity @s[scores={am_gametimer=590}] run tellraw @a [{"text":"<"},{"text":"Papyrus","color":"red"},{"text":"> "},{"text":"BLUE TILES","color":"blue","font":"papyrus"},{"text":" ARE WATER TILES.","color":"red","font":"papyrus"}]
execute if entity @s[scores={am_gametimer=620}] run tellraw @a [{"text":"<"},{"text":"Papyrus","color":"red"},{"text":"> "},{"text":"SWIM THROUGH IF YOU LIKE, BUT...","color":"red","font":"papyrus"}]
execute if entity @s[scores={am_gametimer=650}] run tellraw @a [{"text":"<"},{"text":"Papyrus","color":"red"},{"text":"> "},{"text":"IF YOU SMELL LIKE ORANGES!","color":"red","font":"papyrus"}]
execute if entity @s[scores={am_gametimer=680}] run tellraw @a [{"text":"<"},{"text":"Papyrus","color":"red"},{"text":"> "},{"text":"THE PIRANHAS WILL BITE YOU.","color":"red","font":"papyrus"}]
execute if entity @s[scores={am_gametimer=710}] run tellraw @a [{"text":"<"},{"text":"Papyrus","color":"red"},{"text":"> "},{"text":"ALSO, IF A BLUE TILE IS NEXT TO A,","color":"red","font":"papyrus"}]
execute if entity @s[scores={am_gametimer=740}] run tellraw @a [{"text":"<"},{"text":"Papyrus","color":"red"},{"text":"> "},{"text":"YELLOW TILE, THE WATER WILL ALSO ZAP YOU!","color":"red","font":"papyrus"}]
execute if entity @s[scores={am_gametimer=770}] run tellraw @a [{"text":"<"},{"text":"Papyrus","color":"red"},{"text":"> "},{"text":"PURPLE TILES","color":"#5500B5","font":"papyrus"},{"text":" ARE SLIPPERY!","color":"red","font":"papyrus"}]
execute if entity @s[scores={am_gametimer=800}] run tellraw @a [{"text":"<"},{"text":"Papyrus","color":"red"},{"text":"> "},{"text":"YOU WILL SLIDE TO THE NEXT TILE!","color":"red","font":"papyrus"}]
execute if entity @s[scores={am_gametimer=830}] run tellraw @a [{"text":"<"},{"text":"Papyrus","color":"red"},{"text":"> "},{"text":"HOWEVER, THE SLIPPERY SOAP...","color":"red","font":"papyrus"}]
execute if entity @s[scores={am_gametimer=860}] run tellraw @a [{"text":"<"},{"text":"Papyrus","color":"red"},{"text":"> "},{"text":"SMELLS LIKE LEMONS!!","color":"red","font":"papyrus"}]
execute if entity @s[scores={am_gametimer=890}] run tellraw @a [{"text":"<"},{"text":"Papyrus","color":"red"},{"text":"> "},{"text":"WHICH PIRANHAS DO NOT LIKE!","color":"red","font":"papyrus"}]
execute if entity @s[scores={am_gametimer=920}] run tellraw @a [{"text":"<"},{"text":"Papyrus","color":"red"},{"text":"> "},{"text":"PURPLE AND BLUE ARE OK!","color":"red","font":"papyrus"}]
execute if entity @s[scores={am_gametimer=950}] run tellraw @a [{"text":"<"},{"text":"Papyrus","color":"red"},{"text":"> "},{"text":"FINALLY, ","color":"red","font":"papyrus"},{"text":"PINK TILES","color":"light_purple","font":"papyrus"},{"text":".","color":"red","font":"papyrus"}]
execute if entity @s[scores={am_gametimer=980}] run tellraw @a [{"text":"<"},{"text":"Papyrus","color":"red"},{"text":"> "},{"text":"THEY DON'T DO ANYTHING.","color":"red","font":"papyrus"}]
execute if entity @s[scores={am_gametimer=1010}] run tellraw @a [{"text":"<"},{"text":"Papyrus","color":"red"},{"text":"> "},{"text":"STEP ON THEM ALL YOU LIKE.","color":"red","font":"papyrus"}]
execute if entity @s[scores={am_gametimer=1040}] run tellraw @a [{"text":"<"},{"text":"Papyrus","color":"red"},{"text":"> "},{"text":"HOW WAS THAT!? UNDERSTAND???","color":"red","font":"papyrus"}]

execute if entity @s[scores={am_gametimer=1070,am_seensans=0}] run scoreboard players set @s am_seensans 1
execute if entity @s[scores={am_gametimer=1070}] run tellraw @a [{"text":""},{"text":"Current Task:\n","color":"yellow","bold":true},{"text":"Solve the puzzle!","color":"light_purple"},{"text":"\nJumping & Sprinting: ","color":"yellow","italic":true},{"text":"Disabled","color":"red","italic":true}]
execute if entity @s[scores={am_gametimer=1070}] as @r[tag=amplayer] at @s run playsound entity.player.levelup master @a ~ ~ ~ 1000


execute as @p[tag=amplayer] store result score @s y run data get entity @s Pos[1] 10
execute unless score @s am_gamescore2 = @p[tag=amplayer] x as @p[tag=amplayer] at @s unless entity @s[nbt={OnGround:0b,SelectedItem:{tag:{hoverwand:1b}}},scores={y=223..}] run function ttt:amogus/minigames/id11/block_change
execute unless score @s am_gamescore3 = @p[tag=amplayer] z as @p[tag=amplayer] at @s unless entity @s[nbt={OnGround:0b,SelectedItem:{tag:{hoverwand:1b}}},scores={y=223..}] run function ttt:amogus/minigames/id11/block_change
scoreboard players operation @s am_gamescore2 = @p[tag=amplayer] x
scoreboard players operation @s am_gamescore3 = @p[tag=amplayer] z