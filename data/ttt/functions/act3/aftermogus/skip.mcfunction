scoreboard players set @s actpart 5
scoreboard players set @s acttimer 0
scoreboard players set @s dialogueseq 0
scoreboard players set @s dialoguetime 0
scoreboard players set @s deathtime 3327
clear @a
stopsound @a master
function ttt:map_reset
function ttt:finale/intro/intervention/summon_ents
tp @a 0 35 9

schedule function ttt:act3/aftermogus/skip_fixup 10t replace