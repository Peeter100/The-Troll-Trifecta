execute at @e[type=armor_stand,tag=shadowhead] run playsound custom.t2s.shadow.aldi master @a ~ ~ ~ 1000
tellraw @a [{"text":"<","color":"white"},{"text":"Shadow","color":"#C42626"},{"text":"> "},{"text":"I wonder if ALDI has that DAMN Chaos Emerald...","color":"#C42626"}]
scoreboard players set @s am_gamescore6 1