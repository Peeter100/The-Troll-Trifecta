tag @e[type=marker,tag=sv] add silentdeath
scoreboard players add @e[type=marker,tag=sv] fnf_carpetdeaths 1
execute at @e[type=armor_stand,tag=sniper] run playsound custom.act1.sniper.shot_land master @a ~ ~ ~ 1000
tellraw @a [{"text":"<","color":"white"},{"text":"Sniper","color":"red"},{"text":"> "},{"text":"And THAT, is how it's done.","color":"red"}]
scoreboard players set @a[team=p,distance=0..1] deathreason 43
#effect give @r[team=p,distance=0..1] instant_damage 1 100 true
kill @r[team=p,distance=0..1]