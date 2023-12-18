execute if entity @e[tag=sv,scores={am_seentrollge=0}] run tag @e[tag=sv] add silentdeath
execute if entity @e[tag=sv,scores={am_seentrollge=0}] run stopsound @a master
execute if entity @e[tag=sv,scores={am_seentrollge=0}] run tellraw @a [{"text":"<","color":"dark_gray"},{"text":"TROLLGE","color":"#942626","font":"trollge"},{"text":"> "},{"text":"COVER YOURSELF, NOT DRINK","color":"#942626","font":"trollge"}]
execute if entity @e[tag=sv,scores={am_seentrollge=0}] run playsound custom.t2s.trollge.drink master @a ~ ~ ~ 1000

scoreboard players set @s deathreason 45
scoreboard players set @s drinkpotion 0
kill @s