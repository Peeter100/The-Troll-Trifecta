execute if entity @s[scores={acttimer=21}] run function ttt:act2/afterclash/faketnt_explode

execute if entity @s[scores={acttimer=31}] run kill @e[tag=forkill,tag=!sans]

execute if entity @s[scores={acttimer=61}] run function ttt:act2/afterclash/faketnt_explode_settle

execute if entity @s[scores={acttimer=110}] run data merge entity @e[tag=sansbody,limit=1] {HandItems:[{id:"minecraft:bone",Count:1b,tag:{CustomModelData:11}},{}]}
execute if entity @s[scores={acttimer=110}] run data merge entity @e[tag=sanshead,limit=1] {HandItems:[{id:"minecraft:bone",Count:1b,tag:{CustomModelData:21}},{}]}
execute if entity @s[scores={acttimer=109}] run stopsound @a master custom.act2.sans.speech_very_long

execute if entity @s[scores={acttimer=120}] run tellraw @a [{"text":"<"},{"text":"Sans","color":"#C4E2FF"},{"text":"> "},{"text":"i do feel kinda bad though","color":"#C4E2FF","font":"sans"}]
execute if entity @s[scores={acttimer=120}] as @e[tag=sanshead] at @s run playsound custom.act2.sans.speech_mid master @a ~ ~ ~ 1000
execute if entity @s[scores={acttimer=120}] run scoreboard players set @s cr_beeninbattle 5

execute if entity @s[scores={acttimer=150}] run tellraw @a [{"text":"<"},{"text":"Sans","color":"#C4E2FF"},{"text":"> "},{"text":"here's a gift","color":"#C4E2FF","font":"sans"}]
execute if entity @s[scores={acttimer=150}] as @e[tag=sanshead] at @s run playsound custom.act2.sans.speech_mid master @a ~ ~ ~ 1000
execute if entity @s[scores={acttimer=150}] run give @r[team=p] splash_potion{display:{Name:'{"text":"Anti-Gravity Splash","color":"white","italic":false}',Lore:['[{"text":"Disables gravity for ","color":"gray","italic":false},{"text":"3s","color":"yellow"},{"text":"."}]','{"text":"Useful for skipping one or two","color":"gray","italic":false}','{"text":"jumps in the river parkour.","color":"gray","italic":false}','{"text":"TIP: Don\'t take fall damage!","color":"red","italic":false}']},HideFlags:34,CustomPotionEffects:[{Id:13,Amplifier:0b,Duration:100,ShowParticles:0b}],CustomPotionColor:16777215} 1

execute if entity @s[scores={acttimer=180}] run tellraw @a [{"text":"<"},{"text":"Sans","color":"#C4E2FF"},{"text":"> "},{"text":"i know you'll need it","color":"#C4E2FF","font":"sans"}]
execute if entity @s[scores={acttimer=180}] as @e[tag=sanshead] at @s run playsound custom.act2.sans.speech_mid master @a ~ ~ ~ 1000
execute if entity @s[scores={acttimer=180}] run scoreboard players set @s acttimer 0


execute if entity @s[scores={acttimer=520}] run function ttt:act2/afterclash/tense_speak

execute if entity @s[scores={acttimer=531}] run tellraw @a [{"text":"<"},{"text":"Tense1983","color":"#00A870"},{"text":"> "},{"text":"GREEN!","color":"#00A870"}]
execute if entity @s[scores={acttimer=538}] run tellraw @a [{"text":"<"},{"text":"Tense1983","color":"#00A870"},{"text":"> "},{"text":"Wha-","color":"#00A870"}]
execute if entity @s[scores={acttimer=542}] run tellraw @a [{"text":"<"},{"text":"Tense1983","color":"#00A870"},{"text":"> "},{"text":"What is your problem, green?","color":"#00A870"}]
execute if entity @s[scores={acttimer=568}] run tellraw @a [{"text":"<"},{"text":"Tense1983","color":"#00A870"},{"text":"> "},{"text":"What is your problem?!","color":"#00A870"}]
execute if entity @s[scores={acttimer=588}] run tellraw @a [{"text":"<"},{"text":"Tense1983","color":"#00A870"},{"text":"> "},{"text":"Me say alone ramp!","color":"#00A870"}]
execute if entity @s[scores={acttimer=613}] run tellraw @a [{"text":"<"},{"text":"Tense1983","color":"#00A870"},{"text":"> "},{"text":"ME SAY ALONE RAMP!","color":"#00A870"}]

execute if entity @s[scores={acttimer=658}] run function ttt:act2/afterclash/tense_smash
execute if entity @s[scores={acttimer=658}] run fill -8 29 144 -6 29 149 air destroy
execute if entity @s[scores={acttimer=658}] run setblock -6 29 143 air destroy
execute if entity @s[scores={acttimer=658}] run fill -9 29 145 -10 29 149 air destroy
execute if entity @s[scores={acttimer=658}] run fill -11 29 146 -11 29 148 air destroy
execute if entity @s[scores={acttimer=658}] run fill -5 29 146 -5 29 148 air destroy

execute if entity @s[scores={acttimer=671}] run function ttt:act2/afterclash/tense_smash
execute if entity @s[scores={acttimer=671}] run fill 3 29 143 -1 29 147 air destroy
execute if entity @s[scores={acttimer=671}] run fill 4 29 144 4 29 148 air destroy
execute if entity @s[scores={acttimer=671}] run fill 5 29 145 5 29 147 air destroy
execute if entity @s[scores={acttimer=671}] run fill -2 29 146 -3 29 144 air destroy
execute if entity @s[scores={acttimer=671}] run setblock -4 29 144 air destroy
execute if entity @s[scores={acttimer=671}] run fill -4 29 146 -4 29 148 air destroy

execute if entity @s[scores={acttimer=683}] run function ttt:act2/afterclash/tense_smash
execute if entity @s[scores={acttimer=683}] run fill 2 29 148 -3 29 152 air destroy
execute if entity @s[scores={acttimer=683}] run fill 3 29 150 4 29 150 air destroy
execute if entity @s[scores={acttimer=683}] run fill 3 29 152 3 29 154 air destroy
execute if entity @s[scores={acttimer=683}] run fill -2 29 153 -2 29 154 air destroy

execute if entity @s[scores={acttimer=697}] run function ttt:act2/afterclash/tense_smash
execute if entity @s[scores={acttimer=697}] run fill -9 29 150 -5 29 153 air destroy
execute if entity @s[scores={acttimer=697}] run setblock -4 29 151 air destroy
execute if entity @s[scores={acttimer=697}] run setblock -9 29 154 air destroy

execute if entity @s[scores={acttimer=698}] run scoreboard players set @s acttimer 0

execute if entity @s[scores={acttimer=840}] run tellraw @a [{"text":"<"},{"text":"Sans","color":"#C4E2FF"},{"text":"> "},{"text":"come over here if you ACTUALLY want to face my challenge again","color":"#C4E2FF","font":"sans"}]
execute if entity @s[scores={acttimer=840}] as @e[tag=sanshead] at @s run playsound custom.act2.sans.speech_very_long master @a ~ ~ ~ 1000

execute if entity @s[scores={acttimer=910}] run stopsound @a master custom.act2.sans.speech_very_long

execute if entity @s[scores={acttimer=920}] run tellraw @a [{"text":"<"},{"text":"Sans","color":"#C4E2FF"},{"text":"> "},{"text":"sort of like a quest that's already been completed","color":"#C4E2FF","font":"sans"}]
execute if entity @s[scores={acttimer=920}] as @e[tag=sanshead] at @s run playsound custom.act2.sans.speech_long master @a ~ ~ ~ 1000
execute if entity @s[scores={acttimer=920}] run scoreboard players set @s acttimer 0