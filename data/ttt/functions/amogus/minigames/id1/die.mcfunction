stopsound @a master
tellraw @a [{"text":"<","color":"dark_gray"},{"text":"TROLLGE","color":"#942626","font":"trollge"},{"text":"> "},{"text":"YOU'RE IN MY WORLD NOW","color":"#942626","font":"trollge"}]
scoreboard players set @a[tag=amplayer] deathreason 48
playsound custom.act3.backroom.die master @a ~ ~ ~ 1000
playsound custom.act3.backroom.my_world master @a ~ ~ ~ 1000
tag @e[tag=sv] add silentdeath
particle large_smoke ~ ~1 ~ 0 0 0 1 1000 force @a
particle explosion_emitter ~ ~1 ~ 0 0 0 0 1 force @a
effect give @a[team=p] blindness 10 0 true
kill @r[tag=amplayer]