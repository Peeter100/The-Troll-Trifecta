execute at @p[tag=amplayer] run playsound custom.amogus.text master @a ~ ~ ~ 1000

execute if entity @a[tag=amplayer,scores={Game_Choice=1}] run scoreboard players set @s dialoguetime 100
execute if entity @a[tag=amplayer,scores={Game_Choice=1}] run tellraw @a [{"text":"<","color":"white"},{"text":"Red (You)","color":"red"},{"text":"> ","color":"white"},{"text":"Where?","color":"red"}]
execute if entity @a[tag=amplayer,scores={Game_Choice=1}] run schedule function ttt:amogus/stopsound_text 10t replace

execute unless entity @a[tag=amplayer,scores={Game_Choice=1}] run scoreboard players set @s dialoguetime 320
execute unless entity @a[tag=amplayer,scores={Game_Choice=1}] run tellraw @a [{"text":"<","color":"white"},{"text":"Red (You)","color":"red"},{"text":"> ","color":"white"},{"text":"I've made a severe and continuous lapse in my judgement.","color":"red"}]

scoreboard players reset @a Game_Choice