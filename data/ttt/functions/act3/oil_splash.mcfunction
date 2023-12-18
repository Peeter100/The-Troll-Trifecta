execute as @e[type=marker,tag=sv,limit=1] if score @s am_seentrollge matches 0 unless score @s dialoguetime matches 630..876 run stopsound @a master
execute as @e[type=marker,tag=sv,limit=1] if score @s am_seentrollge matches 0 unless score @s dialoguetime matches 630..876 run tellraw @a [{"text":"<","color":"dark_gray"},{"text":"TROLLGE","color":"#942626","font":"trollge"},{"text":"> "},{"text":"STEP 4 - FLY","color":"#942626","font":"trollge"}]
execute if score @e[type=marker,tag=sv,limit=1] am_seentrollge matches 0 unless score @e[type=marker,tag=sv,limit=1] dialoguetime matches 630..876 run playsound custom.t2s.trollge.step4 master @s ~ ~ ~ 1000

execute if entity @e[type=marker,tag=sv,scores={am_seentrollge=1..,am_rickinteract=1}] run schedule function ttt:act3/amogus_start_early 20t replace

tag @s add oiled
effect clear @s water_breathing