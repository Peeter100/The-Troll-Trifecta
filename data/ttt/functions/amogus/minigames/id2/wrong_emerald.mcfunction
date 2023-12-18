scoreboard players set @s deathreason 47
tag @e[tag=sv] add silentdeath
execute as @e[tag=shadowbody] at @s anchored eyes positioned ^-0.4 ^-0.25 ^1 run particle smoke ~ 30.6 ~ .2 .2 .2 0.1 50 force @a
tellraw @a [{"text":"<","color":"white"},{"text":"Shadow","color":"#C42626"},{"text":"> "},{"text":"That is NOT what I'm looking for!","color":"#C42626"}]
playsound custom.act3.pistol_shoot master @a ~ ~ ~ 1000
playsound custom.t2s.shadow.emerald_wrong master @a ~ ~ ~ 1000
kill @e[type=item]
kill @s