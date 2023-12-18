scoreboard players add @s am_gamescore6 1
function ttt:amogus/minigames/id4/stopsound_playtime

execute if entity @s[scores={am_gamescore6=1}] run execute as @r[tag=amplayer] at @s run playsound custom.act3.bald.playtime_jumprope_stage1 master @a ~ ~ ~ 0.9
execute if entity @s[scores={am_gamescore6=1}] run tellraw @a [{"text":"<","color":"white"},{"text":"Playtime","color":"red"},{"text":"> "},{"text":"ONE!","color":"red"}]

execute if entity @s[scores={am_gamescore6=2}] run execute as @r[tag=amplayer] at @s run playsound custom.act3.bald.playtime_jumprope_stage2 master @a ~ ~ ~ 0.9
execute if entity @s[scores={am_gamescore6=2}] run tellraw @a [{"text":"<","color":"white"},{"text":"Playtime","color":"red"},{"text":"> "},{"text":"TWO!","color":"red"}]

execute if entity @s[scores={am_gamescore6=3}] run execute as @r[tag=amplayer] at @s run playsound custom.act3.bald.playtime_jumprope_stage3 master @a ~ ~ ~ 0.9
execute if entity @s[scores={am_gamescore6=3}] run tellraw @a [{"text":"<","color":"white"},{"text":"Playtime","color":"red"},{"text":"> "},{"text":"THREE!","color":"red"}]

execute if entity @s[scores={am_gamescore6=4}] run execute as @r[tag=amplayer] at @s run playsound custom.act3.bald.playtime_jumprope_stage4 master @a ~ ~ ~ 0.9
execute if entity @s[scores={am_gamescore6=4}] run tellraw @a [{"text":"<","color":"white"},{"text":"Playtime","color":"red"},{"text":"> "},{"text":"FOUR!","color":"red"}]

execute if entity @s[scores={am_gamescore6=5}] run execute as @r[tag=amplayer] at @s run playsound custom.act3.bald.playtime_jumprope_stage5 master @a ~ ~ ~ 0.9
execute if entity @s[scores={am_gamescore6=5}] run tellraw @a [{"text":"<","color":"white"},{"text":"Playtime","color":"red"},{"text":"> "},{"text":"FIVE!","color":"red"}]

execute if entity @s[scores={am_gamescore6=6}] run execute as @r[tag=amplayer] at @s run playsound custom.act3.bald.playtime_jumprope_stage6 master @a ~ ~ ~ 0.9
execute if entity @s[scores={am_gamescore6=6}] run tellraw @a [{"text":"<","color":"white"},{"text":"Playtime","color":"red"},{"text":"> "},{"text":"SIX!","color":"red"}]

execute if entity @s[scores={am_gamescore6=7}] run execute as @r[tag=amplayer] at @s run playsound custom.act3.bald.playtime_jumprope_stage7 master @a ~ ~ ~ 0.9
execute if entity @s[scores={am_gamescore6=7}] run tellraw @a [{"text":"<","color":"white"},{"text":"Playtime","color":"red"},{"text":"> "},{"text":"SEVEN!","color":"red"}]

execute if entity @s[scores={am_gamescore6=8}] run execute as @r[tag=amplayer] at @s run playsound custom.act3.bald.playtime_jumprope_stage8 master @a ~ ~ ~ 0.9
execute if entity @s[scores={am_gamescore6=8}] run tellraw @a [{"text":"<","color":"white"},{"text":"Playtime","color":"red"},{"text":"> "},{"text":"EIGHT!","color":"red"}]

execute if entity @s[scores={am_gamescore6=9}] run execute as @r[tag=amplayer] at @s run playsound custom.act3.bald.playtime_jumprope_stage9 master @a ~ ~ ~ 0.9
execute if entity @s[scores={am_gamescore6=9}] run tellraw @a [{"text":"<","color":"white"},{"text":"Playtime","color":"red"},{"text":"> "},{"text":"NINE!","color":"red"}]

execute if entity @s[scores={am_gamescore6=10}] run execute as @r[tag=amplayer] at @s run playsound custom.act3.bald.playtime_jumprope_end master @a ~ ~ ~ 0.9
execute if entity @s[scores={am_gamescore6=10}] run tellraw @a [{"text":"<","color":"white"},{"text":"Playtime","color":"red"},{"text":"> "},{"text":"TEN!","color":"red"}]
execute if entity @s[scores={am_gamescore6=10}] run effect give @a[tag=amplayer] jump_boost 99999 200 true
execute if entity @s[scores={am_gamescore6=10}] run kill @e[tag=jumprope]
###execute if entity @s[scores={am_gamescore6=10}] run fill 36 22 143 33 22 143 air
execute if entity @s[scores={am_gamescore6=10}] run scoreboard players set @s am_gametimer 500