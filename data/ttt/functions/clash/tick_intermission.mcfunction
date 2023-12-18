title @a actionbar [{"text":"Score: ","color":"green"},{"score":{"name":"@s","objective":"cr_score"},"color":"green"}]

execute store result score @s cr_gobalive if entity @e[tag=clashmob,tag=goblinmob]
execute unless score @s cr_gobalive = @s cr_gobspawned run function ttt:clash/kill_goblin

execute store result score @s cr_baralive if entity @e[tag=clashmob,tag=barbarianmob]
execute unless score @s cr_baralive = @s cr_barspawned run function ttt:clash/kill_barbarian

execute store result score @s cr_witalive if entity @e[tag=clashmob,tag=witchmob]
execute unless score @s cr_witalive = @s cr_witspawned run function ttt:clash/kill_witch

execute store result score @s cr_hogalive if entity @e[tag=clashmob,tag=hogridermob]
execute unless score @s cr_hogalive = @s cr_hogspawned run function ttt:clash/kill_hog

#scoreboard players remove @s[scores={dialoguetime=51..}] dialoguetime 1
#execute if entity @s[scores={dialoguetime=..0}] run give @a[team=p] gold_ingot{display:{Name:'{"text":"Snowball Ammo","color":"aqua","italic":false}'},CustomModelData:2} 1
execute if entity @s[scores={dialoguetime=..0}] run scoreboard players set @s dialoguetime 200

execute as @e[tag=clashmob] at @s if block ~ ~ ~ water run kill @s
execute as @a[team=p,scores={rc=1..},nbt=!{Inventory:[{id:"minecraft:gold_ingot"}]}] at @s run tellraw @s {"text":"No ammo!","color":"red"}
execute as @a[team=p,scores={rc=1..},nbt={Inventory:[{id:"minecraft:gold_ingot"}]}] at @s run function ttt:clash/snow_cannon

execute as @e[tag=clashmob,nbt=!{CustomNameVisible:1b},nbt=!{ActiveEffects:[{Id:14}]}] at @s run data merge entity @s {CustomNameVisible:1b}
execute as @a[team=p,scores={y=19..},nbt={OnGround:1b}] at @s run function ttt:clash/fire



execute if entity @s[scores={acttimer=608}] as @r[tag=clashplayer] at @s run playsound custom.act2.royale master @a ~ ~ ~ 1000

execute if entity @s[scores={acttimer=680,cr_beeninbattle=2..}] run scoreboard players set @s acttimer 920
execute if entity @s[scores={acttimer=690}] run tellraw @a [{"text":"<"},{"text":"Sans","color":"#C4E2FF"},{"text":"> "},{"text":"wait","color":"#C4E2FF","font":"sans"}]
execute if entity @s[scores={acttimer=690}] as @r[tag=clashplayer] at @s run playsound custom.act2.sans.speech_short master @a ~ ~ ~ 1000

execute if entity @s[scores={acttimer=710}] run tellraw @a [{"text":"<"},{"text":"Sans","color":"#C4E2FF"},{"text":"> "},{"text":"you're already done?","color":"#C4E2FF","font":"sans"}]
execute if entity @s[scores={acttimer=710}] as @r[tag=clashplayer] at @s run playsound custom.act2.sans.speech_mid master @a ~ ~ ~ 1000

execute if entity @s[scores={acttimer=740}] run tellraw @a [{"text":"<"},{"text":"Sans","color":"#C4E2FF"},{"text":"> "},{"text":"and i was just about to enter a match","color":"#C4E2FF","font":"sans"}]
execute if entity @s[scores={acttimer=740}] as @r[tag=clashplayer] at @s run playsound custom.act2.sans.speech_long master @a ~ ~ ~ 1000

execute if entity @s[scores={acttimer=800}] run tellraw @a [{"text":"<"},{"text":"Sans","color":"#C4E2FF"},{"text":"> "},{"text":"actually","color":"#C4E2FF","font":"sans"}]
execute if entity @s[scores={acttimer=800}] as @r[tag=clashplayer] at @s run playsound custom.act2.sans.speech_short master @a ~ ~ ~ 1000

execute if entity @s[scores={acttimer=820}] run tellraw @a [{"text":"<"},{"text":"Sans","color":"#C4E2FF"},{"text":"> "},{"text":"let me try something","color":"#C4E2FF","font":"sans"}]
execute if entity @s[scores={acttimer=820}] as @r[tag=clashplayer] at @s run playsound custom.act2.sans.speech_mid master @a ~ ~ ~ 1000

execute if entity @s[scores={acttimer=850}] run function ttt:clash/spawn_goblin
execute if entity @s[scores={acttimer=850}] as @e[tag=clashmob] at @s run playsound entity.zombie.ambient hostile @a ~ ~ ~ 1000
execute if entity @s[scores={acttimer=857..859,cr_gobspawned=1..}] run scoreboard players set @s acttimer 855

execute if entity @s[scores={acttimer=860}] run tellraw @a [{"text":"<"},{"text":"Sans","color":"#C4E2FF"},{"text":"> "},{"text":"huh","color":"#C4E2FF","font":"sans"}]
execute if entity @s[scores={acttimer=860}] as @r[tag=clashplayer] at @s run playsound custom.act2.sans.speech_short master @a ~ ~ ~ 1000

execute if entity @s[scores={acttimer=880}] run tellraw @a [{"text":"<"},{"text":"Sans","color":"#C4E2FF"},{"text":"> "},{"text":"that's pretty cool","color":"#C4E2FF","font":"sans"}]
execute if entity @s[scores={acttimer=880}] as @r[tag=clashplayer] at @s run playsound custom.act2.sans.speech_mid master @a ~ ~ ~ 1000

execute if entity @s[scores={acttimer=920,cr_beeninbattle=..1}] run scoreboard players set @s cr_beeninbattle 2
execute if entity @s[scores={acttimer=920,cr_beeninbattle=..2}] run tellraw @a [{"text":"<"},{"text":"Sans","color":"#C4E2FF"},{"text":"> "},{"text":"have some more kid","color":"#C4E2FF","font":"sans"}]
execute if entity @s[scores={acttimer=920,cr_beeninbattle=..2}] as @r[tag=clashplayer] at @s run playsound custom.act2.sans.speech_mid master @a ~ ~ ~ 1000