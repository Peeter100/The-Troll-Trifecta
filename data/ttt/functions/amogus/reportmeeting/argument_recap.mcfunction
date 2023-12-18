scoreboard players set @s acttimer 3020
scoreboard players set @s dialoguetime 60

execute at @p[tag=amplayer] run playsound custom.amogus.text master @a ~ ~ ~ 1000

execute if entity @a[tag=amplayer,tag=reportee] as @e[type=armor_stand,tag=reported,limit=1] run function ttt:amogus/reportmeeting/startmessage_player
execute unless entity @a[tag=amplayer,tag=reportee] as @e[type=villager,tag=reportee,limit=1,sort=random] run function ttt:amogus/reportmeeting/startmessage_crewmate