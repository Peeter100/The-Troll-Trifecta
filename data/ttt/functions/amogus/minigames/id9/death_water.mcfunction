playsound custom.t2s.mrbeast.death master @a ~ ~ ~ 1000
playsound entity.player.hurt_freeze master @a ~ ~ ~ 1000
playsound entity.player.hurt_freeze master @a ~ ~ ~ 1000
playsound custom.act2.thud master @a ~ ~ ~ 1000
tag @e[tag=sv] add silentdeath
stopsound @a master custom.t2s.mrbeast.intro
tellraw @a [{"text":"<","color":"white"},{"text":"MrBeast","color":"#006AC7"},{"text":"> "},{"text":"It looks like our contestant has perished!","color":"#006AC7"}]
scoreboard players set @s deathreason 16
kill @s