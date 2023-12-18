execute if entity @s[scores={am_gamescore2=1..300}] run function ttt:amogus/minigames/id6/service_countdown

execute if entity @s[scores={am_gamescore2=1..300}] at @e[tag=bf,limit=1] positioned ~ ~0.25 ~ if entity @e[type=item,distance=0..1] run function ttt:amogus/minigames/id6/service_fail
execute if entity @s[scores={am_gamescore2=0}] run function ttt:amogus/minigames/id6/service_fail


execute if entity @s[scores={am_gamescore2=-999..-100}] unless entity @a[tag=amplayer,scores={x=17..25,z=142..150}] run scoreboard players set @s am_gamescore2 -1000
execute if entity @s[scores={am_gamescore2=-217..-100}] if entity @e[tag=doorinteract,tag=!locked] run scoreboard players set @s am_gamescore2 -220
execute if entity @s[scores={am_gamescore2=-104}] run playsound custom.act3.bald.ruler_slap master @a 34 27 137 1000
execute if entity @s[scores={am_gamescore2=-108}] run playsound custom.act3.bald.ruler_slap master @a 34 27 137 1000
execute if entity @s[scores={am_gamescore2=-112}] run tellraw @a [{"text":"<","color":"white"},{"text":"Baldi","color":"green"},{"text":"> "},{"text":"Where is he?","color":"green"}]
execute if entity @s[scores={am_gamescore2=-112}] run playsound custom.t2s.baldi.cafeteria_where master @a 34 27 137 1000

execute if entity @s[scores={am_gamescore2=-138}] run execute as @e[tag=bf,limit=1] at @s run playsound custom.fnf.speech.bf master @a ~ ~ ~ 1000
execute if entity @s[scores={am_gamescore2=-138}] run tellraw @a [{"text":"<","color":"white"},{"text":"Boyfriend","color":"aqua"},{"text":"> "},{"text":"Beep skee da.","color":"aqua"}]

execute if entity @s[scores={am_gamescore2=-160}] run playsound custom.t2s.baldi.cafeteria_cant_find master @a 34 27 137 1000
execute if entity @s[scores={am_gamescore2=-172}] run tellraw @a [{"text":"<","color":"white"},{"text":"Baldi","color":"green"},{"text":"> "},{"text":"I don't know what that means!","color":"green"}]
execute if entity @s[scores={am_gamescore2=-218}] run function ttt:amogus/minigames/id6/task_complete

execute if entity @s[scores={am_gamescore2=-220}] run function ttt:amogus/minigames/id6/faculty_find