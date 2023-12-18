stopsound @a master custom.act2.undyne.speech
scoreboard players set @s[scores={cr_seensans=..1}] cr_seensans 2
tellraw @a [{"text":"<"},{"text":"Undyne","color":"#03739C"},{"text":"> "},{"text":"Now pick what you want!","color":"#03739C"}]
execute at @e[type=armor_stand,tag=undhead] run playsound custom.act2.undyne.speech master @a ~ ~ ~ 1000
scoreboard players set @s dialoguetime 401