scoreboard players add @s[scores={am_gametimer=..2999}] am_gametimer 1

execute if entity @s[scores={am_gametimer=2001}] run tellraw @a [{"text":"<"},{"text":"Sans","color":"#C4E2FF"},{"text":"> "},{"text":"you seem to be struggling kid","color":"#C4E2FF","font":"sans"}]
execute if entity @s[scores={am_gametimer=2001}] as @r[tag=amplayer] at @s run playsound custom.act2.sans.speech_mid master @a ~ ~ ~ 1000

execute if entity @s[scores={am_gametimer=2050}] run tellraw @a [{"text":"<"},{"text":"Sans","color":"#C4E2FF"},{"text":"> "},{"text":"you know you can use that wand of yours to fly over the dangerous blocks?","color":"#C4E2FF","font":"sans"}]
execute if entity @s[scores={am_gametimer=2050}] as @r[tag=amplayer] at @s run playsound custom.act2.sans.speech_very_long master @a ~ ~ ~ 1000

execute if entity @s[scores={am_gametimer=2125}] run stopsound @a master custom.act2.sans.speech_very_long

execute if entity @s[scores={am_gametimer=2150}] run tellraw @a [{"text":"<"},{"text":"Sans","color":"#C4E2FF"},{"text":"> "},{"text":"you just need to leave the ground","color":"#C4E2FF","font":"sans"}]
execute if entity @s[scores={am_gametimer=2150}] as @r[tag=amplayer] at @s run playsound custom.act2.sans.speech_mid master @a ~ ~ ~ 1000

execute if entity @s[scores={am_gametimer=2200}] run tellraw @a [{"text":"<"},{"text":"Sans","color":"#C4E2FF"},{"text":"> "},{"text":"without jumping of course","color":"#C4E2FF","font":"sans"}]
execute if entity @s[scores={am_gametimer=2200}] as @r[tag=amplayer] at @s run playsound custom.act2.sans.speech_mid master @a ~ ~ ~ 1000

execute if entity @s[scores={am_gametimer=2240}] run tellraw @a [{"text":"<"},{"text":"Sans","color":"#C4E2FF"},{"text":"> "},{"text":"are there any other ways to go upwards?","color":"#C4E2FF","font":"sans"}]
execute if entity @s[scores={am_gametimer=2240}] as @r[tag=amplayer] at @s run playsound custom.act2.sans.speech_long master @a ~ ~ ~ 1000

execute as @p[tag=amplayer] store result score @s y run data get entity @s Pos[1] 10
execute unless score @s am_gamescore2 = @p[tag=amplayer] x as @p[tag=amplayer] at @s unless entity @s[nbt={OnGround:0b,SelectedItem:{tag:{hoverwand:1b}}},scores={y=223..}] run function ttt:amogus/minigames/id11/block_change
execute unless score @s am_gamescore3 = @p[tag=amplayer] z as @p[tag=amplayer] at @s unless entity @s[nbt={OnGround:0b,SelectedItem:{tag:{hoverwand:1b}}},scores={y=223..}] run function ttt:amogus/minigames/id11/block_change
scoreboard players operation @s am_gamescore2 = @p[tag=amplayer] x
scoreboard players operation @s am_gamescore3 = @p[tag=amplayer] z