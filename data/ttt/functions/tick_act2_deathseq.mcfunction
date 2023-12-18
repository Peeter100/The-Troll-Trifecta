execute if score @s deathtime matches 1000 run playsound custom.t2s.trollge.act2_start master @a ~ ~ ~ 1000
execute if score @s deathtime matches 1000 run stopsound @a master custom.act2.shaq
execute if score @s deathtime matches 1000 run tellraw @a [{"text":"<","color":"dark_gray"},{"text":"TROLLGE","color":"#942626","font":"trollge"},{"text":"> "},{"text":"YOU'RE SPENDING TOO MUCH TIME DOING UNEVENTFUL THINGS","color":"#942626","font":"trollge"}]
execute if score @s deathtime matches 1091 run tellraw @a [{"text":"<","color":"dark_gray"},{"text":"TROLLGE","color":"#942626","font":"trollge"},{"text":"> "},{"text":"YOU WERE SUPPOSED TO TROLL THE PLAYER","color":"#942626","font":"trollge"}]
execute if score @s deathtime matches 1148 run tellraw @a [{"text":"<","color":"dark_gray"},{"text":"TROLLGE","color":"#942626","font":"trollge"},{"text":"> "},{"text":"NOT RUN SOME USELESS COMPETITIONS","color":"#942626","font":"trollge"}]
execute if score @s deathtime matches 1209 run tellraw @a [{"text":"<","color":"dark_gray"},{"text":"TROLLGE","color":"#942626","font":"trollge"},{"text":"> "},{"text":"STOP CHATTING WITH THE CHARACTERS","color":"#942626","font":"trollge"}]
execute if score @s deathtime matches 1252 run tellraw @a [{"text":"<","color":"dark_gray"},{"text":"TROLLGE","color":"#942626","font":"trollge"},{"text":"> "},{"text":"AND DO WHAT YOU'RE SUPPOSED TO","color":"#942626","font":"trollge"}]
execute if score @s deathtime matches 1296 run tellraw @a [{"text":"<","color":"dark_gray"},{"text":"TROLLGE","color":"#942626","font":"trollge"},{"text":"> "},{"text":"OR ALL OF YOU ARE GOING TO PAY","color":"#942626","font":"trollge"}]
execute if score @s deathtime matches 1352 run tellraw @a [{"text":"<","color":"dark_gray"},{"text":"TROLLGE","color":"#942626","font":"trollge"},{"text":"> "},{"text":"MAKE THE MAP HARDER","color":"#942626","font":"trollge"}]
execute if score @s deathtime matches 1382 run tellraw @a [{"text":"<","color":"dark_gray"},{"text":"TROLLGE","color":"#942626","font":"trollge"},{"text":"> "},{"text":"LESS CONVENTIONAL","color":"#942626","font":"trollge"}]
execute if score @s deathtime matches 1417 run tellraw @a [{"text":"<","color":"dark_gray"},{"text":"TROLLGE","color":"#942626","font":"trollge"},{"text":"> "},{"text":"MORE ANNOYING","color":"#942626","font":"trollge"}]
execute if score @s deathtime matches 1443 run tellraw @a [{"text":"<","color":"dark_gray"},{"text":"TROLLGE","color":"#942626","font":"trollge"},{"text":"> "},{"text":"CHANGE IT NOW!","color":"#942626","font":"trollge"}]
execute if score @s deathtime matches 1443 run function ttt:map_reset

execute if score @s deathtime matches 1480 run scoreboard players set @s deathtime 84